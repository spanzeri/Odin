import os
import re
import urllib.request as req
from dataclasses import dataclass
from enum import Enum
from typing import Optional

file_base_url = "https://raw.githubusercontent.com/KhronosGroup/OpenXR-SDK/refs/heads/main/include/openxr/"

source_files = [
    "openxr.h",
    "openxr_loader_negotiation.h",
    "openxr_platform.h",
    "openxr_platform_defines.h",
    "openxr_reflection.h",
    "openxr_reflection_parent_structs.h",
    "openxr_reflection_structs.h",
]

all_enumerants = {}

script_dir = os.path.dirname(os.path.abspath(__file__))
bindings_dir = os.path.abspath(os.path.join(script_dir, "../"))

for file in source_files:
    filepath = os.path.join(script_dir, file)
    if not os.path.isfile(filepath):
        with open(filepath, "w", encoding="utf-8") as f:
            f.write(req.urlopen(file_base_url + file).read().decode("utf-8"))


def die(msg: str) -> None:
    print("Error: " + msg)
    exit(1)

defines_to_skip = [
    "XR_TRUE",
    "XR_FALSE",
    "XR_NULL_HANDLE",
    "XR_MAKE_VERSION",
    "XR_VERSION_MAJOR",
    "XR_VERSION_MINOR",
    "XR_VERSION_PATCH",
    "XR_CURRENT_API_VERSION",
    "XR_SUCCEEDED",
    "XR_FAILED",
    "XR_SUCCEEDED_RESULT",
]

extension_prefixes = [
    "KHR",
    "EXT",
    "EXTX",
    "VARJO",
    "MSFT",
    "FB",
    "MND",
    "OCULUS",
    "EPIC",
    "HUAWEI",
    "HTC",
    "VALVE",
    "ML",
    "ULTRALEAP",
    "ALMALENCE",
    "META",
    "QCOM",
    "MNDX",
    "OPPO",
    "ANDROID",
    "YVR",
    "LOGITECH"
]

@dataclass
class Define:
    name: str
    value: str

@dataclass
class Argument_Or_Member:
    type: str
    base_type_unmodied: str
    name: str

    def get_alignment(self) -> int:
        return len(make_identifier(self.name)) + 2

    def write(self, f: file, alignment: int = None) -> None:
        ident = make_identifier(self.name) + ": "
        if alignment is None:
            f.write(f"{ident}{self.type},\n")
        else:
            f.write(f"{ident: <{alignment}}{self.type},\n")

additional_name_filter = None

def no_xr(s: str) -> str:
    if additional_name_filter is not None:
        s = additional_name_filter(s)

    s = s.replace("PFN_xr", "Proc")
    s = re.sub("^(?:Xr|XR_)(\\w+)", "\\1", s)

    return s

def no_xr_type(s: str) -> str:
    if additional_name_filter is not None:
        s = additional_name_filter(s)

    if is_processing_graphics_api:
        s = s.replace("PFN_xr", "xr.Proc")
        s = re.sub("^(?:Xr)(\\w+)", "xr.\\1", s)
    else:
        s = s.replace("PFN_xr", "Proc")
        s = re.sub("^(?:Xr|XR_)(\\w+)", "\\1", s)

def parse_current_version(src: str) -> (int, int, int):
    lines = src.splitlines()
    major = 0
    minor = 0
    patch = 0
    for line in lines:
        # Split a line of the for: #define XR_CURRENT_API_VERSION XR_MAKE_VERSION(1, 0, 0)
        # and parse the version numbers
        if line.startswith("#define XR_CURRENT_API_VERSION"):
            versions_part = line.split("XR_MAKE_VERSION(")[1].split(")")[0]
            major, minor, patch = map(int, versions_part.split(","))
            return major, minor, patch
    die("Could not find XR_CURRENT_API_VERSION in source")

def convert_number(s: str) -> str:
    is_u64 = False
    is_i64 = False
    is_u32 = False
    if s.lower().endswith("ull"):
        is_u64 = True
        s = s[:-3]
    elif s.lower().endswith("ll"):
        is_i64 = True
        s = s[:-2]
    elif s.lower().endswith("u"):
        is_u32 = True
        s = s[:-1]

    result = ""
    if is_u64:   result = "u64("
    elif is_i64: result = "i64("
    elif is_u32: result = "u32("

    if s.lower().startswith("0x"):
        # For ease of reading, split hex numbers into groups of 4 digits with '_' separators
        groups = []
        hex_part = s[2:]
        while hex_part:
            groups.insert(0, hex_part[-4:])
            hex_part = hex_part[:-4].upper()
        result += '0x' + '_'.join(groups)
    else:
        result += s
    if is_u64 or is_i64 or is_u32:
        result += ")"
    return result

