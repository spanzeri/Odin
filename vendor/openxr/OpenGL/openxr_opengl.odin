package openxr_opengl

import xr "vendor:openxr"
import gl "vendor:OpenGL"

KHR_opengl_enable_SPEC_VERSION   :: 11
KHR_OPENGL_ENABLE_EXTENSION_NAME :: "XR_KHR_opengl_enable"
GraphicsBindingOpenGLWin32KHR :: struct {
    type:  StructureType,
    next:  rawptr,
    hDC:   HDC,
    hGLRC: HGLRC,
}

GraphicsBindingOpenGLXlibKHR :: struct {
    type:        StructureType,
    next:        rawptr,
    xDisplay:    ^Display,
    visualid:    u32,
    glxFBConfig: gl.XFBConfig,
    glxDrawable: gl.XDrawable,
    glxContext:  gl.XContext,
}

GraphicsBindingOpenGLXcbKHR :: struct {
    type:         StructureType,
    next:         rawptr,
    connection:   ^xcb_connection_t,
    screenNumber: u32,
    fbconfigid:   xcb_glx_fbconfig_t,
    visualid:     xcb_visualid_t,
    glxDrawable:  xcb_glx_drawable_t,
    glxContext:   xcb_glx_context_t,
}

GraphicsBindingOpenGLWaylandKHR :: struct {
    type:    StructureType,
    next:    rawptr,
    display: ^wl_display,
}

SwapchainImageOpenGLKHR :: struct {
    type:  StructureType,
    next:  rawptr,
    image: u32,
}

GraphicsRequirementsOpenGLKHR :: struct {
    type:                   StructureType,
    next:                   rawptr,
    minApiVersionSupported: Version,
    maxApiVersionSupported: Version,
}

ProcGetOpenGLGraphicsRequirementsKHR :: #type proc "system" (instance: Instance, systemId: SystemId, graphicsRequirements: [^]GraphicsRequirementsOpenGLKHR) -> Result

GetOpenGLGraphicsRequirementsKHR:     ProcGetOpenGLGraphicsRequirementsKHR

load_proc_addresses_custom :: proc(set_proc_address: SetProcAddressType) {
    set_proc_address(&GetOpenGLGraphicsRequirementsKHR, "xrGetOpenGLGraphicsRequirementsKHR")
}

load_proc_addresses :: proc(instance: Instance) {
    _ = GetInstanceProcAddr(instance, "xrGetOpenGLGraphicsRequirementsKHR", auto_cast &GetOpenGLGraphicsRequirementsKHR)
}

load_proc_addresses :: proc {
    load_proc_addresses,
    load_proc_addresses_custom,
}
