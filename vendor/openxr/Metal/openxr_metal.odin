#+build darwin

package openxr_metal

import xr "vendor:openxr"

KHR_metal_enable_SPEC_VERSION   :: 2
KHR_METAL_ENABLE_EXTENSION_NAME :: "XR_KHR_metal_enable"
GraphicsBindingMetalKHR :: struct {
    type:         StructureType,
    next:         rawptr,
    commandQueue: rawptr,
}

SwapchainImageMetalKHR :: struct {
    type:    StructureType,
    next:    rawptr,
    texture: rawptr,
}

GraphicsRequirementsMetalKHR :: struct {
    type:        StructureType,
    next:        rawptr,
    metalDevice: rawptr,
}

ProcGetMetalGraphicsRequirementsKHR :: #type proc "system" (instance: Instance, systemId: SystemId, graphicsRequirements: [^]GraphicsRequirementsMetalKHR) -> Result

GetMetalGraphicsRequirementsKHR:     ProcGetMetalGraphicsRequirementsKHR

load_proc_addresses_custom :: proc(set_proc_address: SetProcAddressType) {
    set_proc_address(&GetMetalGraphicsRequirementsKHR, "xrGetMetalGraphicsRequirementsKHR")
}

load_proc_addresses :: proc(instance: Instance) {
    _ = GetInstanceProcAddr(instance, "xrGetMetalGraphicsRequirementsKHR", auto_cast &GetMetalGraphicsRequirementsKHR)
}

load_proc_addresses :: proc {
    load_proc_addresses,
    load_proc_addresses_custom,
}