def filter_defines(defines: Define) -> [Define]:
    res = []
    define_map = {}
    for define in defines:
        define_map[define.name] = define.value

    for name, value in define_map.items():
        if define_map.get(name.upper() + "_EXTENSION_NAME", None) is not None:
            continue
        assert(define_map.get(name + "_SPEC_VERSION", None) is None)
        res.append(Define(name, value))
    return res

def parse_defines(src: str) -> [Define]:
    defines = []
    lines = src.splitlines()
    for line in lines:
        line = line.strip()
        string_def = re.match(r"#define\s+(XR_\w+)\s+\"(.*)\"\s?$", line)
        if string_def is not None:
            defines.append(Define(string_def.group(1), f"\"{string_def.group(2)}\""))
            continue

        number_def = re.match(r"#define\s+(XR_\w+)\s+(\-?\d+)\s?$", line)
        if number_def is not None:
            value = convert_number(number_def.group(2))
            defines.append(Define(number_def.group(1), value))
            continue

        atom_def = re.match(r"XR_DEFINE_ATOM\s*\(\s*(\w+)\s*\)", line)
        if atom_def is not None:
            defines.append(Define(atom_def.group(1), "u64"))
            continue

        handle_def = re.match(r"XR_DEFINE_HANDLE\s*\(\s*(\w+)\s*\)", line)
        if handle_def is not None:
            struct_name = no_xr(handle_def.group(1)) + "_T"
            defines.append(Define(struct_name, "struct {}"))
            defines.append(Define(handle_def.group(1), "^" + struct_name))
            continue

        opaque_64_def = re.match(r"XR_DEFINE_OPAQUE_64\s*\(\s*(\w+)\s*\)", line)
        if opaque_64_def is not None:
            defines.append(Define(opaque_64_def.group(1), "distinct u64"))
            continue

        typedef_def = re.match(r"typedef\s+(\w+)\s+(Xr\w+);", line)
        if typedef_def is not None:
            type_name = typedef_def.group(1)
            xr_name = typedef_def.group(2)
            if type_name != "XrFlags64":
                converted_type = convert_type(type_name, xr_name)
                defines.append(Define(xr_name, converted_type))
            continue

    defines = filter_defines(defines)
    return defines

def make_identifier(s: str) -> str:
    keywords = {"map", "dynamic", "context"}
    if s in keywords:
        return s + "_"
    return s


def token_match_list(tokens: [str], pattern: [str]) -> bool:
    if len(tokens) < len(pattern):
        return False
    for i in range(len(pattern)):
        if pattern[i] != '*' and tokens[i] != pattern[i]:
            return False
    return True

def parse_argument_or_member(arg_str: str) -> Argument_Or_Member:
    parts = re.match(r"^(.*)\s+(\w+)(\[(\w+)\])?;*$", arg_str.strip())
    assert(parts is not None)
    arg_type_str = parts.group(1)
    arg_name     = parts.group(2)
    array_size   = parts.group(4)

    arg_str = ""
    arg_name_unmodified = ""
    tokens = re.findall(r'\bconst\b|[a-zA-Z_][a-zA-Z0-9_]*|\*', arg_type_str)
    assert(tokens is not None)
    assert(len(tokens) >= 1)
    while len(tokens) > 0:
        if token_match_list(tokens, ["void", "*"]):
            tokens = tokens[2:]
            arg_str = arg_str + "rawptr"
            arg_name_unmodified = "rawptr"
            continue
        if token_match_list(tokens, ["const", "char", "*"]) or \
           token_match_list(tokens, ["char", "const", "*"]):
            tokens = tokens[3:]
            arg_str = arg_str + "cstring"
            arg_name_unmodified = "cstring"
            continue
        if token_match_list(tokens, ["const", "wchar_t", "*"]) or \
           token_match_list(tokens, ["wchar_t", "const", "*"]):
            tokens = tokens[3:]
            arg_str = arg_str + "cstring16"
            arg_name_unmodified = "cstring16"
            continue

        token = tokens.pop(0)
        if token == "const" or token == "XR_MAY_ALIAS" or token == "struct":
            continue
        elif token == '*':
            if len(tokens) == 0 and arg_name.endswith("s") and array_size is None:
                arg_str = "[^]" + arg_str
            else:
                arg_str = "^" + arg_str
        else:
            mapped = type_mappings.get(token, None)
            if mapped is not None:
                arg_str = arg_str + mapped
                arg_name_unmodified = mapped
            else:
                arg_str = arg_str + no_xr(token)
                arg_name_unmodified = token

    if array_size is not None:
        if array_size.startswith("XR_") and array_size in all_enumerants:
            enum_name = all_enumerants[array_size]
            array_size = no_xr(enum_name) + "." + strip_enumerant_name(enum_name, array_size)
        arg_str = f"[{no_xr(array_size)}]{arg_str}"

    return Argument_Or_Member(arg_str, arg_name_unmodified, arg_name)

