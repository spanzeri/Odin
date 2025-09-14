#+build windows

package openxr_d3d11

import xr "vendor:openxr"
import "vendor:directx/d3d11"
import "vendor:directx/dxgi"

KHR_D3D11_enable_SPEC_VERSION   :: 10
KHR_D3D11_ENABLE_EXTENSION_NAME :: "XR_KHR_D3D11_enable"
GraphicsBindingD3D11KHR :: struct {
    type:   StructureType,
    next:   rawptr,
    device: ^d3d11.IDevice,
}

SwapchainImageD3D11KHR :: struct {
    type:    StructureType,
    next:    rawptr,
    texture: ^d3d11.ITexture2D,
}

GraphicsRequirementsD3D11KHR :: struct {
    type:            StructureType,
    next:            rawptr,
    adapterLuid:     dxgi.LUID,
    minFeatureLevel: d3d11.FEATURE_LEVEL,
}

ProcGetD3D11GraphicsRequirementsKHR :: #type proc "system" (instance: Instance, systemId: SystemId, graphicsRequirements: [^]GraphicsRequirementsD3D11KHR) -> Result

GetD3D11GraphicsRequirementsKHR:     ProcGetD3D11GraphicsRequirementsKHR

load_proc_addresses_custom :: proc(set_proc_address: SetProcAddressType) {
    set_proc_address(&GetD3D11GraphicsRequirementsKHR, "xrGetD3D11GraphicsRequirementsKHR")
}

load_proc_addresses :: proc(instance: Instance) {
    _ = GetInstanceProcAddr(instance, "xrGetD3D11GraphicsRequirementsKHR", auto_cast &GetD3D11GraphicsRequirementsKHR)
}

load_proc_addresses :: proc {
    load_proc_addresses,
    load_proc_addresses_custom,
}
