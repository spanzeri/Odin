package openxr_vulkan

import xr "vendor:openxr"
import vk "vendor:vulkan"

KHR_vulkan_swapchain_format_list_SPEC_VERSION    :: 5
KHR_VULKAN_SWAPCHAIN_FORMAT_LIST_EXTENSION_NAME  :: "XR_KHR_vulkan_swapchain_format_list"
KHR_vulkan_enable_SPEC_VERSION                   :: 9
KHR_VULKAN_ENABLE_EXTENSION_NAME                 :: "XR_KHR_vulkan_enable"
KHR_vulkan_enable2_SPEC_VERSION                  :: 3
KHR_VULKAN_ENABLE2_EXTENSION_NAME                :: "XR_KHR_vulkan_enable2"
GraphicsBindingVulkan2KHR                        :: GraphicsBindingVulkanKHR
SwapchainImageVulkan2KHR                         :: SwapchainImageVulkanKHR
GraphicsRequirementsVulkan2KHR                   :: GraphicsRequirementsVulkanKHR
FB_foveation_vulkan_SPEC_VERSION                 :: 1
FB_FOVEATION_VULKAN_EXTENSION_NAME               :: "XR_FB_foveation_vulkan"
FB_swapchain_update_state_vulkan_SPEC_VERSION    :: 1
FB_SWAPCHAIN_UPDATE_STATE_VULKAN_EXTENSION_NAME  :: "XR_FB_swapchain_update_state_vulkan"
META_vulkan_swapchain_create_info_SPEC_VERSION   :: 1
META_VULKAN_SWAPCHAIN_CREATE_INFO_EXTENSION_NAME :: "XR_META_vulkan_swapchain_create_info"
VulkanInstanceCreateFlagsKHR :: distinct bit_set[VulkanInstanceCreateFlagKHR; u64]
VulkanInstanceCreateFlagKHR :: enum u64 {}

VulkanDeviceCreateFlagsKHR :: distinct bit_set[VulkanDeviceCreateFlagKHR; u64]
VulkanDeviceCreateFlagKHR :: enum u64 {}

VulkanSwapchainFormatListCreateInfoKHR :: struct {
    type:            StructureType,
    next:            rawptr,
    viewFormatCount: u32,
    viewFormats:     [^]vk.Format,
}

GraphicsBindingVulkanKHR :: struct {
    type:             StructureType,
    next:             rawptr,
    instance:         vk.Instance,
    physicalDevice:   vk.PhysicalDevice,
    device:           vk.Device,
    queueFamilyIndex: u32,
    queueIndex:       u32,
}

SwapchainImageVulkanKHR :: struct {
    type:  StructureType,
    next:  rawptr,
    image: vk.Image,
}

GraphicsRequirementsVulkanKHR :: struct {
    type:                   StructureType,
    next:                   rawptr,
    minApiVersionSupported: Version,
    maxApiVersionSupported: Version,
}

VulkanInstanceCreateInfoKHR :: struct {
    type:                   StructureType,
    next:                   rawptr,
    systemId:               SystemId,
    createFlags:            VulkanInstanceCreateFlagsKHR,
    pfnGetInstanceProcAddr: vk.ProcGetInstanceProcAddr,
    vulkanCreateInfo:       ^vk.InstanceCreateInfo,
    vulkanAllocator:        ^vk.AllocationCallbacks,
}

VulkanDeviceCreateInfoKHR :: struct {
    type:                   StructureType,
    next:                   rawptr,
    systemId:               SystemId,
    createFlags:            VulkanDeviceCreateFlagsKHR,
    pfnGetInstanceProcAddr: vk.ProcGetInstanceProcAddr,
    vulkanPhysicalDevice:   vk.PhysicalDevice,
    vulkanCreateInfo:       ^vk.DeviceCreateInfo,
    vulkanAllocator:        ^vk.AllocationCallbacks,
}

VulkanGraphicsDeviceGetInfoKHR :: struct {
    type:           StructureType,
    next:           rawptr,
    systemId:       SystemId,
    vulkanInstance: vk.Instance,
}

SwapchainImageFoveationVulkanFB :: struct {
    type:   StructureType,
    next:   rawptr,
    image:  vk.Image,
    width:  u32,
    height: u32,
}

SwapchainStateSamplerVulkanFB :: struct {
    type:          StructureType,
    next:          rawptr,
    minFilter:     vk.Filter,
    magFilter:     vk.Filter,
    mipmapMode:    vk.SamplerMipmapMode,
    wrapModeS:     vk.SamplerAddressMode,
    wrapModeT:     vk.SamplerAddressMode,
    swizzleRed:    vk.ComponentSwizzle,
    swizzleGreen:  vk.ComponentSwizzle,
    swizzleBlue:   vk.ComponentSwizzle,
    swizzleAlpha:  vk.ComponentSwizzle,
    maxAnisotropy: f32,
    borderColor:   Color4f,
}

VulkanSwapchainCreateInfoMETA :: struct {
    type:                  StructureType,
    next:                  rawptr,
    additionalCreateFlags: vk.ImageCreateFlags,
    additionalUsageFlags:  vk.ImageUsageFlags,
}