@dataclass
class Procedure_Type:
    return_type: str
    name: str
    params: [Argument_Or_Member]

    def write_as_pointer(self, f: file, alignment: int = None) -> None:
        ident = make_identifier(self.name) + ": "
        if alignment is None:
            f.write(f"{ident}Proc{self.name}\n")
        else:
            f.write(f"{ident: <{alignment}}Proc{self.name}\n")

    def write_as_type(self, f: file, alignment: int = None) -> None:
        ident = "Proc" + self.name + " :: "
        if alignment is None:
            f.write(f"{ident}#type proc \"system\" (")
        else:
            f.write(f"{ident: <{alignment}}#type proc \"system\" (")
        for i, param in enumerate(self.params):
            if i > 0:
                f.write(", ")
            f.write(make_identifier(param.name))
            if i != len(self.params) - 1 and param.type == self.params[i + 1].type:
                continue
            f.write(f": {no_xr(param.type)}")
        f.write(")")
        if self.return_type is not None:
            f.write(f" -> {no_xr(self.return_type)}")
        f.write("\n")

type_mappings = {
    "int":       "c.int",
    "uint8_t":   "u8",
    "uint16_t":  "u16",
    "uint32_t":  "u32",
    "uint64_t":  "u64",
    "int8_t":    "i8",
    "int16_t":   "i16",
    "int32_t":   "i32",
    "int64_t":   "i64",
    "size_t":    "usize",
    "ptrdiff_t": "isize",
    "char":      "u8",
    "wchar_t":   "u16", # NOTE: This is only fine because wchar_t is only used for windows
    "float":     "f32",
    "double":    "f64",
    "XrBool32":  "b32",
}


def convert_type(c_type: str, arg_name: str = None) -> str:
    c_type = c_type.strip()
    if c_type.startswith("void"):
        num_indirections = c_type.count('*')
        if num_indirections == 0:
            return None
        elif num_indirections == 1:
            return "rawptr"
        else:
            die("Unhandled void pointer type: " + c_type)
    tokens = re.findall(r'\bconst\b|[a-zA-Z_][a-zA-Z0-9_]*|\*', c_type)
    res = ""
    i = 0
    while i < len(tokens):
        if len(tokens[i:]) > 2:
            triple = tokens[i:i+3]
            if set(triple[:2]) == {"const", "char"} and triple[2] == "*":
                res += "cstring"
                i += 3
                continue
        mapped = type_mappings.get(tokens[i], None)
        if mapped is not None:
            res += mapped
        elif tokens[i] == "const" or tokens[i] == "XR_MAY_ALIAS":
            i += 1
            continue
        elif tokens[i] == '*':
            if arg_name and arg_name.endswith("s") and i == len(tokens) - 1:
                res = "[^]" + res
            else:
                res = "^" + res
        else:
            res += tokens[i]
        i += 1
    return res

def create_procedure(return_type: str, name: str, params_str: str) -> Procedure_Type:
    name = name[len("PFN_xr"):]
    ret_type = convert_type(return_type)

    args = []
    arg_parts = params_str.split(',')
    for arg in arg_parts:
        arg = arg.strip()
        if arg == "":
            continue
        if arg == "void":
            assert(len(arg_parts) == 1)
            break
        arg = parse_argument_or_member(arg)
        args.append(arg)
    return Procedure_Type(ret_type, name, args)


def parse_procedures_type(src: str) -> [Procedure_Type]:
    procedures = []
    lines = src.splitlines()
    i = 0
    while i < len(lines):
        line = lines[i]
        matches = re.match(r"^typedef\s+(\w+)\s*\(XRAPI_PTR\s*\*\s*(\w+)\)", line)
        if matches is None:
            i += 1
            continue

        proc_name = matches.group(2)
        if not proc_name.startswith("PFN_xr"):
            i += 1
            continue

        return_type = matches.group(1)

        open_paren_index = line.find('(', matches.end())
        if open_paren_index == -1:
            i += 1
            continue

        close_paren_index = line.find(");", open_paren_index)
        while close_paren_index == -1:
            i += 1
            if i >= len(lines):
                break
            line += ' ' + lines[i].strip()
            close_paren_index = line.find(");", open_paren_index)

        if close_paren_index == -1:
            i += 1
            continue

        params_str = line[open_paren_index + 1:close_paren_index].strip()
        procedure = create_procedure(return_type, proc_name, params_str)
        procedures.append(procedure)

        i += 1
    return procedures


