#+build linux

package openxr_opengles

import xr "vendor:openxr"
import gl "vendor:OpenGL"
import "vendor:egl"

KHR_opengl_es_enable_SPEC_VERSION                  :: 9
KHR_OPENGL_ES_ENABLE_EXTENSION_NAME                :: "XR_KHR_opengl_es_enable"
FB_swapchain_update_state_opengl_es_SPEC_VERSION   :: 1
FB_SWAPCHAIN_UPDATE_STATE_OPENGL_ES_EXTENSION_NAME :: "XR_FB_swapchain_update_state_opengl_es"
GraphicsBindingOpenGLESAndroidKHR :: struct {
    type:     StructureType,
    next:     rawptr,
    display:  egl.Display,
    config:   egl.Config,
    context_: egl.Context,
}

SwapchainImageOpenGLESKHR :: struct {
    type:  StructureType,
    next:  rawptr,
    image: u32,
}

GraphicsRequirementsOpenGLESKHR :: struct {
    type:                   StructureType,
    next:                   rawptr,
    minApiVersionSupported: Version,
    maxApiVersionSupported: Version,
}

SwapchainStateSamplerOpenGLESFB :: struct {
    type:          StructureType,
    next:          rawptr,
    minFilter:     u32,
    magFilter:     u32,
    wrapModeS:     u32,
    wrapModeT:     u32,
    swizzleRed:    u32,
    swizzleGreen:  u32,
    swizzleBlue:   u32,
    swizzleAlpha:  u32,
    maxAnisotropy: f32,
    borderColor:   Color4f,
}

ProcGetOpenGLESGraphicsRequirementsKHR :: #type proc "system" (instance: Instance, systemId: SystemId, graphicsRequirements: [^]GraphicsRequirementsOpenGLESKHR) -> Result

GetOpenGLESGraphicsRequirementsKHR:     ProcGetOpenGLESGraphicsRequirementsKHR

load_proc_addresses_custom :: proc(set_proc_address: SetProcAddressType) {
    set_proc_address(&GetOpenGLESGraphicsRequirementsKHR, "xrGetOpenGLESGraphicsRequirementsKHR")
}

load_proc_addresses :: proc(instance: Instance) {
    _ = GetInstanceProcAddr(instance, "xrGetOpenGLESGraphicsRequirementsKHR", auto_cast &GetOpenGLESGraphicsRequirementsKHR)
}

load_proc_addresses :: proc {
    load_proc_addresses,
    load_proc_addresses_custom,
}