ProcGetVulkanInstanceExtensionsKHR ::    #type proc "system" (instance: Instance, systemId: SystemId, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcGetVulkanDeviceExtensionsKHR ::      #type proc "system" (instance: Instance, systemId: SystemId, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcGetVulkanGraphicsDeviceKHR ::        #type proc "system" (instance: Instance, systemId: SystemId, vkInstance: vk.Instance, vkPhysicalDevice: ^vk.PhysicalDevice) -> Result
ProcGetVulkanGraphicsRequirementsKHR ::  #type proc "system" (instance: Instance, systemId: SystemId, graphicsRequirements: [^]GraphicsRequirementsVulkanKHR) -> Result
ProcCreateVulkanInstanceKHR ::           #type proc "system" (instance: Instance, createInfo: ^VulkanInstanceCreateInfoKHR, vulkanInstance: ^vk.Instance, vulkanResult: ^vk.Result) -> Result
ProcCreateVulkanDeviceKHR ::             #type proc "system" (instance: Instance, createInfo: ^VulkanDeviceCreateInfoKHR, vulkanDevice: ^vk.Device, vulkanResult: ^vk.Result) -> Result
ProcGetVulkanGraphicsDevice2KHR ::       #type proc "system" (instance: Instance, getInfo: ^VulkanGraphicsDeviceGetInfoKHR, vulkanPhysicalDevice: ^vk.PhysicalDevice) -> Result
ProcGetVulkanGraphicsRequirements2KHR :: #type proc "system" (instance: Instance, systemId: SystemId, graphicsRequirements: [^]GraphicsRequirementsVulkanKHR) -> Result

GetVulkanInstanceExtensionsKHR:        ProcGetVulkanInstanceExtensionsKHR
GetVulkanDeviceExtensionsKHR:          ProcGetVulkanDeviceExtensionsKHR
GetVulkanGraphicsDeviceKHR:            ProcGetVulkanGraphicsDeviceKHR
GetVulkanGraphicsRequirementsKHR:      ProcGetVulkanGraphicsRequirementsKHR
CreateVulkanInstanceKHR:               ProcCreateVulkanInstanceKHR
CreateVulkanDeviceKHR:                 ProcCreateVulkanDeviceKHR
GetVulkanGraphicsDevice2KHR:           ProcGetVulkanGraphicsDevice2KHR
GetVulkanGraphicsRequirements2KHR:     ProcGetVulkanGraphicsRequirements2KHR

load_proc_addresses_custom :: proc(set_proc_address: SetProcAddressType) {
    set_proc_address(&GetVulkanInstanceExtensionsKHR, "xrGetVulkanInstanceExtensionsKHR")
    set_proc_address(&GetVulkanDeviceExtensionsKHR, "xrGetVulkanDeviceExtensionsKHR")
    set_proc_address(&GetVulkanGraphicsDeviceKHR, "xrGetVulkanGraphicsDeviceKHR")
    set_proc_address(&GetVulkanGraphicsRequirementsKHR, "xrGetVulkanGraphicsRequirementsKHR")
    set_proc_address(&CreateVulkanInstanceKHR, "xrCreateVulkanInstanceKHR")
    set_proc_address(&CreateVulkanDeviceKHR, "xrCreateVulkanDeviceKHR")
    set_proc_address(&GetVulkanGraphicsDevice2KHR, "xrGetVulkanGraphicsDevice2KHR")
    set_proc_address(&GetVulkanGraphicsRequirements2KHR, "xrGetVulkanGraphicsRequirements2KHR")
}

load_proc_addresses :: proc(instance: Instance) {
    _ = GetInstanceProcAddr(instance, "xrGetVulkanInstanceExtensionsKHR", auto_cast &GetVulkanInstanceExtensionsKHR)
    _ = GetInstanceProcAddr(instance, "xrGetVulkanDeviceExtensionsKHR", auto_cast &GetVulkanDeviceExtensionsKHR)
    _ = GetInstanceProcAddr(instance, "xrGetVulkanGraphicsDeviceKHR", auto_cast &GetVulkanGraphicsDeviceKHR)
    _ = GetInstanceProcAddr(instance, "xrGetVulkanGraphicsRequirementsKHR", auto_cast &GetVulkanGraphicsRequirementsKHR)
    _ = GetInstanceProcAddr(instance, "xrCreateVulkanInstanceKHR", auto_cast &CreateVulkanInstanceKHR)
    _ = GetInstanceProcAddr(instance, "xrCreateVulkanDeviceKHR", auto_cast &CreateVulkanDeviceKHR)
    _ = GetInstanceProcAddr(instance, "xrGetVulkanGraphicsDevice2KHR", auto_cast &GetVulkanGraphicsDevice2KHR)
    _ = GetInstanceProcAddr(instance, "xrGetVulkanGraphicsRequirements2KHR", auto_cast &GetVulkanGraphicsRequirements2KHR)
}

load_proc_addresses :: proc {
    load_proc_addresses,
    load_proc_addresses_custom,
}