class Procedure_Category(Enum):
    GLOBAL = 1
    INSTANCE = 2
    SESSION = 3
    OTHER = 4
    VOID_FUNC = 5


def categorize_procedure(proc: Procedure_Type) -> Procedure_Category:
    if proc.name == "VoidFunction":
        return Procedure_Category.VOID_FUNC
    if proc.name == "CreateInstance":
        return Procedure_Category.GLOBAL
    if not proc.params or len(proc.params) == 0:
        return Procedure_Category.GLOBAL

    if len(proc.params) == 0:
        return Procedure_Category.GLOBAL

    base_type = proc.params[0].base_type_unmodied
    if base_type == "XrInstance":
        return Procedure_Category.INSTANCE
    elif base_type == "XrSession":
        return Procedure_Category.SESSION
    elif base_type.startswith("Xr"):
        return Procedure_Category.OTHER
    else:
        return Procedure_Category.GLOBAL


def filter_proc_by_category(procs: [Procedure_Type], category: Procedure_Category) -> [Procedure_Type]:
    res = []
    for proc in procs:
        if categorize_procedure(proc) == category:
            res.append(proc)
    return res


def write_procedure_type_group(f: file, procs: [Procedure_Type], title: str) -> None:
    if procs is None or len(procs) == 0:
        return
    if title is None or title == "":
        f.write("")
    else:
        f.write(f"// {title}\n\n")
    alignment = make_alignment(procs, lambda p: "Proc" + p.name + " :: ")
    for proc in procs:
        proc.write_as_type(f, alignment)
    f.write("\n")


def write_procedure_ptr_group(f: file, procs: [Procedure_Type], title: str) -> None:
    if procs is None or len(procs) == 0:
        return
    if title is None or title == "":
        f.write("")
    else:
        f.write(f"// {title}\n\n")
    alignment = make_alignment(procs, lambda p: make_identifier(p.name) + ": ")
    for proc in procs:
        proc.write_as_pointer(f, alignment)
    f.write("\n")


@dataclass
class Structure:
    name: str
    is_union: bool
    fields: [Argument_Or_Member]

    def write(self, f: file) -> None:
        f.write(no_xr(self.name) + " :: ")
        if self.is_union:
            f.write("union {\n")
        else:
            f.write("struct {\n")
        alignment = make_alignment(self.fields, lambda f: make_identifier(f.name) + ": ")
        for field in self.fields:
            f.write("    ")
            field.write(f, alignment)
        f.write("}\n")

def parse_structs(src: str) -> [Structure]:
    structs = []
    lines = src.splitlines()
    i = 0
    while i < len(lines):
        line = lines[i].strip()
        matches = re.match(r"^typedef\s+(struct|union)(?:\s+XR_MAY_ALIAS)?\s+(\w+)\s*\{", line)
        if matches is None:
            i += 1
            continue
        struct_name = None
        is_union = matches.group(1) == "union"

        fields = []
        end_found = False
        while not end_found:
            i += 1
            if i >= len(lines):
                break
            line = lines[i].strip()
            end_match = re.match(r".*}\s*(\w+);", line)
            if end_match is not None:
                end_found = True
                line = line[:end_match.start()].strip()
                struct_name = end_match.group(1).strip()
            if len(line) == 0:
                continue

            member = parse_argument_or_member(line.strip())
            fields.append(member)

        if end_found:
            structs.append(Structure(struct_name, is_union, fields))
        else:
            die("Could not find end of struct: " + struct_name)

    return structs

@dataclass
class Enum_Entry:
    name: str
    value: Optional[str] = None

    def write(self, f: file, enum_name: str, alignment: int = None) -> None:
        ident = make_identifier(strip_enumerant_name(enum_name, self.name))
        if self.value is not None:
            value = self.value
            if self.value.startswith("XR_"):
                value = no_xr(strip_enumerant_name(enum_name, self.value))

            if alignment is not None:
                f.write(f"{ident: <{alignment}}= {value},\n")
            else:
                f.write(f"{ident} = {value},\n")
        else:
            f.write(f"{ident},\n")

@dataclass
class Enum:
    name: str
    entries: [Enum_Entry]
    underlying_type: str = "i32"

    def write(self, f: file) -> None:
        f.write(f"{no_xr(self.name)} :: enum {self.underlying_type} {{")
        if len(self.entries) == 0:
            f.write("}\n")
            return

        f.write("\n")
        alignment = make_alignment(self.entries, lambda e: e.name + " ")
        for entry in self.entries:
            f.write("    ")
            entry.write(f, self.name, alignment)
        f.write("}\n")

