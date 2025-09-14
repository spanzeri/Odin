#+build windows

package openxr_d3d12

import xr "vendor:openxr"
import "vendor:directx/d3d12"
import "vendor:directx/dxgi"

KHR_D3D12_enable_SPEC_VERSION   :: 10
KHR_D3D12_ENABLE_EXTENSION_NAME :: "XR_KHR_D3D12_enable"
GraphicsBindingD3D12KHR :: struct {
    type:   StructureType,
    next:   rawptr,
    device: ^d3d12.IDevice,
    queue:  ^d3d12.ICommandQueue,
}

SwapchainImageD3D12KHR :: struct {
    type:    StructureType,
    next:    rawptr,
    texture: ^d3d12.IResource,
}

GraphicsRequirementsD3D12KHR :: struct {
    type:            StructureType,
    next:            rawptr,
    adapterLuid:     dxgi.LUID,
    minFeatureLevel: d3d12.FEATURE_LEVEL,
}

ProcGetD3D12GraphicsRequirementsKHR :: #type proc "system" (instance: Instance, systemId: SystemId, graphicsRequirements: [^]GraphicsRequirementsD3D12KHR) -> Result

GetD3D12GraphicsRequirementsKHR:     ProcGetD3D12GraphicsRequirementsKHR

load_proc_addresses_custom :: proc(set_proc_address: SetProcAddressType) {
    set_proc_address(&GetD3D12GraphicsRequirementsKHR, "xrGetD3D12GraphicsRequirementsKHR")
}

load_proc_addresses :: proc(instance: Instance) {
    _ = GetInstanceProcAddr(instance, "xrGetD3D12GraphicsRequirementsKHR", auto_cast &GetD3D12GraphicsRequirementsKHR)
}

load_proc_addresses :: proc {
    load_proc_addresses,
    load_proc_addresses_custom,
}