messed_up_enum_workaround = {
    "XrPassthroughCapabilityFlagFB": ("XR_PASSTHROUGH_CAPABILITY_FB", "SUPPORTED"),
}

def strip_enumerant_name(enum_name: str, enumerant_name: str) -> str:
    # There is at least one case where the flag value matches the enum value in
    # it's entirety. Special case it here, so we don't accidentally end up with
    # empty enumerants all over the place.
    if enum_name in messed_up_enum_workaround:
        messed_up_enum, replacement = messed_up_enum_workaround[enum_name]
        if enumerant_name == messed_up_enum:
            return replacement

    enum_name = enum_name.replace("Xr", "")
    enumerant_name = enumerant_name.replace("XR_", "")

    if enum_name == "StructureType" and enumerant_name.startswith("TYPE_"):
        return enumerant_name.replace("TYPE_", "")

    ext = None
    for x in extension_prefixes:
        if enum_name.endswith(x):
            ext = x.upper()
            break

    enum_name_upper = enum_name.upper()
    enumerant_parts = enumerant_name.split('_')
    i = 0
    j = 0
    while i < len(enumerant_parts):
        if enum_name_upper[j:].startswith(enumerant_parts[i]):
            i += 1
            j += len(enumerant_parts[i - 1])
        else:
            break

    enumerant_parts = enumerant_parts[i:]
    if enumerant_parts[len(enumerant_parts) - 1] == ext:
        enumerant_parts = enumerant_parts[:len(enumerant_parts) - 1]

    res = '_'.join(enumerant_parts)
    assert(len(res) > 0)
    if res[0].isdigit():
        res = '_' + res
    return res


def parse_enums(src: str) -> Enum:
    enums = []
    lines = src.splitlines()
    i = 0
    while i < len(lines):
        line = lines[i]
        matches = re.match(r"^typedef\s+enum\s+(\w+)\s*\{", line)
        if matches is None:
            i += 1
            continue
        enum_name = None
        end_found = False
        entries = []

        while not end_found:
            i += 1
            if i >= len(lines):
                break
            line = lines[i].strip()

            end_matches = re.match(r"^}(\s*\w+)?;", line)
            if end_matches is not None:
                end_found = True
                enum_name = end_matches.group(1).strip()
                continue

            enumerant_match = re.match(r"^(\w+)(\s*=\s*([^,]+))?,?$", line)
            if enumerant_match is None:
                continue
            enumerant_name = enumerant_match.group(1)

            enumerant_value = None
            if enumerant_match.group(3) is not None:
                enumerant_value = enumerant_match.group(3).strip()
                enumerant_value = convert_number(enumerant_value)

            entries.append(Enum_Entry(enumerant_name, enumerant_value))

        new_entries = []
        for entry in entries:
            if strip_enumerant_name(enum_name, entry.name) != "MAX_ENUM":
                new_entries.append(entry)
        entries = new_entries

        if not end_found:
            die("Could not find end of enum: " + enum_name)
        enum = Enum(enum_name, entries)
        enums.append(enum)
        i += 1
    return enums

def get_bit_index(value: int) -> int:
    index = 0
    while (value & 1) == 0:
        value = value >> 1
        index += 1
    assert(value == 1)
    return index

def parse_flags(src: str) -> [Enum]:
    flag_map = {}
    lines = src.splitlines()
    for line in lines:
        line = line.strip()
        flag_match = re.match(r"^typedef\s+XrFlags64\s+(\w+);", line)
        if flag_match is not None:
            flag_name = flag_match.group(1)
            enum = Enum(flag_name.replace("Flags", "Flag"), [])
            enum.underlying_type = "u64"
            flag_map[flag_name] = enum
            continue
        flag_entry_match = re.match(r"^static\s+const\s+(\w+)\s+(\w+)\s*=\s*(\w+);", line)
        if flag_entry_match is not None:
            type_name = flag_entry_match.group(1).strip()
            enum_name = type_name.replace("Flags", "Flag")
            entry_name = flag_entry_match.group(2).strip().replace("_BIT", "")

            if entry_name == "":
                entry_name = "SUPPORTED"

            entry_value = int(flag_entry_match.group(3).strip(), 0)
            entry_value_index = get_bit_index(entry_value)
            flag_enum = flag_map.get(type_name, None)
            assert(flag_enum is not None)
            flag_enum.entries.append(Enum_Entry(entry_name, str(entry_value_index)))
            continue
    return list(flag_map.values())

def make_alignment(array, predicate) -> int:
    if not predicate:
        return 0
    res = max(len(predicate(x)) for x in array)
    return res

supported_platform_ifdefs = [
    "ANDROID",
    "XLIB",
    "WIN32",
    "XCB",
    "WAYLAND",
    "EGL",
]

def process_platform_file(platform_src: str, graphics_api :str= None) -> str:
    src = ""
    lines = platform_src.splitlines()

    is_supported_platform = True
    is_graphics_api = graphics_api is None
    guard_stack = []

    for line in lines:
        ifdef_match = re.match(r"#(if(?:n)?def)\s+(\w+)$", line.strip())
        if ifdef_match is not None:
            kind = ifdef_match.group(1)
            macro = ifdef_match.group(2)
            guard_stack.append(macro)
            # print("Open: " + macro + " - Count: " + str(len(guard_stack)))
            if kind == "ifndef":
                continue
            if macro.startswith("XR_USE_PLATFORM_"):
                is_supported_platform = (macro.replace("XR_USE_PLATFORM_", "") in supported_platform_ifdefs)
                continue

            if macro.startswith("XR_USE_GRAPHICS_API_"):
                if graphics_api is None:
                    is_graphics_api = False
                    continue
                is_graphics_api = (macro.replace("XR_USE_GRAPHICS_API_", "") == graphics_api)
                continue

        endif_match = re.match(r"#endif.*$", line.strip())
        if endif_match is not None:
            assert(len(guard_stack) > 0)
            macro = guard_stack.pop()
            if macro.startswith("XR_USE_GRAPHICS_API_") and \
                graphics_api is not None and \
                macro.replace("XR_USE_GRAPHICS_API_", "") == graphics_api:
                is_graphics_api = False

            # print("Close - Count: " + str(len(guard_stack)))
            if len(guard_stack) == 0:
                is_supported_platform = True
                is_graphics_api = graphics_api is None
            continue

        if is_supported_platform and is_graphics_api:
            src += line + "\n"

    if len(guard_stack) != 0:
        die("Mismatched #ifdef/#endif in platform file")

    return src

def do_defines(f: file, src: str) -> None:
    defines = parse_defines(src)
    alignment = make_alignment(defines, lambda d: no_xr(d.name) + " ")
    for d in defines:
        f.write(f"{no_xr(d.name): <{alignment}}:: {no_xr(d.value)}\n")

def do_enums_and_flags(f: file, src: str) -> None:
    enums = parse_enums(src)
    for e in enums:
        for entry in e.entries:
            all_enumerants[entry.name] = e.name

    flags = parse_flags(src)
    for e in enums:
        e.write(f)
        f.write("\n")

    for flag in flags:
        name = no_xr(flag.name)
        f.write(name.replace("Flag", "Flags") + " :: distinct bit_set[" + name + "; u64]\n")
        flag.write(f)
        f.write("\n")

def do_structs(f: file, src: str) -> None:
    structs = parse_structs(src)
    for s in structs:
        s.write(f)
        f.write("\n")


BASE = """
//
// OpenXR wrapper generated from: https://raw.githubusercontent.com/KhronosGroup/OpenXR-SDK/refs/heads/main/include/openxr/openxr.h
//
package vendor_openxr

"""[1::]

src = ""

xr_filepath = os.path.join(script_dir, "openxr.h")
with open(xr_filepath, "r", encoding="utf-8") as f:
    src += f.read()

xr_platform_filepath = os.path.join(script_dir, "openxr_platform.h")
platform_src = ""
with open(xr_platform_filepath, "r", encoding="utf-8") as f:
    platform_src = f.read()

additional_platform_src = process_platform_file(platform_src)
src += additional_platform_src

core_file =   os.path.join(bindings_dir, "core.odin")
proc_file =   os.path.join(bindings_dir, "procedures.odin")
enum_file =   os.path.join(bindings_dir, "enums.odin")
struct_file = os.path.join(bindings_dir, "structs.odin")

#
# Core file contains version defines and hard-coded functions
#
with open(core_file, "w", encoding="utf-8") as f:
    f.write(BASE)
    major, minor, patch = parse_current_version(src)
    f.write("""
MAKE_VERSION :: proc(major, minor, path: u32) -> u64 {
    return (cast(u64)(major & 0xFFFF) << 48) | (cast(u64)(minor & 0xFFFF) << 32) | (cast(u64)path & 0xFFFF_FFFF)
}

VERSION_MAJOR :: proc(version: u64) -> u32 { return cast(u32)((version >> 48) & 0xFFFF) }
VERSION_MINOR :: proc(version: u64) -> u32 { return cast(u32)((version >> 32) & 0xFFFF) }
VERSION_PATCH :: proc(version: u64) -> u32 { return cast(u32)(version & 0xFFFF_FFFF)    }
""")
    f.write(f"\nCURRENT_API_VERSION :: (u64({major} << 48) | u64({minor} << 32) | u64({patch}))\n")
    f.write(f"\nAPI_VERSION_1_0 :: (u64(1 << 48) | u64(0 << 32) | u64({patch}))\n")
    f.write("""
""")
    do_defines(f, src)
    f.write("SetProcAddressType :: #type proc(p: rawptr, name: cstring)\n")

#
# Enum file. Contains all enums and flags
# NOTE: This needs to be before struct and proc files, as there might be enumerants
#       used as array sizes in procedure arguments or struct members.
#

with open(enum_file, "w", encoding="utf-8") as f:
    f.write(BASE)
    do_enums_and_flags(f, src)

#
# Procedure files. Contains proc typedefs, pointers and laoders
#
with open(proc_file, "w", encoding="utf-8") as f:
    f.write(BASE)
    procs = parse_procedures_type(src)
    void_func_proc = filter_proc_by_category(procs, Procedure_Category.VOID_FUNC)
    global_procs   = filter_proc_by_category(procs, Procedure_Category.GLOBAL)
    instance_procs = filter_proc_by_category(procs, Procedure_Category.INSTANCE)
    session_procs  = filter_proc_by_category(procs, Procedure_Category.SESSION)
    other_procs    = filter_proc_by_category(procs, Procedure_Category.OTHER)
    write_procedure_type_group(f, void_func_proc, "")
    write_procedure_type_group(f, global_procs, "Global level procedures")
    write_procedure_type_group(f, instance_procs, "Instance level procedures")
    write_procedure_type_group(f, session_procs, "Session level procedures")
    write_procedure_type_group(f, other_procs, "Other procedures")

    write_procedure_ptr_group(f, global_procs, "Global level procedures")
    write_procedure_ptr_group(f, instance_procs, "Instance level procedures")
    write_procedure_ptr_group(f, session_procs, "Session level procedures")
    write_procedure_ptr_group(f, other_procs, "Other procedures")

    f.write("load_proc_addresses_global :: proc(get_instance_proc_addr: ProcGetInstanceProcAddr) {\n")
    f.write("    GetInstanceProcAddr = get_instance_proc_addr\n\n")
    for proc in global_procs:
        f.write(f"    _ = GetInstanceProcAddr(nil, \"xr{proc.name}\", auto_cast &{proc.name})\n")
    f.write("}\n\n")

    f.write("load_proc_addresses_instance :: proc(instance: Instance) {\n")
    for proc in instance_procs:
        f.write(f"    _ = GetInstanceProcAddr(instance, \"xr{proc.name}\", auto_cast &{proc.name})\n")
    for proc in session_procs:
        f.write(f"    _ = GetInstanceProcAddr(instance, \"xr{proc.name}\", auto_cast &{proc.name})\n")
    for proc in other_procs:
        f.write(f"    _ = GetInstanceProcAddr(instance, \"xr{proc.name}\", auto_cast &{proc.name})\n")
    f.write("}\n\n")

    f.write("load_proc_addresses_custom :: proc(set_proc_address: SetProcAddressType) {\n")
    f.write("    // Global level procedures\n")
    for proc in global_procs:
        f.write(f"    set_proc_address(&{proc.name}, \"xr{proc.name}\")\n")
    f.write("\n    // Instance level procedures\n")
    for proc in instance_procs:
        f.write(f"    set_proc_address(&{proc.name}, \"xr{proc.name}\")\n")
    f.write("\n    // Session level procedures\n")
    for proc in session_procs:
        f.write(f"    set_proc_address(&{proc.name}, \"xr{proc.name}\")\n")
    f.write("\n    // Other procedures\n")
    for proc in other_procs:
        f.write(f"    set_proc_address(&{proc.name}, \"xr{proc.name}\")\n")
    f.write("}\n")
    f.write("""
load_proc_addresses :: proc {
    load_proc_addresses_global,
    load_proc_addresses_instance,
    load_proc_addresses_custom,
}
""")

#
# Struct file. Contains all structs and unions
#
with open(struct_file, "w", encoding="utf-8") as f:
    f.write(BASE)

    f.write("""
import "vendor:egl"
_ :: egl

when ODIN_OS == .Linux {
    EGLDisplay :: egl.Display
    EGLConfig  :: egl.Config
    EGLContext :: egl.Context
} else {
    EGLDisplay :: rawptr
    EGLConfig  :: rawptr
    EGLContext :: rawptr
}

when ODIN_PLATFORM_SUBTARGET == .Android {
    // @TODO: If an android library is added to the vendor or core packages,
    // this should be imported from there instead.
    AIBinder :: struct {}
} else {
    AIBinder :: struct {}
}

jobject :: rawptr // Android JNI object handle
""")

    do_structs(f, src)


@dataclass
class Graphics_API:
    name: str
    api_macro: str
    platforms_strings: [str]
    imports: [(str, str)]
    filter_callable: callable = None


def vulkan_filter(s: str) -> str:
    s = re.sub("^(?:Vk)(\\w+)", "vk.\\1", s)
    s = re.sub("^(?:PFN_vk)(\\w+)", "vk.Proc\\1", s)
    return s

def opengl_filter(s: str) -> str:
    s = re.sub("^(?:GL)(\\w+)", "gl.\\1", s)
    s = re.sub("^(?:PFN_gl)(\\w+)", "gl.Proc\\1", s)
    s = s.replace("EGLenum", "u32")
    s = re.sub("^(?:EGL)(\\w+)", "egl.\\1", s)
    return s

def make_directx_filter(prefix: str) -> callable:
    def directx_filter(s: str) -> str:
        s = s.replace("LUID", "dxgi.LUID")
        s = re.sub("^(?:ID3D11)(\\w+)", "d3d11.I\\1", s)
        s = re.sub("^(?:ID3D12)(\\w+)", "d3d12.I\\1", s)
        s = re.sub("^(?:D3D_)(\\w+)", prefix + ".\\1", s)
        return s
    return directx_filter

# Capitalisation tries to match the vendor and core modules in Odin
graphics_api = [
    Graphics_API("vulkan",   "VULKAN",    [],          [("vendor:vulkan", "vk")],                                       vulkan_filter),
    Graphics_API("OpenGL",   "OPENGL",    [],          [("vendor:OpenGL", "gl")],                                       opengl_filter),
    Graphics_API("OpenGLES", "OPENGL_ES", ["linux"],   [("vendor:OpenGL", "gl"), ("vendor:egl", None)],                 opengl_filter),
    Graphics_API("d3d11",    "D3D11",     ["windows"], [("vendor:directx/d3d11", None), ("vendor:directx/dxgi", None)], make_directx_filter("d3d11")),
    Graphics_API("d3d12",    "D3D12",     ["windows"], [("vendor:directx/d3d12", None), ("vendor:directx/dxgi", None)], make_directx_filter("d3d12")),
    Graphics_API("Metal",    "METAL",     ["darwin"],  []),
]

for api in graphics_api:
    directory_name = os.path.join(bindings_dir, api.name)
    os.makedirs(directory_name, exist_ok=True)

    additional_name_filter = api.filter_callable

    api_file = os.path.join(directory_name, f"openxr_{api.name.lower()}.odin")
    with open(api_file, "w", encoding="utf-8") as f:
        if len(api.platforms_strings) > 0:
            f.write("#+build " + ", ".join(api.platforms_strings) + "\n\n")
        f.write(f"package openxr_{api.name.lower()}\n\n")
        f.write("import xr \"vendor:openxr\"\n")
        for import_pair in api.imports:
            if import_pair[1] is None:
                f.write(f"import \"{import_pair[0]}\"\n")
            else:
                f.write(f"import {import_pair[1]} \"{import_pair[0]}\"\n")
        f.write("\n")

        src = process_platform_file(platform_src, api.api_macro)

        do_defines(f, src)
        do_enums_and_flags(f, src)
        do_structs(f, src)

        procs = parse_procedures_type(src)
        if len(procs) == 0:
            continue

        alignment = make_alignment(procs, lambda p: "Proc" + p.name + " :: ")
        for proc in procs:
            proc.write_as_type(f, alignment)
        f.write("\n")
        alignment = make_alignment(procs, lambda p: "Proc" + p.name + ": ")
        for proc in procs:
            proc.write_as_pointer(f, alignment)
        f.write("\n")
        f.write("load_proc_addresses_custom :: proc(set_proc_address: SetProcAddressType) {\n")
        for proc in procs:
            f.write(f"    set_proc_address(&{proc.name}, \"xr{proc.name}\")\n")
        f.write("}\n\n")
        f.write(f"load_proc_addresses :: proc(instance: Instance) {{\n")
        for proc in procs:
            f.write(f"    _ = GetInstanceProcAddr(instance, \"xr{proc.name}\", auto_cast &{proc.name})\n")
        f.write("}\n\n")
        f.write("""
load_proc_addresses :: proc {
    load_proc_addresses,
    load_proc_addresses_custom,
}
"""[1::])

