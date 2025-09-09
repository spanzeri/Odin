//
// OpenXR wrapper generated from: https://raw.githubusercontent.com/KhronosGroup/OpenXR-SDK/refs/heads/main/include/openxr/openxr.h
//
package vendor_openxr

Result :: enum i32 {
    SUCCESS                                                      = 0,
    TIMEOUT_EXPIRED                                              = 1,
    SESSION_LOSS_PENDING                                         = 3,
    EVENT_UNAVAILABLE                                            = 4,
    SPACE_BOUNDS_UNAVAILABLE                                     = 7,
    SESSION_NOT_FOCUSED                                          = 8,
    FRAME_DISCARDED                                              = 9,
    ERROR_VALIDATION_FAILURE                                     = -1,
    ERROR_RUNTIME_FAILURE                                        = -2,
    ERROR_OUT_OF_MEMORY                                          = -3,
    ERROR_API_VERSION_UNSUPPORTED                                = -4,
    ERROR_INITIALIZATION_FAILED                                  = -6,
    ERROR_FUNCTION_UNSUPPORTED                                   = -7,
    ERROR_FEATURE_UNSUPPORTED                                    = -8,
    ERROR_EXTENSION_NOT_PRESENT                                  = -9,
    ERROR_LIMIT_REACHED                                          = -10,
    ERROR_SIZE_INSUFFICIENT                                      = -11,
    ERROR_HANDLE_INVALID                                         = -12,
    ERROR_INSTANCE_LOST                                          = -13,
    ERROR_SESSION_RUNNING                                        = -14,
    ERROR_SESSION_NOT_RUNNING                                    = -16,
    ERROR_SESSION_LOST                                           = -17,
    ERROR_SYSTEM_INVALID                                         = -18,
    ERROR_PATH_INVALID                                           = -19,
    ERROR_PATH_COUNT_EXCEEDED                                    = -20,
    ERROR_PATH_FORMAT_INVALID                                    = -21,
    ERROR_PATH_UNSUPPORTED                                       = -22,
    ERROR_LAYER_INVALID                                          = -23,
    ERROR_LAYER_LIMIT_EXCEEDED                                   = -24,
    ERROR_SWAPCHAIN_RECT_INVALID                                 = -25,
    ERROR_SWAPCHAIN_FORMAT_UNSUPPORTED                           = -26,
    ERROR_ACTION_TYPE_MISMATCH                                   = -27,
    ERROR_SESSION_NOT_READY                                      = -28,
    ERROR_SESSION_NOT_STOPPING                                   = -29,
    ERROR_TIME_INVALID                                           = -30,
    ERROR_REFERENCE_SPACE_UNSUPPORTED                            = -31,
    ERROR_FILE_ACCESS_ERROR                                      = -32,
    ERROR_FILE_CONTENTS_INVALID                                  = -33,
    ERROR_FORM_FACTOR_UNSUPPORTED                                = -34,
    ERROR_FORM_FACTOR_UNAVAILABLE                                = -35,
    ERROR_API_LAYER_NOT_PRESENT                                  = -36,
    ERROR_CALL_ORDER_INVALID                                     = -37,
    ERROR_GRAPHICS_DEVICE_INVALID                                = -38,
    ERROR_POSE_INVALID                                           = -39,
    ERROR_INDEX_OUT_OF_RANGE                                     = -40,
    ERROR_VIEW_CONFIGURATION_TYPE_UNSUPPORTED                    = -41,
    ERROR_ENVIRONMENT_BLEND_MODE_UNSUPPORTED                     = -42,
    ERROR_NAME_DUPLICATED                                        = -44,
    ERROR_NAME_INVALID                                           = -45,
    ERROR_ACTIONSET_NOT_ATTACHED                                 = -46,
    ERROR_ACTIONSETS_ALREADY_ATTACHED                            = -47,
    ERROR_LOCALIZED_NAME_DUPLICATED                              = -48,
    ERROR_LOCALIZED_NAME_INVALID                                 = -49,
    ERROR_GRAPHICS_REQUIREMENTS_CALL_MISSING                     = -50,
    ERROR_RUNTIME_UNAVAILABLE                                    = -51,
    ERROR_EXTENSION_DEPENDENCY_NOT_ENABLED                       = -1000710001,
    ERROR_PERMISSION_INSUFFICIENT                                = -1000710000,
    ERROR_ANDROID_THREAD_SETTINGS_ID_INVALID_KHR                 = -1000003000,
    ERROR_ANDROID_THREAD_SETTINGS_FAILURE_KHR                    = -1000003001,
    ERROR_CREATE_SPATIAL_ANCHOR_FAILED_MSFT                      = -1000039001,
    ERROR_SECONDARY_VIEW_CONFIGURATION_TYPE_NOT_ENABLED_MSFT     = -1000053000,
    ERROR_CONTROLLER_MODEL_KEY_INVALID_MSFT                      = -1000055000,
    ERROR_REPROJECTION_MODE_UNSUPPORTED_MSFT                     = -1000066000,
    ERROR_COMPUTE_NEW_SCENE_NOT_COMPLETED_MSFT                   = -1000097000,
    ERROR_SCENE_COMPONENT_ID_INVALID_MSFT                        = -1000097001,
    ERROR_SCENE_COMPONENT_TYPE_MISMATCH_MSFT                     = -1000097002,
    ERROR_SCENE_MESH_BUFFER_ID_INVALID_MSFT                      = -1000097003,
    ERROR_SCENE_COMPUTE_FEATURE_INCOMPATIBLE_MSFT                = -1000097004,
    ERROR_SCENE_COMPUTE_CONSISTENCY_MISMATCH_MSFT                = -1000097005,
    ERROR_DISPLAY_REFRESH_RATE_UNSUPPORTED_FB                    = -1000101000,
    ERROR_COLOR_SPACE_UNSUPPORTED_FB                             = -1000108000,
    ERROR_SPACE_COMPONENT_NOT_SUPPORTED_FB                       = -1000113000,
    ERROR_SPACE_COMPONENT_NOT_ENABLED_FB                         = -1000113001,
    ERROR_SPACE_COMPONENT_STATUS_PENDING_FB                      = -1000113002,
    ERROR_SPACE_COMPONENT_STATUS_ALREADY_SET_FB                  = -1000113003,
    ERROR_UNEXPECTED_STATE_PASSTHROUGH_FB                        = -1000118000,
    ERROR_FEATURE_ALREADY_CREATED_PASSTHROUGH_FB                 = -1000118001,
    ERROR_FEATURE_REQUIRED_PASSTHROUGH_FB                        = -1000118002,
    ERROR_NOT_PERMITTED_PASSTHROUGH_FB                           = -1000118003,
    ERROR_INSUFFICIENT_RESOURCES_PASSTHROUGH_FB                  = -1000118004,
    ERROR_UNKNOWN_PASSTHROUGH_FB                                 = -1000118050,
    ERROR_RENDER_MODEL_KEY_INVALID_FB                            = -1000119000,
    RENDER_MODEL_UNAVAILABLE_FB                                  = 1000119020,
    ERROR_MARKER_NOT_TRACKED_VARJO                               = -1000124000,
    ERROR_MARKER_ID_INVALID_VARJO                                = -1000124001,
    ERROR_MARKER_DETECTOR_PERMISSION_DENIED_ML                   = -1000138000,
    ERROR_MARKER_DETECTOR_LOCATE_FAILED_ML                       = -1000138001,
    ERROR_MARKER_DETECTOR_INVALID_DATA_QUERY_ML                  = -1000138002,
    ERROR_MARKER_DETECTOR_INVALID_CREATE_INFO_ML                 = -1000138003,
    ERROR_MARKER_INVALID_ML                                      = -1000138004,
    ERROR_LOCALIZATION_MAP_INCOMPATIBLE_ML                       = -1000139000,
    ERROR_LOCALIZATION_MAP_UNAVAILABLE_ML                        = -1000139001,
    ERROR_LOCALIZATION_MAP_FAIL_ML                               = -1000139002,
    ERROR_LOCALIZATION_MAP_IMPORT_EXPORT_PERMISSION_DENIED_ML    = -1000139003,
    ERROR_LOCALIZATION_MAP_PERMISSION_DENIED_ML                  = -1000139004,
    ERROR_LOCALIZATION_MAP_ALREADY_EXISTS_ML                     = -1000139005,
    ERROR_LOCALIZATION_MAP_CANNOT_EXPORT_CLOUD_MAP_ML            = -1000139006,
    ERROR_SPATIAL_ANCHORS_PERMISSION_DENIED_ML                   = -1000140000,
    ERROR_SPATIAL_ANCHORS_NOT_LOCALIZED_ML                       = -1000140001,
    ERROR_SPATIAL_ANCHORS_OUT_OF_MAP_BOUNDS_ML                   = -1000140002,
    ERROR_SPATIAL_ANCHORS_SPACE_NOT_LOCATABLE_ML                 = -1000140003,
    ERROR_SPATIAL_ANCHORS_ANCHOR_NOT_FOUND_ML                    = -1000141000,
    ERROR_SPATIAL_ANCHOR_NAME_NOT_FOUND_MSFT                     = -1000142001,
    ERROR_SPATIAL_ANCHOR_NAME_INVALID_MSFT                       = -1000142002,
    SCENE_MARKER_DATA_NOT_STRING_MSFT                            = 1000147000,
    ERROR_SPACE_MAPPING_INSUFFICIENT_FB                          = -1000169000,
    ERROR_SPACE_LOCALIZATION_FAILED_FB                           = -1000169001,
    ERROR_SPACE_NETWORK_TIMEOUT_FB                               = -1000169002,
    ERROR_SPACE_NETWORK_REQUEST_FAILED_FB                        = -1000169003,
    ERROR_SPACE_CLOUD_STORAGE_DISABLED_FB                        = -1000169004,
    ERROR_SPACE_INSUFFICIENT_RESOURCES_META                      = -1000259000,
    ERROR_SPACE_STORAGE_AT_CAPACITY_META                         = -1000259001,
    ERROR_SPACE_INSUFFICIENT_VIEW_META                           = -1000259002,
    ERROR_SPACE_PERMISSION_INSUFFICIENT_META                     = -1000259003,
    ERROR_SPACE_RATE_LIMITED_META                                = -1000259004,
    ERROR_SPACE_TOO_DARK_META                                    = -1000259005,
    ERROR_SPACE_TOO_BRIGHT_META                                  = -1000259006,
    ERROR_PASSTHROUGH_COLOR_LUT_BUFFER_SIZE_MISMATCH_META        = -1000266000,
    ENVIRONMENT_DEPTH_NOT_AVAILABLE_META                         = 1000291000,
    ERROR_RENDER_MODEL_ID_INVALID_EXT                            = -1000300000,
    ERROR_RENDER_MODEL_ASSET_UNAVAILABLE_EXT                     = -1000300001,
    ERROR_RENDER_MODEL_GLTF_EXTENSION_REQUIRED_EXT               = -1000300002,
    ERROR_NOT_INTERACTION_RENDER_MODEL_EXT                       = -1000301000,
    ERROR_HINT_ALREADY_SET_QCOM                                  = -1000306000,
    ERROR_NOT_AN_ANCHOR_HTC                                      = -1000319000,
    ERROR_SPATIAL_ENTITY_ID_INVALID_BD                           = -1000389000,
    ERROR_SPATIAL_SENSING_SERVICE_UNAVAILABLE_BD                 = -1000389001,
    ERROR_ANCHOR_NOT_SUPPORTED_FOR_ENTITY_BD                     = -1000389002,
    ERROR_SPATIAL_ANCHOR_NOT_FOUND_BD                            = -1000390000,
    ERROR_SPATIAL_ANCHOR_SHARING_NETWORK_TIMEOUT_BD              = -1000391000,
    ERROR_SPATIAL_ANCHOR_SHARING_AUTHENTICATION_FAILURE_BD       = -1000391001,
    ERROR_SPATIAL_ANCHOR_SHARING_NETWORK_FAILURE_BD              = -1000391002,
    ERROR_SPATIAL_ANCHOR_SHARING_LOCALIZATION_FAIL_BD            = -1000391003,
    ERROR_SPATIAL_ANCHOR_SHARING_MAP_INSUFFICIENT_BD             = -1000391004,
    ERROR_SCENE_CAPTURE_FAILURE_BD                               = -1000392000,
    ERROR_SPACE_NOT_LOCATABLE_EXT                                = -1000429000,
    ERROR_PLANE_DETECTION_PERMISSION_DENIED_EXT                  = -1000429001,
    ERROR_MISMATCHING_TRACKABLE_TYPE_ANDROID                     = -1000455000,
    ERROR_TRACKABLE_TYPE_NOT_SUPPORTED_ANDROID                   = -1000455001,
    ERROR_ANCHOR_ID_NOT_FOUND_ANDROID                            = -1000457000,
    ERROR_ANCHOR_ALREADY_PERSISTED_ANDROID                       = -1000457001,
    ERROR_ANCHOR_NOT_TRACKING_ANDROID                            = -1000457002,
    ERROR_PERSISTED_DATA_NOT_READY_ANDROID                       = -1000457003,
    ERROR_FUTURE_PENDING_EXT                                     = -1000469001,
    ERROR_FUTURE_INVALID_EXT                                     = -1000469002,
    ERROR_SYSTEM_NOTIFICATION_PERMISSION_DENIED_ML               = -1000473000,
    ERROR_SYSTEM_NOTIFICATION_INCOMPATIBLE_SKU_ML                = -1000473001,
    ERROR_WORLD_MESH_DETECTOR_PERMISSION_DENIED_ML               = -1000474000,
    ERROR_WORLD_MESH_DETECTOR_SPACE_NOT_LOCATABLE_ML             = -1000474001,
    ERROR_FACIAL_EXPRESSION_PERMISSION_DENIED_ML                 = 1000482000,
    ERROR_COLOCATION_DISCOVERY_NETWORK_FAILED_META               = -1000571001,
    ERROR_COLOCATION_DISCOVERY_NO_DISCOVERY_METHOD_META          = -1000571002,
    COLOCATION_DISCOVERY_ALREADY_ADVERTISING_META                = 1000571003,
    COLOCATION_DISCOVERY_ALREADY_DISCOVERING_META                = 1000571004,
    ERROR_SPACE_GROUP_NOT_FOUND_META                             = -1000572002,
    ERROR_ANCHOR_NOT_OWNED_BY_CALLER_ANDROID                     = -1000701000,
    ERROR_SPATIAL_CAPABILITY_UNSUPPORTED_EXT                     = -1000740001,
    ERROR_SPATIAL_ENTITY_ID_INVALID_EXT                          = -1000740002,
    ERROR_SPATIAL_BUFFER_ID_INVALID_EXT                          = -1000740003,
    ERROR_SPATIAL_COMPONENT_UNSUPPORTED_FOR_CAPABILITY_EXT       = -1000740004,
    ERROR_SPATIAL_CAPABILITY_CONFIGURATION_INVALID_EXT           = -1000740005,
    ERROR_SPATIAL_COMPONENT_NOT_ENABLED_EXT                      = -1000740006,
    ERROR_SPATIAL_PERSISTENCE_SCOPE_UNSUPPORTED_EXT              = -1000763001,
    ERROR_SPATIAL_PERSISTENCE_SCOPE_INCOMPATIBLE_EXT             = -1000781001,
    ERROR_EXTENSION_DEPENDENCY_NOT_ENABLED_KHR                   = ERROR_EXTENSION_DEPENDENCY_NOT_ENABLED,
    ERROR_PERMISSION_INSUFFICIENT_KHR                            = ERROR_PERMISSION_INSUFFICIENT,
}

StructureType :: enum i32 {
    UNKNOWN                                                              = 0,
    API_LAYER_PROPERTIES                                                 = 1,
    EXTENSION_PROPERTIES                                                 = 2,
    INSTANCE_CREATE_INFO                                                 = 3,
    SYSTEM_GET_INFO                                                      = 4,
    SYSTEM_PROPERTIES                                                    = 5,
    VIEW_LOCATE_INFO                                                     = 6,
    VIEW                                                                 = 7,
    SESSION_CREATE_INFO                                                  = 8,
    SWAPCHAIN_CREATE_INFO                                                = 9,
    SESSION_BEGIN_INFO                                                   = 10,
    VIEW_STATE                                                           = 11,
    FRAME_END_INFO                                                       = 12,
    HAPTIC_VIBRATION                                                     = 13,
    EVENT_DATA_BUFFER                                                    = 16,
    EVENT_DATA_INSTANCE_LOSS_PENDING                                     = 17,
    EVENT_DATA_SESSION_STATE_CHANGED                                     = 18,
    ACTION_STATE_BOOLEAN                                                 = 23,
    ACTION_STATE_FLOAT                                                   = 24,
    ACTION_STATE_VECTOR2F                                                = 25,
    ACTION_STATE_POSE                                                    = 27,
    ACTION_SET_CREATE_INFO                                               = 28,
    ACTION_CREATE_INFO                                                   = 29,
    INSTANCE_PROPERTIES                                                  = 32,
    FRAME_WAIT_INFO                                                      = 33,
    COMPOSITION_LAYER_PROJECTION                                         = 35,
    COMPOSITION_LAYER_QUAD                                               = 36,
    REFERENCE_SPACE_CREATE_INFO                                          = 37,
    ACTION_SPACE_CREATE_INFO                                             = 38,
    EVENT_DATA_REFERENCE_SPACE_CHANGE_PENDING                            = 40,
    VIEW_CONFIGURATION_VIEW                                              = 41,
    SPACE_LOCATION                                                       = 42,
    SPACE_VELOCITY                                                       = 43,
    FRAME_STATE                                                          = 44,
    VIEW_CONFIGURATION_PROPERTIES                                        = 45,
    FRAME_BEGIN_INFO                                                     = 46,
    COMPOSITION_LAYER_PROJECTION_VIEW                                    = 48,
    EVENT_DATA_EVENTS_LOST                                               = 49,
    INTERACTION_PROFILE_SUGGESTED_BINDING                                = 51,
    EVENT_DATA_INTERACTION_PROFILE_CHANGED                               = 52,
    INTERACTION_PROFILE_STATE                                            = 53,
    SWAPCHAIN_IMAGE_ACQUIRE_INFO                                         = 55,
    SWAPCHAIN_IMAGE_WAIT_INFO                                            = 56,
    SWAPCHAIN_IMAGE_RELEASE_INFO                                         = 57,
    ACTION_STATE_GET_INFO                                                = 58,
    HAPTIC_ACTION_INFO                                                   = 59,
    SESSION_ACTION_SETS_ATTACH_INFO                                      = 60,
    ACTIONS_SYNC_INFO                                                    = 61,
    BOUND_SOURCES_FOR_ACTION_ENUMERATE_INFO                              = 62,
    INPUT_SOURCE_LOCALIZED_NAME_GET_INFO                                 = 63,
    SPACES_LOCATE_INFO                                                   = 1000471000,
    SPACE_LOCATIONS                                                      = 1000471001,
    SPACE_VELOCITIES                                                     = 1000471002,
    COMPOSITION_LAYER_CUBE_KHR                                           = 1000006000,
    INSTANCE_CREATE_INFO_ANDROID_KHR                                     = 1000008000,
    COMPOSITION_LAYER_DEPTH_INFO_KHR                                     = 1000010000,
    VULKAN_SWAPCHAIN_FORMAT_LIST_CREATE_INFO_KHR                         = 1000014000,
    EVENT_DATA_PERF_SETTINGS_EXT                                         = 1000015000,
    COMPOSITION_LAYER_CYLINDER_KHR                                       = 1000017000,
    COMPOSITION_LAYER_EQUIRECT_KHR                                       = 1000018000,
    DEBUG_UTILS_OBJECT_NAME_INFO_EXT                                     = 1000019000,
    DEBUG_UTILS_MESSENGER_CALLBACK_DATA_EXT                              = 1000019001,
    DEBUG_UTILS_MESSENGER_CREATE_INFO_EXT                                = 1000019002,
    DEBUG_UTILS_LABEL_EXT                                                = 1000019003,
    GRAPHICS_BINDING_OPENGL_WIN32_KHR                                    = 1000023000,
    GRAPHICS_BINDING_OPENGL_XLIB_KHR                                     = 1000023001,
    GRAPHICS_BINDING_OPENGL_XCB_KHR                                      = 1000023002,
    GRAPHICS_BINDING_OPENGL_WAYLAND_KHR                                  = 1000023003,
    SWAPCHAIN_IMAGE_OPENGL_KHR                                           = 1000023004,
    GRAPHICS_REQUIREMENTS_OPENGL_KHR                                     = 1000023005,
    GRAPHICS_BINDING_OPENGL_ES_ANDROID_KHR                               = 1000024001,
    SWAPCHAIN_IMAGE_OPENGL_ES_KHR                                        = 1000024002,
    GRAPHICS_REQUIREMENTS_OPENGL_ES_KHR                                  = 1000024003,
    GRAPHICS_BINDING_VULKAN_KHR                                          = 1000025000,
    SWAPCHAIN_IMAGE_VULKAN_KHR                                           = 1000025001,
    GRAPHICS_REQUIREMENTS_VULKAN_KHR                                     = 1000025002,
    GRAPHICS_BINDING_D3D11_KHR                                           = 1000027000,
    SWAPCHAIN_IMAGE_D3D11_KHR                                            = 1000027001,
    GRAPHICS_REQUIREMENTS_D3D11_KHR                                      = 1000027002,
    GRAPHICS_BINDING_D3D12_KHR                                           = 1000028000,
    SWAPCHAIN_IMAGE_D3D12_KHR                                            = 1000028001,
    GRAPHICS_REQUIREMENTS_D3D12_KHR                                      = 1000028002,
    GRAPHICS_BINDING_METAL_KHR                                           = 1000029000,
    SWAPCHAIN_IMAGE_METAL_KHR                                            = 1000029001,
    GRAPHICS_REQUIREMENTS_METAL_KHR                                      = 1000029002,
    SYSTEM_EYE_GAZE_INTERACTION_PROPERTIES_EXT                           = 1000030000,
    EYE_GAZE_SAMPLE_TIME_EXT                                             = 1000030001,
    VISIBILITY_MASK_KHR                                                  = 1000031000,
    EVENT_DATA_VISIBILITY_MASK_CHANGED_KHR                               = 1000031001,
    SESSION_CREATE_INFO_OVERLAY_EXTX                                     = 1000033000,
    EVENT_DATA_MAIN_SESSION_VISIBILITY_CHANGED_EXTX                      = 1000033003,
    COMPOSITION_LAYER_COLOR_SCALE_BIAS_KHR                               = 1000034000,
    SPATIAL_ANCHOR_CREATE_INFO_MSFT                                      = 1000039000,
    SPATIAL_ANCHOR_SPACE_CREATE_INFO_MSFT                                = 1000039001,
    COMPOSITION_LAYER_IMAGE_LAYOUT_FB                                    = 1000040000,
    COMPOSITION_LAYER_ALPHA_BLEND_FB                                     = 1000041001,
    VIEW_CONFIGURATION_DEPTH_RANGE_EXT                                   = 1000046000,
    GRAPHICS_BINDING_EGL_MNDX                                            = 1000048004,
    SPATIAL_GRAPH_NODE_SPACE_CREATE_INFO_MSFT                            = 1000049000,
    SPATIAL_GRAPH_STATIC_NODE_BINDING_CREATE_INFO_MSFT                   = 1000049001,
    SPATIAL_GRAPH_NODE_BINDING_PROPERTIES_GET_INFO_MSFT                  = 1000049002,
    SPATIAL_GRAPH_NODE_BINDING_PROPERTIES_MSFT                           = 1000049003,
    SYSTEM_HAND_TRACKING_PROPERTIES_EXT                                  = 1000051000,
    HAND_TRACKER_CREATE_INFO_EXT                                         = 1000051001,
    HAND_JOINTS_LOCATE_INFO_EXT                                          = 1000051002,
    HAND_JOINT_LOCATIONS_EXT                                             = 1000051003,
    HAND_JOINT_VELOCITIES_EXT                                            = 1000051004,
    SYSTEM_HAND_TRACKING_MESH_PROPERTIES_MSFT                            = 1000052000,
    HAND_MESH_SPACE_CREATE_INFO_MSFT                                     = 1000052001,
    HAND_MESH_UPDATE_INFO_MSFT                                           = 1000052002,
    HAND_MESH_MSFT                                                       = 1000052003,
    HAND_POSE_INFO_MSFT                                                  = 1000052004,
    SECONDARY_VIEW_CONFIGURATION_SESSION_BEGIN_INFO_MSFT                 = 1000053000,
    SECONDARY_VIEW_CONFIGURATION_STATE_MSFT                              = 1000053001,
    SECONDARY_VIEW_CONFIGURATION_FRAME_STATE_MSFT                        = 1000053002,
    SECONDARY_VIEW_CONFIGURATION_FRAME_END_INFO_MSFT                     = 1000053003,
    SECONDARY_VIEW_CONFIGURATION_LAYER_INFO_MSFT                         = 1000053004,
    SECONDARY_VIEW_CONFIGURATION_SWAPCHAIN_CREATE_INFO_MSFT              = 1000053005,
    CONTROLLER_MODEL_KEY_STATE_MSFT                                      = 1000055000,
    CONTROLLER_MODEL_NODE_PROPERTIES_MSFT                                = 1000055001,
    CONTROLLER_MODEL_PROPERTIES_MSFT                                     = 1000055002,
    CONTROLLER_MODEL_NODE_STATE_MSFT                                     = 1000055003,
    CONTROLLER_MODEL_STATE_MSFT                                          = 1000055004,
    VIEW_CONFIGURATION_VIEW_FOV_EPIC                                     = 1000059000,
    HOLOGRAPHIC_WINDOW_ATTACHMENT_MSFT                                   = 1000063000,
    COMPOSITION_LAYER_REPROJECTION_INFO_MSFT                             = 1000066000,
    COMPOSITION_LAYER_REPROJECTION_PLANE_OVERRIDE_MSFT                   = 1000066001,
    ANDROID_SURFACE_SWAPCHAIN_CREATE_INFO_FB                             = 1000070000,
    COMPOSITION_LAYER_SECURE_CONTENT_FB                                  = 1000072000,
    BODY_TRACKER_CREATE_INFO_FB                                          = 1000076001,
    BODY_JOINTS_LOCATE_INFO_FB                                           = 1000076002,
    SYSTEM_BODY_TRACKING_PROPERTIES_FB                                   = 1000076004,
    BODY_JOINT_LOCATIONS_FB                                              = 1000076005,
    BODY_SKELETON_FB                                                     = 1000076006,
    INTERACTION_PROFILE_DPAD_BINDING_EXT                                 = 1000078000,
    INTERACTION_PROFILE_ANALOG_THRESHOLD_VALVE                           = 1000079000,
    HAND_JOINTS_MOTION_RANGE_INFO_EXT                                    = 1000080000,
    LOADER_INIT_INFO_ANDROID_KHR                                         = 1000089000,
    VULKAN_INSTANCE_CREATE_INFO_KHR                                      = 1000090000,
    VULKAN_DEVICE_CREATE_INFO_KHR                                        = 1000090001,
    VULKAN_GRAPHICS_DEVICE_GET_INFO_KHR                                  = 1000090003,
    COMPOSITION_LAYER_EQUIRECT2_KHR                                      = 1000091000,
    SCENE_OBSERVER_CREATE_INFO_MSFT                                      = 1000097000,
    SCENE_CREATE_INFO_MSFT                                               = 1000097001,
    NEW_SCENE_COMPUTE_INFO_MSFT                                          = 1000097002,
    VISUAL_MESH_COMPUTE_LOD_INFO_MSFT                                    = 1000097003,
    SCENE_COMPONENTS_MSFT                                                = 1000097004,
    SCENE_COMPONENTS_GET_INFO_MSFT                                       = 1000097005,
    SCENE_COMPONENT_LOCATIONS_MSFT                                       = 1000097006,
    SCENE_COMPONENTS_LOCATE_INFO_MSFT                                    = 1000097007,
    SCENE_OBJECTS_MSFT                                                   = 1000097008,
    SCENE_COMPONENT_PARENT_FILTER_INFO_MSFT                              = 1000097009,
    SCENE_OBJECT_TYPES_FILTER_INFO_MSFT                                  = 1000097010,
    SCENE_PLANES_MSFT                                                    = 1000097011,
    SCENE_PLANE_ALIGNMENT_FILTER_INFO_MSFT                               = 1000097012,
    SCENE_MESHES_MSFT                                                    = 1000097013,
    SCENE_MESH_BUFFERS_GET_INFO_MSFT                                     = 1000097014,
    SCENE_MESH_BUFFERS_MSFT                                              = 1000097015,
    SCENE_MESH_VERTEX_BUFFER_MSFT                                        = 1000097016,
    SCENE_MESH_INDICES_UINT32_MSFT                                       = 1000097017,
    SCENE_MESH_INDICES_UINT16_MSFT                                       = 1000097018,
    SERIALIZED_SCENE_FRAGMENT_DATA_GET_INFO_MSFT                         = 1000098000,
    SCENE_DESERIALIZE_INFO_MSFT                                          = 1000098001,
    EVENT_DATA_DISPLAY_REFRESH_RATE_CHANGED_FB                           = 1000101000,
    VIVE_TRACKER_PATHS_HTCX                                              = 1000103000,
    EVENT_DATA_VIVE_TRACKER_CONNECTED_HTCX                               = 1000103001,
    SYSTEM_FACIAL_TRACKING_PROPERTIES_HTC                                = 1000104000,
    FACIAL_TRACKER_CREATE_INFO_HTC                                       = 1000104001,
    FACIAL_EXPRESSIONS_HTC                                               = 1000104002,
    SYSTEM_COLOR_SPACE_PROPERTIES_FB                                     = 1000108000,
    HAND_TRACKING_MESH_FB                                                = 1000110001,
    HAND_TRACKING_SCALE_FB                                               = 1000110003,
    HAND_TRACKING_AIM_STATE_FB                                           = 1000111001,
    HAND_TRACKING_CAPSULES_STATE_FB                                      = 1000112000,
    SYSTEM_SPATIAL_ENTITY_PROPERTIES_FB                                  = 1000113004,
    SPATIAL_ANCHOR_CREATE_INFO_FB                                        = 1000113003,
    SPACE_COMPONENT_STATUS_SET_INFO_FB                                   = 1000113007,
    SPACE_COMPONENT_STATUS_FB                                            = 1000113001,
    EVENT_DATA_SPATIAL_ANCHOR_CREATE_COMPLETE_FB                         = 1000113005,
    EVENT_DATA_SPACE_SET_STATUS_COMPLETE_FB                              = 1000113006,
    FOVEATION_PROFILE_CREATE_INFO_FB                                     = 1000114000,
    SWAPCHAIN_CREATE_INFO_FOVEATION_FB                                   = 1000114001,
    SWAPCHAIN_STATE_FOVEATION_FB                                         = 1000114002,
    FOVEATION_LEVEL_PROFILE_CREATE_INFO_FB                               = 1000115000,
    KEYBOARD_SPACE_CREATE_INFO_FB                                        = 1000116009,
    KEYBOARD_TRACKING_QUERY_FB                                           = 1000116004,
    SYSTEM_KEYBOARD_TRACKING_PROPERTIES_FB                               = 1000116002,
    TRIANGLE_MESH_CREATE_INFO_FB                                         = 1000117001,
    SYSTEM_PASSTHROUGH_PROPERTIES_FB                                     = 1000118000,
    PASSTHROUGH_CREATE_INFO_FB                                           = 1000118001,
    PASSTHROUGH_LAYER_CREATE_INFO_FB                                     = 1000118002,
    COMPOSITION_LAYER_PASSTHROUGH_FB                                     = 1000118003,
    GEOMETRY_INSTANCE_CREATE_INFO_FB                                     = 1000118004,
    GEOMETRY_INSTANCE_TRANSFORM_FB                                       = 1000118005,
    SYSTEM_PASSTHROUGH_PROPERTIES2_FB                                    = 1000118006,
    PASSTHROUGH_STYLE_FB                                                 = 1000118020,
    PASSTHROUGH_COLOR_MAP_MONO_TO_RGBA_FB                                = 1000118021,
    PASSTHROUGH_COLOR_MAP_MONO_TO_MONO_FB                                = 1000118022,
    PASSTHROUGH_BRIGHTNESS_CONTRAST_SATURATION_FB                        = 1000118023,
    EVENT_DATA_PASSTHROUGH_STATE_CHANGED_FB                              = 1000118030,
    RENDER_MODEL_PATH_INFO_FB                                            = 1000119000,
    RENDER_MODEL_PROPERTIES_FB                                           = 1000119001,
    RENDER_MODEL_BUFFER_FB                                               = 1000119002,
    RENDER_MODEL_LOAD_INFO_FB                                            = 1000119003,
    SYSTEM_RENDER_MODEL_PROPERTIES_FB                                    = 1000119004,
    RENDER_MODEL_CAPABILITIES_REQUEST_FB                                 = 1000119005,
    BINDING_MODIFICATIONS_KHR                                            = 1000120000,
    VIEW_LOCATE_FOVEATED_RENDERING_VARJO                                 = 1000121000,
    FOVEATED_VIEW_CONFIGURATION_VIEW_VARJO                               = 1000121001,
    SYSTEM_FOVEATED_RENDERING_PROPERTIES_VARJO                           = 1000121002,
    COMPOSITION_LAYER_DEPTH_TEST_VARJO                                   = 1000122000,
    SYSTEM_MARKER_TRACKING_PROPERTIES_VARJO                              = 1000124000,
    EVENT_DATA_MARKER_TRACKING_UPDATE_VARJO                              = 1000124001,
    MARKER_SPACE_CREATE_INFO_VARJO                                       = 1000124002,
    FRAME_END_INFO_ML                                                    = 1000135000,
    GLOBAL_DIMMER_FRAME_END_INFO_ML                                      = 1000136000,
    COORDINATE_SPACE_CREATE_INFO_ML                                      = 1000137000,
    SYSTEM_MARKER_UNDERSTANDING_PROPERTIES_ML                            = 1000138000,
    MARKER_DETECTOR_CREATE_INFO_ML                                       = 1000138001,
    MARKER_DETECTOR_ARUCO_INFO_ML                                        = 1000138002,
    MARKER_DETECTOR_SIZE_INFO_ML                                         = 1000138003,
    MARKER_DETECTOR_APRIL_TAG_INFO_ML                                    = 1000138004,
    MARKER_DETECTOR_CUSTOM_PROFILE_INFO_ML                               = 1000138005,
    MARKER_DETECTOR_SNAPSHOT_INFO_ML                                     = 1000138006,
    MARKER_DETECTOR_STATE_ML                                             = 1000138007,
    MARKER_SPACE_CREATE_INFO_ML                                          = 1000138008,
    LOCALIZATION_MAP_ML                                                  = 1000139000,
    EVENT_DATA_LOCALIZATION_CHANGED_ML                                   = 1000139001,
    MAP_LOCALIZATION_REQUEST_INFO_ML                                     = 1000139002,
    LOCALIZATION_MAP_IMPORT_INFO_ML                                      = 1000139003,
    LOCALIZATION_ENABLE_EVENTS_INFO_ML                                   = 1000139004,
    SPATIAL_ANCHORS_CREATE_INFO_FROM_POSE_ML                             = 1000140000,
    CREATE_SPATIAL_ANCHORS_COMPLETION_ML                                 = 1000140001,
    SPATIAL_ANCHOR_STATE_ML                                              = 1000140002,
    SPATIAL_ANCHORS_CREATE_STORAGE_INFO_ML                               = 1000141000,
    SPATIAL_ANCHORS_QUERY_INFO_RADIUS_ML                                 = 1000141001,
    SPATIAL_ANCHORS_QUERY_COMPLETION_ML                                  = 1000141002,
    SPATIAL_ANCHORS_CREATE_INFO_FROM_UUIDS_ML                            = 1000141003,
    SPATIAL_ANCHORS_PUBLISH_INFO_ML                                      = 1000141004,
    SPATIAL_ANCHORS_PUBLISH_COMPLETION_ML                                = 1000141005,
    SPATIAL_ANCHORS_DELETE_INFO_ML                                       = 1000141006,
    SPATIAL_ANCHORS_DELETE_COMPLETION_ML                                 = 1000141007,
    SPATIAL_ANCHORS_UPDATE_EXPIRATION_INFO_ML                            = 1000141008,
    SPATIAL_ANCHORS_UPDATE_EXPIRATION_COMPLETION_ML                      = 1000141009,
    SPATIAL_ANCHORS_PUBLISH_COMPLETION_DETAILS_ML                        = 1000141010,
    SPATIAL_ANCHORS_DELETE_COMPLETION_DETAILS_ML                         = 1000141011,
    SPATIAL_ANCHORS_UPDATE_EXPIRATION_COMPLETION_DETAILS_ML              = 1000141012,
    EVENT_DATA_HEADSET_FIT_CHANGED_ML                                    = 1000472000,
    EVENT_DATA_EYE_CALIBRATION_CHANGED_ML                                = 1000472001,
    USER_CALIBRATION_ENABLE_EVENTS_INFO_ML                               = 1000472002,
    SPATIAL_ANCHOR_PERSISTENCE_INFO_MSFT                                 = 1000142000,
    SPATIAL_ANCHOR_FROM_PERSISTED_ANCHOR_CREATE_INFO_MSFT                = 1000142001,
    SCENE_MARKERS_MSFT                                                   = 1000147000,
    SCENE_MARKER_FILTER_MSFT                                             = 1000147001,
    SCENE_MARKER_QR_CODES_MSFT                                           = 1000147002,
    SPACE_QUERY_INFO_FB                                                  = 1000156001,
    SPACE_QUERY_RESULTS_FB                                               = 1000156002,
    SPACE_STORAGE_LOCATION_FILTER_INFO_FB                                = 1000156003,
    SPACE_UUID_FILTER_INFO_FB                                            = 1000156054,
    SPACE_COMPONENT_FILTER_INFO_FB                                       = 1000156052,
    EVENT_DATA_SPACE_QUERY_RESULTS_AVAILABLE_FB                          = 1000156103,
    EVENT_DATA_SPACE_QUERY_COMPLETE_FB                                   = 1000156104,
    SPACE_SAVE_INFO_FB                                                   = 1000158000,
    SPACE_ERASE_INFO_FB                                                  = 1000158001,
    EVENT_DATA_SPACE_SAVE_COMPLETE_FB                                    = 1000158106,
    EVENT_DATA_SPACE_ERASE_COMPLETE_FB                                   = 1000158107,
    SWAPCHAIN_IMAGE_FOVEATION_VULKAN_FB                                  = 1000160000,
    SWAPCHAIN_STATE_ANDROID_SURFACE_DIMENSIONS_FB                        = 1000161000,
    SWAPCHAIN_STATE_SAMPLER_OPENGL_ES_FB                                 = 1000162000,
    SWAPCHAIN_STATE_SAMPLER_VULKAN_FB                                    = 1000163000,
    SPACE_SHARE_INFO_FB                                                  = 1000169001,
    EVENT_DATA_SPACE_SHARE_COMPLETE_FB                                   = 1000169002,
    COMPOSITION_LAYER_SPACE_WARP_INFO_FB                                 = 1000171000,
    SYSTEM_SPACE_WARP_PROPERTIES_FB                                      = 1000171001,
    HAPTIC_AMPLITUDE_ENVELOPE_VIBRATION_FB                               = 1000173001,
    SEMANTIC_LABELS_FB                                                   = 1000175000,
    ROOM_LAYOUT_FB                                                       = 1000175001,
    BOUNDARY_2D_FB                                                       = 1000175002,
    SEMANTIC_LABELS_SUPPORT_INFO_FB                                      = 1000175010,
    DIGITAL_LENS_CONTROL_ALMALENCE                                       = 1000196000,
    EVENT_DATA_SCENE_CAPTURE_COMPLETE_FB                                 = 1000198001,
    SCENE_CAPTURE_REQUEST_INFO_FB                                        = 1000198050,
    SPACE_CONTAINER_FB                                                   = 1000199000,
    FOVEATION_EYE_TRACKED_PROFILE_CREATE_INFO_META                       = 1000200000,
    FOVEATION_EYE_TRACKED_STATE_META                                     = 1000200001,
    SYSTEM_FOVEATION_EYE_TRACKED_PROPERTIES_META                         = 1000200002,
    SYSTEM_FACE_TRACKING_PROPERTIES_FB                                   = 1000201004,
    FACE_TRACKER_CREATE_INFO_FB                                          = 1000201005,
    FACE_EXPRESSION_INFO_FB                                              = 1000201002,
    FACE_EXPRESSION_WEIGHTS_FB                                           = 1000201006,
    EYE_TRACKER_CREATE_INFO_FB                                           = 1000202001,
    EYE_GAZES_INFO_FB                                                    = 1000202002,
    EYE_GAZES_FB                                                         = 1000202003,
    SYSTEM_EYE_TRACKING_PROPERTIES_FB                                    = 1000202004,
    PASSTHROUGH_KEYBOARD_HANDS_INTENSITY_FB                              = 1000203002,
    COMPOSITION_LAYER_SETTINGS_FB                                        = 1000204000,
    HAPTIC_PCM_VIBRATION_FB                                              = 1000209001,
    DEVICE_PCM_SAMPLE_RATE_STATE_FB                                      = 1000209002,
    FRAME_SYNTHESIS_INFO_EXT                                             = 1000211000,
    FRAME_SYNTHESIS_CONFIG_VIEW_EXT                                      = 1000211001,
    COMPOSITION_LAYER_DEPTH_TEST_FB                                      = 1000212000,
    LOCAL_DIMMING_FRAME_END_INFO_META                                    = 1000216000,
    PASSTHROUGH_PREFERENCES_META                                         = 1000217000,
    SYSTEM_VIRTUAL_KEYBOARD_PROPERTIES_META                              = 1000219001,
    VIRTUAL_KEYBOARD_CREATE_INFO_META                                    = 1000219002,
    VIRTUAL_KEYBOARD_SPACE_CREATE_INFO_META                              = 1000219003,
    VIRTUAL_KEYBOARD_LOCATION_INFO_META                                  = 1000219004,
    VIRTUAL_KEYBOARD_MODEL_VISIBILITY_SET_INFO_META                      = 1000219005,
    VIRTUAL_KEYBOARD_ANIMATION_STATE_META                                = 1000219006,
    VIRTUAL_KEYBOARD_MODEL_ANIMATION_STATES_META                         = 1000219007,
    VIRTUAL_KEYBOARD_TEXTURE_DATA_META                                   = 1000219009,
    VIRTUAL_KEYBOARD_INPUT_INFO_META                                     = 1000219010,
    VIRTUAL_KEYBOARD_TEXT_CONTEXT_CHANGE_INFO_META                       = 1000219011,
    EVENT_DATA_VIRTUAL_KEYBOARD_COMMIT_TEXT_META                         = 1000219014,
    EVENT_DATA_VIRTUAL_KEYBOARD_BACKSPACE_META                           = 1000219015,
    EVENT_DATA_VIRTUAL_KEYBOARD_ENTER_META                               = 1000219016,
    EVENT_DATA_VIRTUAL_KEYBOARD_SHOWN_META                               = 1000219017,
    EVENT_DATA_VIRTUAL_KEYBOARD_HIDDEN_META                              = 1000219018,
    EXTERNAL_CAMERA_OCULUS                                               = 1000226000,
    VULKAN_SWAPCHAIN_CREATE_INFO_META                                    = 1000227000,
    PERFORMANCE_METRICS_STATE_META                                       = 1000232001,
    PERFORMANCE_METRICS_COUNTER_META                                     = 1000232002,
    SPACE_LIST_SAVE_INFO_FB                                              = 1000238000,
    EVENT_DATA_SPACE_LIST_SAVE_COMPLETE_FB                               = 1000238001,
    SPACE_USER_CREATE_INFO_FB                                            = 1000241001,
    SYSTEM_HEADSET_ID_PROPERTIES_META                                    = 1000245000,
    RECOMMENDED_LAYER_RESOLUTION_META                                    = 1000254000,
    RECOMMENDED_LAYER_RESOLUTION_GET_INFO_META                           = 1000254001,
    SYSTEM_SPACE_PERSISTENCE_PROPERTIES_META                             = 1000259000,
    SPACES_SAVE_INFO_META                                                = 1000259001,
    EVENT_DATA_SPACES_SAVE_RESULT_META                                   = 1000259002,
    SPACES_ERASE_INFO_META                                               = 1000259003,
    EVENT_DATA_SPACES_ERASE_RESULT_META                                  = 1000259004,
    SYSTEM_PASSTHROUGH_COLOR_LUT_PROPERTIES_META                         = 1000266000,
    PASSTHROUGH_COLOR_LUT_CREATE_INFO_META                               = 1000266001,
    PASSTHROUGH_COLOR_LUT_UPDATE_INFO_META                               = 1000266002,
    PASSTHROUGH_COLOR_MAP_LUT_META                                       = 1000266100,
    PASSTHROUGH_COLOR_MAP_INTERPOLATED_LUT_META                          = 1000266101,
    SPACE_TRIANGLE_MESH_GET_INFO_META                                    = 1000269001,
    SPACE_TRIANGLE_MESH_META                                             = 1000269002,
    SYSTEM_PROPERTIES_BODY_TRACKING_FULL_BODY_META                       = 1000274000,
    EVENT_DATA_PASSTHROUGH_LAYER_RESUMED_META                            = 1000282000,
    BODY_TRACKING_CALIBRATION_INFO_META                                  = 1000283002,
    BODY_TRACKING_CALIBRATION_STATUS_META                                = 1000283003,
    SYSTEM_PROPERTIES_BODY_TRACKING_CALIBRATION_META                     = 1000283004,
    SYSTEM_FACE_TRACKING_PROPERTIES2_FB                                  = 1000287013,
    FACE_TRACKER_CREATE_INFO2_FB                                         = 1000287014,
    FACE_EXPRESSION_INFO2_FB                                             = 1000287015,
    FACE_EXPRESSION_WEIGHTS2_FB                                          = 1000287016,
    SYSTEM_SPATIAL_ENTITY_SHARING_PROPERTIES_META                        = 1000290000,
    SHARE_SPACES_INFO_META                                               = 1000290001,
    EVENT_DATA_SHARE_SPACES_COMPLETE_META                                = 1000290002,
    ENVIRONMENT_DEPTH_PROVIDER_CREATE_INFO_META                          = 1000291000,
    ENVIRONMENT_DEPTH_SWAPCHAIN_CREATE_INFO_META                         = 1000291001,
    ENVIRONMENT_DEPTH_SWAPCHAIN_STATE_META                               = 1000291002,
    ENVIRONMENT_DEPTH_IMAGE_ACQUIRE_INFO_META                            = 1000291003,
    ENVIRONMENT_DEPTH_IMAGE_VIEW_META                                    = 1000291004,
    ENVIRONMENT_DEPTH_IMAGE_META                                         = 1000291005,
    ENVIRONMENT_DEPTH_HAND_REMOVAL_SET_INFO_META                         = 1000291006,
    SYSTEM_ENVIRONMENT_DEPTH_PROPERTIES_META                             = 1000291007,
    RENDER_MODEL_CREATE_INFO_EXT                                         = 1000300000,
    RENDER_MODEL_PROPERTIES_GET_INFO_EXT                                 = 1000300001,
    RENDER_MODEL_PROPERTIES_EXT                                          = 1000300002,
    RENDER_MODEL_SPACE_CREATE_INFO_EXT                                   = 1000300003,
    RENDER_MODEL_STATE_GET_INFO_EXT                                      = 1000300004,
    RENDER_MODEL_STATE_EXT                                               = 1000300005,
    RENDER_MODEL_ASSET_CREATE_INFO_EXT                                   = 1000300006,
    RENDER_MODEL_ASSET_DATA_GET_INFO_EXT                                 = 1000300007,
    RENDER_MODEL_ASSET_DATA_EXT                                          = 1000300008,
    RENDER_MODEL_ASSET_PROPERTIES_GET_INFO_EXT                           = 1000300009,
    RENDER_MODEL_ASSET_PROPERTIES_EXT                                    = 1000300010,
    INTERACTION_RENDER_MODEL_IDS_ENUMERATE_INFO_EXT                      = 1000301000,
    INTERACTION_RENDER_MODEL_SUBACTION_PATH_INFO_EXT                     = 1000301001,
    EVENT_DATA_INTERACTION_RENDER_MODELS_CHANGED_EXT                     = 1000301002,
    INTERACTION_RENDER_MODEL_TOP_LEVEL_USER_PATH_GET_INFO_EXT            = 1000301003,
    PASSTHROUGH_CREATE_INFO_HTC                                          = 1000317001,
    PASSTHROUGH_COLOR_HTC                                                = 1000317002,
    PASSTHROUGH_MESH_TRANSFORM_INFO_HTC                                  = 1000317003,
    COMPOSITION_LAYER_PASSTHROUGH_HTC                                    = 1000317004,
    FOVEATION_APPLY_INFO_HTC                                             = 1000318000,
    FOVEATION_DYNAMIC_MODE_INFO_HTC                                      = 1000318001,
    FOVEATION_CUSTOM_MODE_INFO_HTC                                       = 1000318002,
    SYSTEM_ANCHOR_PROPERTIES_HTC                                         = 1000319000,
    SPATIAL_ANCHOR_CREATE_INFO_HTC                                       = 1000319001,
    SYSTEM_BODY_TRACKING_PROPERTIES_HTC                                  = 1000320000,
    BODY_TRACKER_CREATE_INFO_HTC                                         = 1000320001,
    BODY_JOINTS_LOCATE_INFO_HTC                                          = 1000320002,
    BODY_JOINT_LOCATIONS_HTC                                             = 1000320003,
    BODY_SKELETON_HTC                                                    = 1000320004,
    ACTIVE_ACTION_SET_PRIORITIES_EXT                                     = 1000373000,
    SYSTEM_FORCE_FEEDBACK_CURL_PROPERTIES_MNDX                           = 1000375000,
    FORCE_FEEDBACK_CURL_APPLY_LOCATIONS_MNDX                             = 1000375001,
    BODY_TRACKER_CREATE_INFO_BD                                          = 1000385001,
    BODY_JOINTS_LOCATE_INFO_BD                                           = 1000385002,
    BODY_JOINT_LOCATIONS_BD                                              = 1000385003,
    SYSTEM_BODY_TRACKING_PROPERTIES_BD                                   = 1000385004,
    SYSTEM_SPATIAL_SENSING_PROPERTIES_BD                                 = 1000389000,
    SPATIAL_ENTITY_COMPONENT_GET_INFO_BD                                 = 1000389001,
    SPATIAL_ENTITY_LOCATION_GET_INFO_BD                                  = 1000389002,
    SPATIAL_ENTITY_COMPONENT_DATA_LOCATION_BD                            = 1000389003,
    SPATIAL_ENTITY_COMPONENT_DATA_SEMANTIC_BD                            = 1000389004,
    SPATIAL_ENTITY_COMPONENT_DATA_BOUNDING_BOX_2D_BD                     = 1000389005,
    SPATIAL_ENTITY_COMPONENT_DATA_POLYGON_BD                             = 1000389006,
    SPATIAL_ENTITY_COMPONENT_DATA_BOUNDING_BOX_3D_BD                     = 1000389007,
    SPATIAL_ENTITY_COMPONENT_DATA_TRIANGLE_MESH_BD                       = 1000389008,
    SENSE_DATA_PROVIDER_CREATE_INFO_BD                                   = 1000389009,
    SENSE_DATA_PROVIDER_START_INFO_BD                                    = 1000389010,
    EVENT_DATA_SENSE_DATA_PROVIDER_STATE_CHANGED_BD                      = 1000389011,
    EVENT_DATA_SENSE_DATA_UPDATED_BD                                     = 1000389012,
    SENSE_DATA_QUERY_INFO_BD                                             = 1000389013,
    SENSE_DATA_QUERY_COMPLETION_BD                                       = 1000389014,
    SENSE_DATA_FILTER_UUID_BD                                            = 1000389015,
    SENSE_DATA_FILTER_SEMANTIC_BD                                        = 1000389016,
    QUERIED_SENSE_DATA_GET_INFO_BD                                       = 1000389017,
    QUERIED_SENSE_DATA_BD                                                = 1000389018,
    SPATIAL_ENTITY_STATE_BD                                              = 1000389019,
    SPATIAL_ENTITY_ANCHOR_CREATE_INFO_BD                                 = 1000389020,
    ANCHOR_SPACE_CREATE_INFO_BD                                          = 1000389021,
    SYSTEM_SPATIAL_ANCHOR_PROPERTIES_BD                                  = 1000390000,
    SPATIAL_ANCHOR_CREATE_INFO_BD                                        = 1000390001,
    SPATIAL_ANCHOR_CREATE_COMPLETION_BD                                  = 1000390002,
    SPATIAL_ANCHOR_PERSIST_INFO_BD                                       = 1000390003,
    SPATIAL_ANCHOR_UNPERSIST_INFO_BD                                     = 1000390004,
    SYSTEM_SPATIAL_ANCHOR_SHARING_PROPERTIES_BD                          = 1000391000,
    SPATIAL_ANCHOR_SHARE_INFO_BD                                         = 1000391001,
    SHARED_SPATIAL_ANCHOR_DOWNLOAD_INFO_BD                               = 1000391002,
    SYSTEM_SPATIAL_SCENE_PROPERTIES_BD                                   = 1000392000,
    SCENE_CAPTURE_INFO_BD                                                = 1000392001,
    SYSTEM_SPATIAL_MESH_PROPERTIES_BD                                    = 1000393000,
    SENSE_DATA_PROVIDER_CREATE_INFO_SPATIAL_MESH_BD                      = 1000393001,
    FUTURE_POLL_RESULT_PROGRESS_BD                                       = 1000394001,
    SYSTEM_SPATIAL_PLANE_PROPERTIES_BD                                   = 1000396000,
    SPATIAL_ENTITY_COMPONENT_DATA_PLANE_ORIENTATION_BD                   = 1000396001,
    SENSE_DATA_FILTER_PLANE_ORIENTATION_BD                               = 1000396002,
    HAND_TRACKING_DATA_SOURCE_INFO_EXT                                   = 1000428000,
    HAND_TRACKING_DATA_SOURCE_STATE_EXT                                  = 1000428001,
    PLANE_DETECTOR_CREATE_INFO_EXT                                       = 1000429001,
    PLANE_DETECTOR_BEGIN_INFO_EXT                                        = 1000429002,
    PLANE_DETECTOR_GET_INFO_EXT                                          = 1000429003,
    PLANE_DETECTOR_LOCATIONS_EXT                                         = 1000429004,
    PLANE_DETECTOR_LOCATION_EXT                                          = 1000429005,
    PLANE_DETECTOR_POLYGON_BUFFER_EXT                                    = 1000429006,
    SYSTEM_PLANE_DETECTION_PROPERTIES_EXT                                = 1000429007,
    TRACKABLE_GET_INFO_ANDROID                                           = 1000455000,
    ANCHOR_SPACE_CREATE_INFO_ANDROID                                     = 1000455001,
    TRACKABLE_PLANE_ANDROID                                              = 1000455003,
    TRACKABLE_TRACKER_CREATE_INFO_ANDROID                                = 1000455004,
    SYSTEM_TRACKABLES_PROPERTIES_ANDROID                                 = 1000455005,
    PERSISTED_ANCHOR_SPACE_CREATE_INFO_ANDROID                           = 1000457001,
    PERSISTED_ANCHOR_SPACE_INFO_ANDROID                                  = 1000457002,
    DEVICE_ANCHOR_PERSISTENCE_CREATE_INFO_ANDROID                        = 1000457003,
    SYSTEM_DEVICE_ANCHOR_PERSISTENCE_PROPERTIES_ANDROID                  = 1000457004,
    PASSTHROUGH_CAMERA_STATE_GET_INFO_ANDROID                            = 1000460000,
    SYSTEM_PASSTHROUGH_CAMERA_STATE_PROPERTIES_ANDROID                   = 1000460001,
    RAYCAST_INFO_ANDROID                                                 = 1000463000,
    RAYCAST_HIT_RESULTS_ANDROID                                          = 1000463001,
    TRACKABLE_OBJECT_ANDROID                                             = 1000466000,
    TRACKABLE_OBJECT_CONFIGURATION_ANDROID                               = 1000466001,
    FUTURE_CANCEL_INFO_EXT                                               = 1000469000,
    FUTURE_POLL_INFO_EXT                                                 = 1000469001,
    FUTURE_COMPLETION_EXT                                                = 1000469002,
    FUTURE_POLL_RESULT_EXT                                               = 1000469003,
    EVENT_DATA_USER_PRESENCE_CHANGED_EXT                                 = 1000470000,
    SYSTEM_USER_PRESENCE_PROPERTIES_EXT                                  = 1000470001,
    SYSTEM_NOTIFICATIONS_SET_INFO_ML                                     = 1000473000,
    WORLD_MESH_DETECTOR_CREATE_INFO_ML                                   = 1000474001,
    WORLD_MESH_STATE_REQUEST_INFO_ML                                     = 1000474002,
    WORLD_MESH_BLOCK_STATE_ML                                            = 1000474003,
    WORLD_MESH_STATE_REQUEST_COMPLETION_ML                               = 1000474004,
    WORLD_MESH_BUFFER_RECOMMENDED_SIZE_INFO_ML                           = 1000474005,
    WORLD_MESH_BUFFER_SIZE_ML                                            = 1000474006,
    WORLD_MESH_BUFFER_ML                                                 = 1000474007,
    WORLD_MESH_BLOCK_REQUEST_ML                                          = 1000474008,
    WORLD_MESH_GET_INFO_ML                                               = 1000474009,
    WORLD_MESH_BLOCK_ML                                                  = 1000474010,
    WORLD_MESH_REQUEST_COMPLETION_ML                                     = 1000474011,
    WORLD_MESH_REQUEST_COMPLETION_INFO_ML                                = 1000474012,
    SYSTEM_FACIAL_EXPRESSION_PROPERTIES_ML                               = 1000482004,
    FACIAL_EXPRESSION_CLIENT_CREATE_INFO_ML                              = 1000482005,
    FACIAL_EXPRESSION_BLEND_SHAPE_GET_INFO_ML                            = 1000482006,
    FACIAL_EXPRESSION_BLEND_SHAPE_PROPERTIES_ML                          = 1000482007,
    SYSTEM_SIMULTANEOUS_HANDS_AND_CONTROLLERS_PROPERTIES_META            = 1000532001,
    SIMULTANEOUS_HANDS_AND_CONTROLLERS_TRACKING_RESUME_INFO_META         = 1000532002,
    SIMULTANEOUS_HANDS_AND_CONTROLLERS_TRACKING_PAUSE_INFO_META          = 1000532003,
    COLOCATION_DISCOVERY_START_INFO_META                                 = 1000571010,
    COLOCATION_DISCOVERY_STOP_INFO_META                                  = 1000571011,
    COLOCATION_ADVERTISEMENT_START_INFO_META                             = 1000571012,
    COLOCATION_ADVERTISEMENT_STOP_INFO_META                              = 1000571013,
    EVENT_DATA_START_COLOCATION_ADVERTISEMENT_COMPLETE_META              = 1000571020,
    EVENT_DATA_STOP_COLOCATION_ADVERTISEMENT_COMPLETE_META               = 1000571021,
    EVENT_DATA_COLOCATION_ADVERTISEMENT_COMPLETE_META                    = 1000571022,
    EVENT_DATA_START_COLOCATION_DISCOVERY_COMPLETE_META                  = 1000571023,
    EVENT_DATA_COLOCATION_DISCOVERY_RESULT_META                          = 1000571024,
    EVENT_DATA_COLOCATION_DISCOVERY_COMPLETE_META                        = 1000571025,
    EVENT_DATA_STOP_COLOCATION_DISCOVERY_COMPLETE_META                   = 1000571026,
    SYSTEM_COLOCATION_DISCOVERY_PROPERTIES_META                          = 1000571030,
    SHARE_SPACES_RECIPIENT_GROUPS_META                                   = 1000572000,
    SPACE_GROUP_UUID_FILTER_INFO_META                                    = 1000572001,
    SYSTEM_SPATIAL_ENTITY_GROUP_SHARING_PROPERTIES_META                  = 1000572100,
    ANCHOR_SHARING_INFO_ANDROID                                          = 1000701000,
    ANCHOR_SHARING_TOKEN_ANDROID                                         = 1000701001,
    SYSTEM_ANCHOR_SHARING_EXPORT_PROPERTIES_ANDROID                      = 1000701002,
    SYSTEM_MARKER_TRACKING_PROPERTIES_ANDROID                            = 1000707000,
    TRACKABLE_MARKER_CONFIGURATION_ANDROID                               = 1000707001,
    TRACKABLE_MARKER_ANDROID                                             = 1000707002,
    SPATIAL_CAPABILITY_COMPONENT_TYPES_EXT                               = 1000740000,
    SPATIAL_CONTEXT_CREATE_INFO_EXT                                      = 1000740001,
    CREATE_SPATIAL_CONTEXT_COMPLETION_EXT                                = 1000740002,
    SPATIAL_DISCOVERY_SNAPSHOT_CREATE_INFO_EXT                           = 1000740003,
    CREATE_SPATIAL_DISCOVERY_SNAPSHOT_COMPLETION_INFO_EXT                = 1000740004,
    CREATE_SPATIAL_DISCOVERY_SNAPSHOT_COMPLETION_EXT                     = 1000740005,
    SPATIAL_COMPONENT_DATA_QUERY_CONDITION_EXT                           = 1000740006,
    SPATIAL_COMPONENT_DATA_QUERY_RESULT_EXT                              = 1000740007,
    SPATIAL_BUFFER_GET_INFO_EXT                                          = 1000740008,
    SPATIAL_COMPONENT_BOUNDED_2D_LIST_EXT                                = 1000740009,
    SPATIAL_COMPONENT_BOUNDED_3D_LIST_EXT                                = 1000740010,
    SPATIAL_COMPONENT_PARENT_LIST_EXT                                    = 1000740011,
    SPATIAL_COMPONENT_MESH_3D_LIST_EXT                                   = 1000740012,
    SPATIAL_ENTITY_FROM_ID_CREATE_INFO_EXT                               = 1000740013,
    SPATIAL_UPDATE_SNAPSHOT_CREATE_INFO_EXT                              = 1000740014,
    EVENT_DATA_SPATIAL_DISCOVERY_RECOMMENDED_EXT                         = 1000740015,
    SPATIAL_FILTER_TRACKING_STATE_EXT                                    = 1000740016,
    SPATIAL_CAPABILITY_CONFIGURATION_PLANE_TRACKING_EXT                  = 1000741000,
    SPATIAL_COMPONENT_PLANE_ALIGNMENT_LIST_EXT                           = 1000741001,
    SPATIAL_COMPONENT_MESH_2D_LIST_EXT                                   = 1000741002,
    SPATIAL_COMPONENT_POLYGON_2D_LIST_EXT                                = 1000741003,
    SPATIAL_COMPONENT_PLANE_SEMANTIC_LABEL_LIST_EXT                      = 1000741004,
    SPATIAL_CAPABILITY_CONFIGURATION_QR_CODE_EXT                         = 1000743000,
    SPATIAL_CAPABILITY_CONFIGURATION_MICRO_QR_CODE_EXT                   = 1000743001,
    SPATIAL_CAPABILITY_CONFIGURATION_ARUCO_MARKER_EXT                    = 1000743002,
    SPATIAL_CAPABILITY_CONFIGURATION_APRIL_TAG_EXT                       = 1000743003,
    SPATIAL_MARKER_SIZE_EXT                                              = 1000743004,
    SPATIAL_MARKER_STATIC_OPTIMIZATION_EXT                               = 1000743005,
    SPATIAL_COMPONENT_MARKER_LIST_EXT                                    = 1000743006,
    SPATIAL_CAPABILITY_CONFIGURATION_ANCHOR_EXT                          = 1000762000,
    SPATIAL_COMPONENT_ANCHOR_LIST_EXT                                    = 1000762001,
    SPATIAL_ANCHOR_CREATE_INFO_EXT                                       = 1000762002,
    SPATIAL_PERSISTENCE_CONTEXT_CREATE_INFO_EXT                          = 1000763000,
    CREATE_SPATIAL_PERSISTENCE_CONTEXT_COMPLETION_EXT                    = 1000763001,
    SPATIAL_CONTEXT_PERSISTENCE_CONFIG_EXT                               = 1000763002,
    SPATIAL_DISCOVERY_PERSISTENCE_UUID_FILTER_EXT                        = 1000763003,
    SPATIAL_COMPONENT_PERSISTENCE_LIST_EXT                               = 1000763004,
    SPATIAL_ENTITY_PERSIST_INFO_EXT                                      = 1000781000,
    PERSIST_SPATIAL_ENTITY_COMPLETION_EXT                                = 1000781001,
    SPATIAL_ENTITY_UNPERSIST_INFO_EXT                                    = 1000781002,
    UNPERSIST_SPATIAL_ENTITY_COMPLETION_EXT                              = 1000781003,
    LOADER_INIT_INFO_PROPERTIES_EXT                                      = 1000838000,
    GRAPHICS_BINDING_VULKAN2_KHR                                         = GRAPHICS_BINDING_VULKAN_KHR,
    SWAPCHAIN_IMAGE_VULKAN2_KHR                                          = SWAPCHAIN_IMAGE_VULKAN_KHR,
    GRAPHICS_REQUIREMENTS_VULKAN2_KHR                                    = GRAPHICS_REQUIREMENTS_VULKAN_KHR,
    DEVICE_PCM_SAMPLE_RATE_GET_INFO_FB                                   = DEVICE_PCM_SAMPLE_RATE_STATE_FB,
    SPACES_LOCATE_INFO_KHR                                               = SPACES_LOCATE_INFO,
    SPACE_LOCATIONS_KHR                                                  = SPACE_LOCATIONS,
    SPACE_VELOCITIES_KHR                                                 = SPACE_VELOCITIES,
}

FormFactor :: enum i32 {
    HEAD_MOUNTED_DISPLAY                = 1,
    HANDHELD_DISPLAY                    = 2,
}

ViewConfigurationType :: enum i32 {
    PRIMARY_MONO                                                         = 1,
    PRIMARY_STEREO                                                       = 2,
    PRIMARY_STEREO_WITH_FOVEATED_INSET                                   = 1000037000,
    SECONDARY_MONO_FIRST_PERSON_OBSERVER_MSFT                            = 1000054000,
    PRIMARY_QUAD_VARJO                                                   = PRIMARY_STEREO_WITH_FOVEATED_INSET,
}

EnvironmentBlendMode :: enum i32 {
    OPAQUE                                = 1,
    ADDITIVE                              = 2,
    ALPHA_BLEND                           = 3,
}

ReferenceSpaceType :: enum i32 {
    VIEW                                        = 1,
    LOCAL                                       = 2,
    STAGE                                       = 3,
    LOCAL_FLOOR                                 = 1000426000,
    UNBOUNDED_MSFT                              = 1000038000,
    COMBINED_EYE_VARJO                          = 1000121000,
    LOCALIZATION_MAP_ML                         = 1000139000,
    LOCAL_FLOOR_EXT                             = LOCAL_FLOOR,
}

ActionType :: enum i32 {
    BOOLEAN_INPUT                   = 1,
    FLOAT_INPUT                     = 2,
    VECTOR2F_INPUT                  = 3,
    POSE_INPUT                      = 4,
    VIBRATION_OUTPUT                = 100,
}

EyeVisibility :: enum i32 {
    BOTH                    = 0,
    LEFT                    = 1,
    RIGHT                   = 2,
}

SessionState :: enum i32 {
    UNKNOWN                       = 0,
    IDLE                          = 1,
    READY                         = 2,
    SYNCHRONIZED                  = 3,
    VISIBLE                       = 4,
    FOCUSED                       = 5,
    STOPPING                      = 6,
    LOSS_PENDING                  = 7,
    EXITING                       = 8,
}

ObjectType :: enum i32 {
    UNKNOWN                                             = 0,
    INSTANCE                                            = 1,
    SESSION                                             = 2,
    SWAPCHAIN                                           = 3,
    SPACE                                               = 4,
    ACTION_SET                                          = 5,
    ACTION                                              = 6,
    DEBUG_UTILS_MESSENGER_EXT                           = 1000019000,
    SPATIAL_ANCHOR_MSFT                                 = 1000039000,
    SPATIAL_GRAPH_NODE_BINDING_MSFT                     = 1000049000,
    HAND_TRACKER_EXT                                    = 1000051000,
    BODY_TRACKER_FB                                     = 1000076000,
    SCENE_OBSERVER_MSFT                                 = 1000097000,
    SCENE_MSFT                                          = 1000097001,
    FACIAL_TRACKER_HTC                                  = 1000104000,
    FOVEATION_PROFILE_FB                                = 1000114000,
    TRIANGLE_MESH_FB                                    = 1000117000,
    PASSTHROUGH_FB                                      = 1000118000,
    PASSTHROUGH_LAYER_FB                                = 1000118002,
    GEOMETRY_INSTANCE_FB                                = 1000118004,
    MARKER_DETECTOR_ML                                  = 1000138000,
    EXPORTED_LOCALIZATION_MAP_ML                        = 1000139000,
    SPATIAL_ANCHORS_STORAGE_ML                          = 1000141000,
    SPATIAL_ANCHOR_STORE_CONNECTION_MSFT                = 1000142000,
    FACE_TRACKER_FB                                     = 1000201000,
    EYE_TRACKER_FB                                      = 1000202000,
    VIRTUAL_KEYBOARD_META                               = 1000219000,
    SPACE_USER_FB                                       = 1000241000,
    PASSTHROUGH_COLOR_LUT_META                          = 1000266000,
    FACE_TRACKER2_FB                                    = 1000287012,
    ENVIRONMENT_DEPTH_PROVIDER_META                     = 1000291000,
    ENVIRONMENT_DEPTH_SWAPCHAIN_META                    = 1000291001,
    RENDER_MODEL_EXT                                    = 1000300000,
    RENDER_MODEL_ASSET_EXT                              = 1000300001,
    PASSTHROUGH_HTC                                     = 1000317000,
    BODY_TRACKER_HTC                                    = 1000320000,
    BODY_TRACKER_BD                                     = 1000385000,
    SENSE_DATA_PROVIDER_BD                              = 1000389000,
    SENSE_DATA_SNAPSHOT_BD                              = 1000389001,
    ANCHOR_BD                                           = 1000389002,
    PLANE_DETECTOR_EXT                                  = 1000429000,
    TRACKABLE_TRACKER_ANDROID                           = 1000455001,
    DEVICE_ANCHOR_PERSISTENCE_ANDROID                   = 1000457000,
    WORLD_MESH_DETECTOR_ML                              = 1000474000,
    FACIAL_EXPRESSION_CLIENT_ML                         = 1000482000,
    SPATIAL_ENTITY_EXT                                  = 1000740000,
    SPATIAL_CONTEXT_EXT                                 = 1000740001,
    SPATIAL_SNAPSHOT_EXT                                = 1000740002,
    SPATIAL_PERSISTENCE_CONTEXT_EXT                     = 1000763000,
}

VisibilityMaskTypeKHR :: enum i32 {
    HIDDEN_TRIANGLE_MESH                              = 1,
    VISIBLE_TRIANGLE_MESH                             = 2,
    LINE_LOOP                                         = 3,
}

PerfSettingsDomainEXT :: enum i32 {
    CPU                             = 1,
    GPU                             = 2,
}

PerfSettingsSubDomainEXT :: enum i32 {
    COMPOSITING                                 = 1,
    RENDERING                                   = 2,
    THERMAL                                     = 3,
}

PerfSettingsLevelEXT :: enum i32 {
    POWER_SAVINGS                             = 0,
    SUSTAINED_LOW                             = 25,
    SUSTAINED_HIGH                            = 50,
    BOOST                                     = 75,
}

PerfSettingsNotificationLevelEXT :: enum i32 {
    LEVEL_NORMAL                              = 0,
    LEVEL_WARNING                             = 25,
    LEVEL_IMPAIRED                            = 75,
}

BlendFactorFB :: enum i32 {
    ZERO                                   = 0,
    ONE                                    = 1,
    SRC_ALPHA                              = 2,
    ONE_MINUS_SRC_ALPHA                    = 3,
    DST_ALPHA                              = 4,
    ONE_MINUS_DST_ALPHA                    = 5,
}

SpatialGraphNodeTypeMSFT :: enum i32 {
    STATIC                                  = 1,
    DYNAMIC                                 = 2,
}

HandEXT :: enum i32 {
    LEFT              = 1,
    RIGHT             = 2,
}

HandJointEXT :: enum i32 {
    PALM                                  = 0,
    WRIST                                 = 1,
    THUMB_METACARPAL                      = 2,
    THUMB_PROXIMAL                        = 3,
    THUMB_DISTAL                          = 4,
    THUMB_TIP                             = 5,
    INDEX_METACARPAL                      = 6,
    INDEX_PROXIMAL                        = 7,
    INDEX_INTERMEDIATE                    = 8,
    INDEX_DISTAL                          = 9,
    INDEX_TIP                             = 10,
    MIDDLE_METACARPAL                     = 11,
    MIDDLE_PROXIMAL                       = 12,
    MIDDLE_INTERMEDIATE                   = 13,
    MIDDLE_DISTAL                         = 14,
    MIDDLE_TIP                            = 15,
    RING_METACARPAL                       = 16,
    RING_PROXIMAL                         = 17,
    RING_INTERMEDIATE                     = 18,
    RING_DISTAL                           = 19,
    RING_TIP                              = 20,
    LITTLE_METACARPAL                     = 21,
    LITTLE_PROXIMAL                       = 22,
    LITTLE_INTERMEDIATE                   = 23,
    LITTLE_DISTAL                         = 24,
    LITTLE_TIP                            = 25,
}

HandJointSetEXT :: enum i32 {
    DEFAULT                                       = 0,
    HAND_WITH_FOREARM_ULTRALEAP                   = 1000149000,
}

HandPoseTypeMSFT :: enum i32 {
    TRACKED                                    = 0,
    REFERENCE_OPEN_PALM                        = 1,
}

ReprojectionModeMSFT :: enum i32 {
    DEPTH                                       = 1,
    PLANAR_FROM_DEPTH                           = 2,
    PLANAR_MANUAL                               = 3,
    ORIENTATION_ONLY                            = 4,
}

BodyJointFB :: enum i32 {
    ROOT                                            = 0,
    HIPS                                            = 1,
    SPINE_LOWER                                     = 2,
    SPINE_MIDDLE                                    = 3,
    SPINE_UPPER                                     = 4,
    CHEST                                           = 5,
    NECK                                            = 6,
    HEAD                                            = 7,
    LEFT_SHOULDER                                   = 8,
    LEFT_SCAPULA                                    = 9,
    LEFT_ARM_UPPER                                  = 10,
    LEFT_ARM_LOWER                                  = 11,
    LEFT_HAND_WRIST_TWIST                           = 12,
    RIGHT_SHOULDER                                  = 13,
    RIGHT_SCAPULA                                   = 14,
    RIGHT_ARM_UPPER                                 = 15,
    RIGHT_ARM_LOWER                                 = 16,
    RIGHT_HAND_WRIST_TWIST                          = 17,
    LEFT_HAND_PALM                                  = 18,
    LEFT_HAND_WRIST                                 = 19,
    LEFT_HAND_THUMB_METACARPAL                      = 20,
    LEFT_HAND_THUMB_PROXIMAL                        = 21,
    LEFT_HAND_THUMB_DISTAL                          = 22,
    LEFT_HAND_THUMB_TIP                             = 23,
    LEFT_HAND_INDEX_METACARPAL                      = 24,
    LEFT_HAND_INDEX_PROXIMAL                        = 25,
    LEFT_HAND_INDEX_INTERMEDIATE                    = 26,
    LEFT_HAND_INDEX_DISTAL                          = 27,
    LEFT_HAND_INDEX_TIP                             = 28,
    LEFT_HAND_MIDDLE_METACARPAL                     = 29,
    LEFT_HAND_MIDDLE_PROXIMAL                       = 30,
    LEFT_HAND_MIDDLE_INTERMEDIATE                   = 31,
    LEFT_HAND_MIDDLE_DISTAL                         = 32,
    LEFT_HAND_MIDDLE_TIP                            = 33,
    LEFT_HAND_RING_METACARPAL                       = 34,
    LEFT_HAND_RING_PROXIMAL                         = 35,
    LEFT_HAND_RING_INTERMEDIATE                     = 36,
    LEFT_HAND_RING_DISTAL                           = 37,
    LEFT_HAND_RING_TIP                              = 38,
    LEFT_HAND_LITTLE_METACARPAL                     = 39,
    LEFT_HAND_LITTLE_PROXIMAL                       = 40,
    LEFT_HAND_LITTLE_INTERMEDIATE                   = 41,
    LEFT_HAND_LITTLE_DISTAL                         = 42,
    LEFT_HAND_LITTLE_TIP                            = 43,
    RIGHT_HAND_PALM                                 = 44,
    RIGHT_HAND_WRIST                                = 45,
    RIGHT_HAND_THUMB_METACARPAL                     = 46,
    RIGHT_HAND_THUMB_PROXIMAL                       = 47,
    RIGHT_HAND_THUMB_DISTAL                         = 48,
    RIGHT_HAND_THUMB_TIP                            = 49,
    RIGHT_HAND_INDEX_METACARPAL                     = 50,
    RIGHT_HAND_INDEX_PROXIMAL                       = 51,
    RIGHT_HAND_INDEX_INTERMEDIATE                   = 52,
    RIGHT_HAND_INDEX_DISTAL                         = 53,
    RIGHT_HAND_INDEX_TIP                            = 54,
    RIGHT_HAND_MIDDLE_METACARPAL                    = 55,
    RIGHT_HAND_MIDDLE_PROXIMAL                      = 56,
    RIGHT_HAND_MIDDLE_INTERMEDIATE                  = 57,
    RIGHT_HAND_MIDDLE_DISTAL                        = 58,
    RIGHT_HAND_MIDDLE_TIP                           = 59,
    RIGHT_HAND_RING_METACARPAL                      = 60,
    RIGHT_HAND_RING_PROXIMAL                        = 61,
    RIGHT_HAND_RING_INTERMEDIATE                    = 62,
    RIGHT_HAND_RING_DISTAL                          = 63,
    RIGHT_HAND_RING_TIP                             = 64,
    RIGHT_HAND_LITTLE_METACARPAL                    = 65,
    RIGHT_HAND_LITTLE_PROXIMAL                      = 66,
    RIGHT_HAND_LITTLE_INTERMEDIATE                  = 67,
    RIGHT_HAND_LITTLE_DISTAL                        = 68,
    RIGHT_HAND_LITTLE_TIP                           = 69,
    COUNT                                           = 70,
    NONE                                            = -1,
}

BodyJointSetFB :: enum i32 {
    DEFAULT                          = 0,
    FULL_BODY_META                   = 1000274000,
}

HandJointsMotionRangeEXT :: enum i32 {
    UNOBSTRUCTED                                             = 1,
    CONFORMING_TO_CONTROLLER                                 = 2,
}

SceneComputeFeatureMSFT :: enum i32 {
    PLANE                                         = 1,
    PLANE_MESH                                    = 2,
    VISUAL_MESH                                   = 3,
    COLLIDER_MESH                                 = 4,
    SERIALIZE_SCENE                               = 1000098000,
    MARKER                                        = 1000147000,
}

SceneComputeConsistencyMSFT :: enum i32 {
    SNAPSHOT_COMPLETE                                          = 1,
    SNAPSHOT_INCOMPLETE_FAST                                   = 2,
    OCCLUSION_OPTIMIZED                                        = 3,
}

MeshComputeLodMSFT :: enum i32 {
    COARSE                             = 1,
    MEDIUM                             = 2,
    FINE                               = 3,
    UNLIMITED                          = 4,
}

SceneComponentTypeMSFT :: enum i32 {
    INVALID                                                = -1,
    OBJECT                                                 = 1,
    PLANE                                                  = 2,
    VISUAL_MESH                                            = 3,
    COLLIDER_MESH                                          = 4,
    SERIALIZED_SCENE_FRAGMENT                              = 1000098000,
    MARKER                                                 = 1000147000,
}

SceneObjectTypeMSFT :: enum i32 {
    UNCATEGORIZED                           = -1,
    BACKGROUND                              = 1,
    WALL                                    = 2,
    FLOOR                                   = 3,
    CEILING                                 = 4,
    PLATFORM                                = 5,
    INFERRED                                = 6,
}

ScenePlaneAlignmentTypeMSFT :: enum i32 {
    NON_ORTHOGONAL                                    = 0,
    HORIZONTAL                                        = 1,
    VERTICAL                                          = 2,
}

SceneComputeStateMSFT :: enum i32 {
    NONE                                             = 0,
    UPDATING                                         = 1,
    COMPLETED                                        = 2,
    COMPLETED_WITH_ERROR                             = 3,
}

EyeExpressionHTC :: enum i32 {
    LEFT_BLINK                          = 0,
    LEFT_WIDE                           = 1,
    RIGHT_BLINK                         = 2,
    RIGHT_WIDE                          = 3,
    LEFT_SQUEEZE                        = 4,
    RIGHT_SQUEEZE                       = 5,
    LEFT_DOWN                           = 6,
    RIGHT_DOWN                          = 7,
    LEFT_OUT                            = 8,
    RIGHT_IN                            = 9,
    LEFT_IN                             = 10,
    RIGHT_OUT                           = 11,
    LEFT_UP                             = 12,
    RIGHT_UP                            = 13,
}

LipExpressionHTC :: enum i32 {
    JAW_RIGHT                                    = 0,
    JAW_LEFT                                     = 1,
    JAW_FORWARD                                  = 2,
    JAW_OPEN                                     = 3,
    MOUTH_APE_SHAPE                              = 4,
    MOUTH_UPPER_RIGHT                            = 5,
    MOUTH_UPPER_LEFT                             = 6,
    MOUTH_LOWER_RIGHT                            = 7,
    MOUTH_LOWER_LEFT                             = 8,
    MOUTH_UPPER_OVERTURN                         = 9,
    MOUTH_LOWER_OVERTURN                         = 10,
    MOUTH_POUT                                   = 11,
    MOUTH_RAISER_RIGHT                           = 12,
    MOUTH_RAISER_LEFT                            = 13,
    MOUTH_STRETCHER_RIGHT                        = 14,
    MOUTH_STRETCHER_LEFT                         = 15,
    CHEEK_PUFF_RIGHT                             = 16,
    CHEEK_PUFF_LEFT                              = 17,
    CHEEK_SUCK                                   = 18,
    MOUTH_UPPER_UPRIGHT                          = 19,
    MOUTH_UPPER_UPLEFT                           = 20,
    MOUTH_LOWER_DOWNRIGHT                        = 21,
    MOUTH_LOWER_DOWNLEFT                         = 22,
    MOUTH_UPPER_INSIDE                           = 23,
    MOUTH_LOWER_INSIDE                           = 24,
    MOUTH_LOWER_OVERLAY                          = 25,
    TONGUE_LONGSTEP1                             = 26,
    TONGUE_LEFT                                  = 27,
    TONGUE_RIGHT                                 = 28,
    TONGUE_UP                                    = 29,
    TONGUE_DOWN                                  = 30,
    TONGUE_ROLL                                  = 31,
    TONGUE_LONGSTEP2                             = 32,
    TONGUE_UPRIGHT_MORPH                         = 33,
    TONGUE_UPLEFT_MORPH                          = 34,
    TONGUE_DOWNRIGHT_MORPH                       = 35,
    TONGUE_DOWNLEFT_MORPH                        = 36,
    MOUTH_SMILE_RIGHT                            = MOUTH_RAISER_RIGHT,
    MOUTH_SMILE_LEFT                             = MOUTH_RAISER_LEFT,
    MOUTH_SAD_RIGHT                              = MOUTH_STRETCHER_RIGHT,
    MOUTH_SAD_LEFT                               = MOUTH_STRETCHER_LEFT,
}

FacialTrackingTypeHTC :: enum i32 {
    EYE_DEFAULT                             = 1,
    LIP_DEFAULT                             = 2,
}

ColorSpaceFB :: enum i32 {
    UNMANAGED                   = 0,
    REC2020                     = 1,
    REC709                      = 2,
    RIFT_CV1                    = 3,
    RIFT_S                      = 4,
    QUEST                       = 5,
    P3                          = 6,
    ADOBE_RGB                   = 7,
}

SpaceComponentTypeFB :: enum i32 {
    LOCATABLE                                  = 0,
    STORABLE                                   = 1,
    SHARABLE                                   = 2,
    BOUNDED_2D                                 = 3,
    BOUNDED_3D                                 = 4,
    SEMANTIC_LABELS                            = 5,
    ROOM_LAYOUT                                = 6,
    SPACE_CONTAINER                            = 7,
    TRIANGLE_MESH_META                         = 1000269000,
}

FoveationLevelFB :: enum i32 {
    NONE                         = 0,
    LOW                          = 1,
    MEDIUM                       = 2,
    HIGH                         = 3,
}

FoveationDynamicFB :: enum i32 {
    DISABLED                              = 0,
    LEVEL_ENABLED                         = 1,
}

WindingOrderFB :: enum i32 {
    UNKNOWN                     = 0,
    CW                          = 1,
    CCW                         = 2,
}

PassthroughLayerPurposeFB :: enum i32 {
    RECONSTRUCTION                                                = 0,
    PROJECTED                                                     = 1,
    TRACKED_KEYBOARD_HANDS                                        = 1000203001,
    TRACKED_KEYBOARD_MASKED_HANDS                                 = 1000203002,
}

MarkerDetectorProfileML :: enum i32 {
    DEFAULT                                     = 0,
    SPEED                                       = 1,
    ACCURACY                                    = 2,
    SMALL_TARGETS                               = 3,
    LARGE_FOV                                   = 4,
    CUSTOM                                      = 5,
}

MarkerTypeML :: enum i32 {
    ARUCO                       = 0,
    APRIL_TAG                   = 1,
    QR                          = 2,
    EAN_13                      = 3,
    UPC_A                       = 4,
    CODE_128                    = 5,
}

MarkerArucoDictML :: enum i32 {
    _4X4_50                          = 0,
    _4X4_100                         = 1,
    _4X4_250                         = 2,
    _4X4_1000                        = 3,
    _5X5_50                          = 4,
    _5X5_100                         = 5,
    _5X5_250                         = 6,
    _5X5_1000                        = 7,
    _6X6_50                          = 8,
    _6X6_100                         = 9,
    _6X6_250                         = 10,
    _6X6_1000                        = 11,
    _7X7_50                          = 12,
    _7X7_100                         = 13,
    _7X7_250                         = 14,
    _7X7_1000                        = 15,
}

MarkerAprilTagDictML :: enum i32 {
    _16H5                             = 0,
    _25H9                             = 1,
    _36H10                            = 2,
    _36H11                            = 3,
}

MarkerDetectorFpsML :: enum i32 {
    LOW                              = 0,
    MEDIUM                           = 1,
    HIGH                             = 2,
    MAX                              = 3,
}

MarkerDetectorResolutionML :: enum i32 {
    LOW                                     = 0,
    MEDIUM                                  = 1,
    HIGH                                    = 2,
}

MarkerDetectorCameraML :: enum i32 {
    RGB_CAMERA                                 = 0,
    WORLD_CAMERAS                              = 1,
}

MarkerDetectorCornerRefineMethodML :: enum i32 {
    NONE                                                 = 0,
    SUBPIX                                               = 1,
    CONTOUR                                              = 2,
    APRIL_TAG                                            = 3,
}

MarkerDetectorFullAnalysisIntervalML :: enum i32 {
    MAX                                                 = 0,
    FAST                                                = 1,
    MEDIUM                                              = 2,
    SLOW                                                = 3,
}

MarkerDetectorStatusML :: enum i32 {
    PENDING                              = 0,
    READY                                = 1,
    ERROR                                = 2,
}

LocalizationMapStateML :: enum i32 {
    NOT_LOCALIZED                                                   = 0,
    LOCALIZED                                                       = 1,
    LOCALIZATION_PENDING                                            = 2,
    LOCALIZATION_SLEEPING_BEFORE_RETRY                              = 3,
}

LocalizationMapTypeML :: enum i32 {
    ON_DEVICE                             = 0,
    CLOUD                                 = 1,
}

LocalizationMapConfidenceML :: enum i32 {
    POOR                                        = 0,
    FAIR                                        = 1,
    GOOD                                        = 2,
    EXCELLENT                                   = 3,
}

SpatialAnchorConfidenceML :: enum i32 {
    LOW                                    = 0,
    MEDIUM                                 = 1,
    HIGH                                   = 2,
}

SceneMarkerTypeMSFT :: enum i32 {
    QR_CODE                           = 1,
}

SceneMarkerQRCodeSymbolTypeMSFT :: enum i32 {
    QR_CODE                                                = 1,
    MICRO_QR_CODE                                          = 2,
}

HandForearmJointULTRALEAP :: enum i32 {
    PALM                                                = 0,
    WRIST                                               = 1,
    THUMB_METACARPAL                                    = 2,
    THUMB_PROXIMAL                                      = 3,
    THUMB_DISTAL                                        = 4,
    THUMB_TIP                                           = 5,
    INDEX_METACARPAL                                    = 6,
    INDEX_PROXIMAL                                      = 7,
    INDEX_INTERMEDIATE                                  = 8,
    INDEX_DISTAL                                        = 9,
    INDEX_TIP                                           = 10,
    MIDDLE_METACARPAL                                   = 11,
    MIDDLE_PROXIMAL                                     = 12,
    MIDDLE_INTERMEDIATE                                 = 13,
    MIDDLE_DISTAL                                       = 14,
    MIDDLE_TIP                                          = 15,
    RING_METACARPAL                                     = 16,
    RING_PROXIMAL                                       = 17,
    RING_INTERMEDIATE                                   = 18,
    RING_DISTAL                                         = 19,
    RING_TIP                                            = 20,
    LITTLE_METACARPAL                                   = 21,
    LITTLE_PROXIMAL                                     = 22,
    LITTLE_INTERMEDIATE                                 = 23,
    LITTLE_DISTAL                                       = 24,
    LITTLE_TIP                                          = 25,
    ELBOW                                               = 26,
}

SpaceQueryActionFB :: enum i32 {
    LOAD                          = 0,
}

SpaceStorageLocationFB :: enum i32 {
    INVALID                              = 0,
    LOCAL                                = 1,
    CLOUD                                = 2,
}

SpacePersistenceModeFB :: enum i32 {
    INVALID                                 = 0,
    INDEFINITE                              = 1,
}

FaceExpressionFB :: enum i32 {
    BROW_LOWERER_L                               = 0,
    BROW_LOWERER_R                               = 1,
    CHEEK_PUFF_L                                 = 2,
    CHEEK_PUFF_R                                 = 3,
    CHEEK_RAISER_L                               = 4,
    CHEEK_RAISER_R                               = 5,
    CHEEK_SUCK_L                                 = 6,
    CHEEK_SUCK_R                                 = 7,
    CHIN_RAISER_B                                = 8,
    CHIN_RAISER_T                                = 9,
    DIMPLER_L                                    = 10,
    DIMPLER_R                                    = 11,
    EYES_CLOSED_L                                = 12,
    EYES_CLOSED_R                                = 13,
    EYES_LOOK_DOWN_L                             = 14,
    EYES_LOOK_DOWN_R                             = 15,
    EYES_LOOK_LEFT_L                             = 16,
    EYES_LOOK_LEFT_R                             = 17,
    EYES_LOOK_RIGHT_L                            = 18,
    EYES_LOOK_RIGHT_R                            = 19,
    EYES_LOOK_UP_L                               = 20,
    EYES_LOOK_UP_R                               = 21,
    INNER_BROW_RAISER_L                          = 22,
    INNER_BROW_RAISER_R                          = 23,
    JAW_DROP                                     = 24,
    JAW_SIDEWAYS_LEFT                            = 25,
    JAW_SIDEWAYS_RIGHT                           = 26,
    JAW_THRUST                                   = 27,
    LID_TIGHTENER_L                              = 28,
    LID_TIGHTENER_R                              = 29,
    LIP_CORNER_DEPRESSOR_L                       = 30,
    LIP_CORNER_DEPRESSOR_R                       = 31,
    LIP_CORNER_PULLER_L                          = 32,
    LIP_CORNER_PULLER_R                          = 33,
    LIP_FUNNELER_LB                              = 34,
    LIP_FUNNELER_LT                              = 35,
    LIP_FUNNELER_RB                              = 36,
    LIP_FUNNELER_RT                              = 37,
    LIP_PRESSOR_L                                = 38,
    LIP_PRESSOR_R                                = 39,
    LIP_PUCKER_L                                 = 40,
    LIP_PUCKER_R                                 = 41,
    LIP_STRETCHER_L                              = 42,
    LIP_STRETCHER_R                              = 43,
    LIP_SUCK_LB                                  = 44,
    LIP_SUCK_LT                                  = 45,
    LIP_SUCK_RB                                  = 46,
    LIP_SUCK_RT                                  = 47,
    LIP_TIGHTENER_L                              = 48,
    LIP_TIGHTENER_R                              = 49,
    LIPS_TOWARD                                  = 50,
    LOWER_LIP_DEPRESSOR_L                        = 51,
    LOWER_LIP_DEPRESSOR_R                        = 52,
    MOUTH_LEFT                                   = 53,
    MOUTH_RIGHT                                  = 54,
    NOSE_WRINKLER_L                              = 55,
    NOSE_WRINKLER_R                              = 56,
    OUTER_BROW_RAISER_L                          = 57,
    OUTER_BROW_RAISER_R                          = 58,
    UPPER_LID_RAISER_L                           = 59,
    UPPER_LID_RAISER_R                           = 60,
    UPPER_LIP_RAISER_L                           = 61,
    UPPER_LIP_RAISER_R                           = 62,
    COUNT                                        = 63,
}

FaceExpressionSetFB :: enum i32 {
    DEFAULT                           = 0,
}

FaceConfidenceFB :: enum i32 {
    LOWER_FACE                       = 0,
    UPPER_FACE                       = 1,
    COUNT                            = 2,
}

EyePositionFB :: enum i32 {
    LEFT                     = 0,
    RIGHT                    = 1,
    COUNT                    = 2,
}

CompareOpFB :: enum i32 {
    NEVER                             = 0,
    LESS                              = 1,
    EQUAL                             = 2,
    LESS_OR_EQUAL                     = 3,
    GREATER                           = 4,
    NOT_EQUAL                         = 5,
    GREATER_OR_EQUAL                  = 6,
    ALWAYS                            = 7,
}

LocalDimmingModeMETA :: enum i32 {
    OFF                            = 0,
    ON                             = 1,
}

VirtualKeyboardLocationTypeMETA :: enum i32 {
    CUSTOM                                        = 0,
    FAR                                           = 1,
    DIRECT                                        = 2,
}

VirtualKeyboardInputSourceMETA :: enum i32 {
    CONTROLLER_RAY_LEFT                                               = 1,
    CONTROLLER_RAY_RIGHT                                              = 2,
    HAND_RAY_LEFT                                                     = 3,
    HAND_RAY_RIGHT                                                    = 4,
    CONTROLLER_DIRECT_LEFT                                            = 5,
    CONTROLLER_DIRECT_RIGHT                                           = 6,
    HAND_DIRECT_INDEX_TIP_LEFT                                        = 7,
    HAND_DIRECT_INDEX_TIP_RIGHT                                       = 8,
}

ExternalCameraAttachedToDeviceOCULUS :: enum i32 {
    NONE                                                = 0,
    HMD                                                 = 1,
    LTOUCH                                              = 2,
    RTOUCH                                              = 3,
}

PerformanceMetricsCounterUnitMETA :: enum i32 {
    GENERIC                                               = 0,
    PERCENTAGE                                            = 1,
    MILLISECONDS                                          = 2,
    BYTES                                                 = 3,
    HERTZ                                                 = 4,
}

PassthroughColorLutChannelsMETA :: enum i32 {
    RGB                                         = 1,
    RGBA                                        = 2,
}

FullBodyJointMETA :: enum i32 {
    ROOT                                                   = 0,
    HIPS                                                   = 1,
    SPINE_LOWER                                            = 2,
    SPINE_MIDDLE                                           = 3,
    SPINE_UPPER                                            = 4,
    CHEST                                                  = 5,
    NECK                                                   = 6,
    HEAD                                                   = 7,
    LEFT_SHOULDER                                          = 8,
    LEFT_SCAPULA                                           = 9,
    LEFT_ARM_UPPER                                         = 10,
    LEFT_ARM_LOWER                                         = 11,
    LEFT_HAND_WRIST_TWIST                                  = 12,
    RIGHT_SHOULDER                                         = 13,
    RIGHT_SCAPULA                                          = 14,
    RIGHT_ARM_UPPER                                        = 15,
    RIGHT_ARM_LOWER                                        = 16,
    RIGHT_HAND_WRIST_TWIST                                 = 17,
    LEFT_HAND_PALM                                         = 18,
    LEFT_HAND_WRIST                                        = 19,
    LEFT_HAND_THUMB_METACARPAL                             = 20,
    LEFT_HAND_THUMB_PROXIMAL                               = 21,
    LEFT_HAND_THUMB_DISTAL                                 = 22,
    LEFT_HAND_THUMB_TIP                                    = 23,
    LEFT_HAND_INDEX_METACARPAL                             = 24,
    LEFT_HAND_INDEX_PROXIMAL                               = 25,
    LEFT_HAND_INDEX_INTERMEDIATE                           = 26,
    LEFT_HAND_INDEX_DISTAL                                 = 27,
    LEFT_HAND_INDEX_TIP                                    = 28,
    LEFT_HAND_MIDDLE_METACARPAL                            = 29,
    LEFT_HAND_MIDDLE_PROXIMAL                              = 30,
    LEFT_HAND_MIDDLE_INTERMEDIATE                          = 31,
    LEFT_HAND_MIDDLE_DISTAL                                = 32,
    LEFT_HAND_MIDDLE_TIP                                   = 33,
    LEFT_HAND_RING_METACARPAL                              = 34,
    LEFT_HAND_RING_PROXIMAL                                = 35,
    LEFT_HAND_RING_INTERMEDIATE                            = 36,
    LEFT_HAND_RING_DISTAL                                  = 37,
    LEFT_HAND_RING_TIP                                     = 38,
    LEFT_HAND_LITTLE_METACARPAL                            = 39,
    LEFT_HAND_LITTLE_PROXIMAL                              = 40,
    LEFT_HAND_LITTLE_INTERMEDIATE                          = 41,
    LEFT_HAND_LITTLE_DISTAL                                = 42,
    LEFT_HAND_LITTLE_TIP                                   = 43,
    RIGHT_HAND_PALM                                        = 44,
    RIGHT_HAND_WRIST                                       = 45,
    RIGHT_HAND_THUMB_METACARPAL                            = 46,
    RIGHT_HAND_THUMB_PROXIMAL                              = 47,
    RIGHT_HAND_THUMB_DISTAL                                = 48,
    RIGHT_HAND_THUMB_TIP                                   = 49,
    RIGHT_HAND_INDEX_METACARPAL                            = 50,
    RIGHT_HAND_INDEX_PROXIMAL                              = 51,
    RIGHT_HAND_INDEX_INTERMEDIATE                          = 52,
    RIGHT_HAND_INDEX_DISTAL                                = 53,
    RIGHT_HAND_INDEX_TIP                                   = 54,
    RIGHT_HAND_MIDDLE_METACARPAL                           = 55,
    RIGHT_HAND_MIDDLE_PROXIMAL                             = 56,
    RIGHT_HAND_MIDDLE_INTERMEDIATE                         = 57,
    RIGHT_HAND_MIDDLE_DISTAL                               = 58,
    RIGHT_HAND_MIDDLE_TIP                                  = 59,
    RIGHT_HAND_RING_METACARPAL                             = 60,
    RIGHT_HAND_RING_PROXIMAL                               = 61,
    RIGHT_HAND_RING_INTERMEDIATE                           = 62,
    RIGHT_HAND_RING_DISTAL                                 = 63,
    RIGHT_HAND_RING_TIP                                    = 64,
    RIGHT_HAND_LITTLE_METACARPAL                           = 65,
    RIGHT_HAND_LITTLE_PROXIMAL                             = 66,
    RIGHT_HAND_LITTLE_INTERMEDIATE                         = 67,
    RIGHT_HAND_LITTLE_DISTAL                               = 68,
    RIGHT_HAND_LITTLE_TIP                                  = 69,
    LEFT_UPPER_LEG                                         = 70,
    LEFT_LOWER_LEG                                         = 71,
    LEFT_FOOT_ANKLE_TWIST                                  = 72,
    LEFT_FOOT_ANKLE                                        = 73,
    LEFT_FOOT_SUBTALAR                                     = 74,
    LEFT_FOOT_TRANSVERSE                                   = 75,
    LEFT_FOOT_BALL                                         = 76,
    RIGHT_UPPER_LEG                                        = 77,
    RIGHT_LOWER_LEG                                        = 78,
    RIGHT_FOOT_ANKLE_TWIST                                 = 79,
    RIGHT_FOOT_ANKLE                                       = 80,
    RIGHT_FOOT_SUBTALAR                                    = 81,
    RIGHT_FOOT_TRANSVERSE                                  = 82,
    RIGHT_FOOT_BALL                                        = 83,
    COUNT                                                  = 84,
    NONE                                                   = 85,
}

BodyTrackingCalibrationStateMETA :: enum i32 {
    VALID                                               = 1,
    CALIBRATING                                         = 2,
    INVALID                                             = 3,
}

FaceExpression2FB :: enum i32 {
    BROW_LOWERER_L                                    = 0,
    BROW_LOWERER_R                                    = 1,
    CHEEK_PUFF_L                                      = 2,
    CHEEK_PUFF_R                                      = 3,
    CHEEK_RAISER_L                                    = 4,
    CHEEK_RAISER_R                                    = 5,
    CHEEK_SUCK_L                                      = 6,
    CHEEK_SUCK_R                                      = 7,
    CHIN_RAISER_B                                     = 8,
    CHIN_RAISER_T                                     = 9,
    DIMPLER_L                                         = 10,
    DIMPLER_R                                         = 11,
    EYES_CLOSED_L                                     = 12,
    EYES_CLOSED_R                                     = 13,
    EYES_LOOK_DOWN_L                                  = 14,
    EYES_LOOK_DOWN_R                                  = 15,
    EYES_LOOK_LEFT_L                                  = 16,
    EYES_LOOK_LEFT_R                                  = 17,
    EYES_LOOK_RIGHT_L                                 = 18,
    EYES_LOOK_RIGHT_R                                 = 19,
    EYES_LOOK_UP_L                                    = 20,
    EYES_LOOK_UP_R                                    = 21,
    INNER_BROW_RAISER_L                               = 22,
    INNER_BROW_RAISER_R                               = 23,
    JAW_DROP                                          = 24,
    JAW_SIDEWAYS_LEFT                                 = 25,
    JAW_SIDEWAYS_RIGHT                                = 26,
    JAW_THRUST                                        = 27,
    LID_TIGHTENER_L                                   = 28,
    LID_TIGHTENER_R                                   = 29,
    LIP_CORNER_DEPRESSOR_L                            = 30,
    LIP_CORNER_DEPRESSOR_R                            = 31,
    LIP_CORNER_PULLER_L                               = 32,
    LIP_CORNER_PULLER_R                               = 33,
    LIP_FUNNELER_LB                                   = 34,
    LIP_FUNNELER_LT                                   = 35,
    LIP_FUNNELER_RB                                   = 36,
    LIP_FUNNELER_RT                                   = 37,
    LIP_PRESSOR_L                                     = 38,
    LIP_PRESSOR_R                                     = 39,
    LIP_PUCKER_L                                      = 40,
    LIP_PUCKER_R                                      = 41,
    LIP_STRETCHER_L                                   = 42,
    LIP_STRETCHER_R                                   = 43,
    LIP_SUCK_LB                                       = 44,
    LIP_SUCK_LT                                       = 45,
    LIP_SUCK_RB                                       = 46,
    LIP_SUCK_RT                                       = 47,
    LIP_TIGHTENER_L                                   = 48,
    LIP_TIGHTENER_R                                   = 49,
    LIPS_TOWARD                                       = 50,
    LOWER_LIP_DEPRESSOR_L                             = 51,
    LOWER_LIP_DEPRESSOR_R                             = 52,
    MOUTH_LEFT                                        = 53,
    MOUTH_RIGHT                                       = 54,
    NOSE_WRINKLER_L                                   = 55,
    NOSE_WRINKLER_R                                   = 56,
    OUTER_BROW_RAISER_L                               = 57,
    OUTER_BROW_RAISER_R                               = 58,
    UPPER_LID_RAISER_L                                = 59,
    UPPER_LID_RAISER_R                                = 60,
    UPPER_LIP_RAISER_L                                = 61,
    UPPER_LIP_RAISER_R                                = 62,
    TONGUE_TIP_INTERDENTAL                            = 63,
    TONGUE_TIP_ALVEOLAR                               = 64,
    TONGUE_FRONT_DORSAL_PALATE                        = 65,
    TONGUE_MID_DORSAL_PALATE                          = 66,
    TONGUE_BACK_DORSAL_VELAR                          = 67,
    TONGUE_OUT                                        = 68,
    TONGUE_RETREAT                                    = 69,
    COUNT                                             = 70,
}

FaceExpressionSet2FB :: enum i32 {
    DEFAULT                            = 0,
}

FaceTrackingDataSource2FB :: enum i32 {
    VISUAL                                  = 0,
    AUDIO                                   = 1,
}

FaceConfidence2FB :: enum i32 {
    LOWER_FACE                        = 0,
    UPPER_FACE                        = 1,
    COUNT                             = 2,
}

TrackingOptimizationSettingsDomainQCOM :: enum i32 {
    ALL                                               = 1,
}

TrackingOptimizationSettingsHintQCOM :: enum i32 {
    NONE                                                                 = 0,
    LONG_RANGE_PRIORIZATION                                              = 1,
    CLOSE_RANGE_PRIORIZATION                                             = 2,
    LOW_POWER_PRIORIZATION                                               = 3,
    HIGH_POWER_PRIORIZATION                                              = 4,
}

PassthroughFormHTC :: enum i32 {
    PLANAR                            = 0,
    PROJECTED                         = 1,
}

FoveationModeHTC :: enum i32 {
    DISABLE                       = 0,
    FIXED                         = 1,
    DYNAMIC                       = 2,
    CUSTOM                        = 3,
}

FoveationLevelHTC :: enum i32 {
    NONE                          = 0,
    LOW                           = 1,
    MEDIUM                        = 2,
    HIGH                          = 3,
}

BodyJointHTC :: enum i32 {
    PELVIS                           = 0,
    LEFT_HIP                         = 1,
    LEFT_KNEE                        = 2,
    LEFT_ANKLE                       = 3,
    LEFT_FEET                        = 4,
    RIGHT_HIP                        = 5,
    RIGHT_KNEE                       = 6,
    RIGHT_ANKLE                      = 7,
    RIGHT_FEET                       = 8,
    WAIST                            = 9,
    SPINE_LOWER                      = 10,
    SPINE_MIDDLE                     = 11,
    SPINE_HIGH                       = 12,
    CHEST                            = 13,
    NECK                             = 14,
    HEAD                             = 15,
    LEFT_CLAVICLE                    = 16,
    LEFT_SCAPULA                     = 17,
    LEFT_ARM                         = 18,
    LEFT_ELBOW                       = 19,
    LEFT_WRIST                       = 20,
    RIGHT_CLAVICLE                   = 21,
    RIGHT_SCAPULA                    = 22,
    RIGHT_ARM                        = 23,
    RIGHT_ELBOW                      = 24,
    RIGHT_WRIST                      = 25,
}

BodyJointSetHTC :: enum i32 {
    FULL                       = 0,
}

BodyJointConfidenceHTC :: enum i32 {
    NONE                              = 0,
    LOW                               = 1,
    HIGH                              = 2,
}

ForceFeedbackCurlLocationMNDX :: enum i32 {
    THUMB_CURL                                       = 0,
    INDEX_CURL                                       = 1,
    MIDDLE_CURL                                      = 2,
    RING_CURL                                        = 3,
    LITTLE_CURL                                      = 4,
}

BodyJointBD :: enum i32 {
    PELVIS_BD                       = 0,
    LEFT_HIP_BD                     = 1,
    RIGHT_HIP_BD                    = 2,
    SPINE1_BD                       = 3,
    LEFT_KNEE_BD                    = 4,
    RIGHT_KNEE_BD                   = 5,
    SPINE2_BD                       = 6,
    LEFT_ANKLE_BD                   = 7,
    RIGHT_ANKLE_BD                  = 8,
    SPINE3_BD                       = 9,
    LEFT_FOOT_BD                    = 10,
    RIGHT_FOOT_BD                   = 11,
    NECK_BD                         = 12,
    LEFT_COLLAR_BD                  = 13,
    RIGHT_COLLAR_BD                 = 14,
    HEAD_BD                         = 15,
    LEFT_SHOULDER_BD                = 16,
    RIGHT_SHOULDER_BD               = 17,
    LEFT_ELBOW_BD                   = 18,
    RIGHT_ELBOW_BD                  = 19,
    LEFT_WRIST_BD                   = 20,
    RIGHT_WRIST_BD                  = 21,
    LEFT_HAND_BD                    = 22,
    RIGHT_HAND_BD                   = 23,
    MAX_ENUM_BD                     = 0x7FFF_FFFF,
}

BodyJointSetBD :: enum i32 {
    BODY_WITHOUT_ARM_BD                   = 1,
    FULL_BODY_JOINTS_BD                   = 2,
    MAX_ENUM_BD                           = 0x7FFF_FFFF,
}

SpatialEntityComponentTypeBD :: enum i32 {
    LOCATION_BD                                           = 0,
    SEMANTIC_BD                                           = 1,
    BOUNDING_BOX_2D_BD                                    = 2,
    POLYGON_BD                                            = 3,
    BOUNDING_BOX_3D_BD                                    = 4,
    TRIANGLE_MESH_BD                                      = 5,
    PLANE_ORIENTATION_BD                                  = 1000396000,
    MAX_ENUM_BD                                           = 0x7FFF_FFFF,
}

SemanticLabelBD :: enum i32 {
    UNKNOWN_BD                           = 0,
    FLOOR_BD                             = 1,
    CEILING_BD                           = 2,
    WALL_BD                              = 3,
    DOOR_BD                              = 4,
    WINDOW_BD                            = 5,
    OPENING_BD                           = 6,
    TABLE_BD                             = 7,
    SOFA_BD                              = 8,
    CHAIR_BD                             = 9,
    HUMAN_BD                             = 10,
    BEAM_BD                              = 11,
    COLUMN_BD                            = 12,
    CURTAIN_BD                           = 13,
    CABINET_BD                           = 14,
    BED_BD                               = 15,
    PLANT_BD                             = 16,
    SCREEN_BD                            = 17,
    VIRTUAL_WALL_BD                      = 18,
    REFRIGERATOR_BD                      = 19,
    WASHING_MACHINE_BD                   = 20,
    AIR_CONDITIONER_BD                   = 21,
    LAMP_BD                              = 22,
    WALL_ART_BD                          = 23,
    STAIRWAY_BD                          = 24,
    MAX_ENUM_BD                          = 0x7FFF_FFFF,
}

SenseDataProviderTypeBD :: enum i32 {
    ANCHOR_BD                               = 1000390000,
    SCENE_BD                                = 1000392000,
    MESH_BD                                 = 1000393000,
    PLANE_BD                                = 1000396000,
    MAX_ENUM_BD                             = 0x7FFF_FFFF,
}

SenseDataProviderStateBD :: enum i32 {
    INITIALIZED_BD                              = 0,
    RUNNING_BD                                  = 1,
    STOPPED_BD                                  = 2,
    MAX_ENUM_BD                                 = 0x7FFF_FFFF,
}

PersistenceLocationBD :: enum i32 {
    LOCAL_BD                            = 0,
    MAX_ENUM_BD                         = 0x7FFF_FFFF,
}

SpatialMeshLodBD :: enum i32 {
    COARSE_BD                       = 0,
    MEDIUM_BD                       = 1,
    FINE_BD                         = 2,
    MAX_ENUM_BD                     = 0x7FFF_FFFF,
}

PlaneOrientationBD :: enum i32 {
    HORIZONTAL_UPWARD_BD                        = 0,
    HORIZONTAL_DOWNWARD_BD                      = 1,
    VERTICAL_BD                                 = 2,
    ARBITRARY_BD                                = 3,
    MAX_ENUM_BD                                 = 0x7FFF_FFFF,
}

HandTrackingDataSourceEXT :: enum i32 {
    UNOBSTRUCTED                                  = 1,
    CONTROLLER                                    = 2,
}

PlaneDetectorOrientationEXT :: enum i32 {
    HORIZONTAL_UPWARD                                     = 0,
    HORIZONTAL_DOWNWARD                                   = 1,
    VERTICAL                                              = 2,
    ARBITRARY                                             = 3,
}

PlaneDetectorSemanticTypeEXT :: enum i32 {
    UNDEFINED                                     = 0,
    CEILING                                       = 1,
    FLOOR                                         = 2,
    WALL                                          = 3,
    PLATFORM                                      = 4,
}

PlaneDetectionStateEXT :: enum i32 {
    NONE                                 = 0,
    PENDING                              = 1,
    DONE                                 = 2,
    ERROR                                = 3,
    FATAL                                = 4,
}

TrackingStateANDROID :: enum i32 {
    PAUSED                             = 0,
    STOPPED                            = 1,
    TRACKING                           = 2,
}

TrackableTypeANDROID :: enum i32 {
    NOT_VALID                           = 0,
    PLANE                               = 1,
    DEPTH                               = 1000463000,
    OBJECT                              = 1000466000,
    MARKER                              = 1000707000,
}

PlaneTypeANDROID :: enum i32 {
    HORIZONTAL_DOWNWARD_FACING                       = 0,
    HORIZONTAL_UPWARD_FACING                         = 1,
    VERTICAL                                         = 2,
    ARBITRARY                                        = 3,
}

PlaneLabelANDROID :: enum i32 {
    UNKNOWN                        = 0,
    WALL                           = 1,
    FLOOR                          = 2,
    CEILING                        = 3,
    TABLE                          = 4,
}

AnchorPersistStateANDROID :: enum i32 {
    PERSIST_NOT_REQUESTED                                 = 0,
    PERSIST_PENDING                                       = 1,
    PERSISTED                                             = 2,
}

PassthroughCameraStateANDROID :: enum i32 {
    DISABLED                                         = 0,
    INITIALIZING                                     = 1,
    READY                                            = 2,
    ERROR                                            = 3,
}

ObjectLabelANDROID :: enum i32 {
    UNKNOWN                          = 0,
    KEYBOARD                         = 1,
    MOUSE                            = 2,
    LAPTOP                           = 3,
}

FutureStateEXT :: enum i32 {
    PENDING                     = 1,
    READY                       = 2,
}

HeadsetFitStatusML :: enum i32 {
    UNKNOWN                           = 0,
    NOT_WORN                          = 1,
    GOOD_FIT                          = 2,
    BAD_FIT                           = 3,
}

EyeCalibrationStatusML :: enum i32 {
    UNKNOWN                              = 0,
    NONE                                 = 1,
    COARSE                               = 2,
    FINE                                 = 3,
}

WorldMeshDetectorLodML :: enum i32 {
    MINIMUM                               = 0,
    MEDIUM                                = 1,
    MAXIMUM                               = 2,
}

WorldMeshBlockStatusML :: enum i32 {
    NEW                                     = 0,
    UPDATED                                 = 1,
    DELETED                                 = 2,
    UNCHANGED                               = 3,
}

WorldMeshBlockResultML :: enum i32 {
    SUCCESS                                      = 0,
    FAILED                                       = 1,
    PENDING                                      = 2,
    PARTIAL_UPDATE                               = 3,
}

FacialBlendShapeML :: enum i32 {
    BROW_LOWERER_L                                  = 0,
    BROW_LOWERER_R                                  = 1,
    CHEEK_RAISER_L                                  = 2,
    CHEEK_RAISER_R                                  = 3,
    CHIN_RAISER                                     = 4,
    DIMPLER_L                                       = 5,
    DIMPLER_R                                       = 6,
    EYES_CLOSED_L                                   = 7,
    EYES_CLOSED_R                                   = 8,
    INNER_BROW_RAISER_L                             = 9,
    INNER_BROW_RAISER_R                             = 10,
    JAW_DROP                                        = 11,
    LID_TIGHTENER_L                                 = 12,
    LID_TIGHTENER_R                                 = 13,
    LIP_CORNER_DEPRESSOR_L                          = 14,
    LIP_CORNER_DEPRESSOR_R                          = 15,
    LIP_CORNER_PULLER_L                             = 16,
    LIP_CORNER_PULLER_R                             = 17,
    LIP_FUNNELER_LB                                 = 18,
    LIP_FUNNELER_LT                                 = 19,
    LIP_FUNNELER_RB                                 = 20,
    LIP_FUNNELER_RT                                 = 21,
    LIP_PRESSOR_L                                   = 22,
    LIP_PRESSOR_R                                   = 23,
    LIP_PUCKER_L                                    = 24,
    LIP_PUCKER_R                                    = 25,
    LIP_STRETCHER_L                                 = 26,
    LIP_STRETCHER_R                                 = 27,
    LIP_SUCK_LB                                     = 28,
    LIP_SUCK_LT                                     = 29,
    LIP_SUCK_RB                                     = 30,
    LIP_SUCK_RT                                     = 31,
    LIP_TIGHTENER_L                                 = 32,
    LIP_TIGHTENER_R                                 = 33,
    LIPS_TOWARD                                     = 34,
    LOWER_LIP_DEPRESSOR_L                           = 35,
    LOWER_LIP_DEPRESSOR_R                           = 36,
    NOSE_WRINKLER_L                                 = 37,
    NOSE_WRINKLER_R                                 = 38,
    OUTER_BROW_RAISER_L                             = 39,
    OUTER_BROW_RAISER_R                             = 40,
    UPPER_LID_RAISER_L                              = 41,
    UPPER_LID_RAISER_R                              = 42,
    UPPER_LIP_RAISER_L                              = 43,
    UPPER_LIP_RAISER_R                              = 44,
    TONGUE_OUT                                      = 45,
}

TrackableMarkerTrackingModeANDROID :: enum i32 {
    DYNAMIC                                           = 0,
    STATIC                                            = 1,
}

TrackableMarkerDictionaryANDROID :: enum i32 {
    ARUCO_4X4_50                                          = 0,
    ARUCO_4X4_100                                         = 1,
    ARUCO_4X4_250                                         = 2,
    ARUCO_4X4_1000                                        = 3,
    ARUCO_5X5_50                                          = 4,
    ARUCO_5X5_100                                         = 5,
    ARUCO_5X5_250                                         = 6,
    ARUCO_5X5_1000                                        = 7,
    ARUCO_6X6_50                                          = 8,
    ARUCO_6X6_100                                         = 9,
    ARUCO_6X6_250                                         = 10,
    ARUCO_6X6_1000                                        = 11,
    ARUCO_7X7_50                                          = 12,
    ARUCO_7X7_100                                         = 13,
    ARUCO_7X7_250                                         = 14,
    ARUCO_7X7_1000                                        = 15,
    APRILTAG_16H5                                         = 16,
    APRILTAG_25H9                                         = 17,
    APRILTAG_36H10                                        = 18,
    APRILTAG_36H11                                        = 19,
}

SpatialCapabilityEXT :: enum i32 {
    PLANE_TRACKING                                          = 1000741000,
    MARKER_TRACKING_QR_CODE                                 = 1000743000,
    MARKER_TRACKING_MICRO_QR_CODE                           = 1000743001,
    MARKER_TRACKING_ARUCO_MARKER                            = 1000743002,
    MARKER_TRACKING_APRIL_TAG                               = 1000743003,
    ANCHOR                                                  = 1000762000,
}

SpatialCapabilityFeatureEXT :: enum i32 {
    MARKER_TRACKING_FIXED_SIZE_MARKERS                                   = 1000743000,
    MARKER_TRACKING_STATIC_MARKERS                                       = 1000743001,
}

SpatialComponentTypeEXT :: enum i32 {
    BOUNDED_2D                                         = 1,
    BOUNDED_3D                                         = 2,
    PARENT                                             = 3,
    MESH_3D                                            = 4,
    PLANE_ALIGNMENT                                    = 1000741000,
    MESH_2D                                            = 1000741001,
    POLYGON_2D                                         = 1000741002,
    PLANE_SEMANTIC_LABEL                               = 1000741003,
    MARKER                                             = 1000743000,
    ANCHOR                                             = 1000762000,
    PERSISTENCE                                        = 1000763000,
}

SpatialEntityTrackingStateEXT :: enum i32 {
    STOPPED                                       = 1,
    PAUSED                                        = 2,
    TRACKING                                      = 3,
}

SpatialBufferTypeEXT :: enum i32 {
    UNKNOWN                             = 0,
    STRING                              = 1,
    UINT8                               = 2,
    UINT16                              = 3,
    UINT32                              = 4,
    FLOAT                               = 5,
    VECTOR2F                            = 6,
    VECTOR3F                            = 7,
}

SpatialPlaneAlignmentEXT :: enum i32 {
    HORIZONTAL_UPWARD                                  = 0,
    HORIZONTAL_DOWNWARD                                = 1,
    VERTICAL                                           = 2,
    ARBITRARY                                          = 3,
}

SpatialPlaneSemanticLabelEXT :: enum i32 {
    UNCATEGORIZED                                     = 1,
    FLOOR                                             = 2,
    WALL                                              = 3,
    CEILING                                           = 4,
    TABLE                                             = 5,
}

SpatialMarkerArucoDictEXT :: enum i32 {
    _4X4_50                                   = 1,
    _4X4_100                                  = 2,
    _4X4_250                                  = 3,
    _4X4_1000                                 = 4,
    _5X5_50                                   = 5,
    _5X5_100                                  = 6,
    _5X5_250                                  = 7,
    _5X5_1000                                 = 8,
    _6X6_50                                   = 9,
    _6X6_100                                  = 10,
    _6X6_250                                  = 11,
    _6X6_1000                                 = 12,
    _7X7_50                                   = 13,
    _7X7_100                                  = 14,
    _7X7_250                                  = 15,
    _7X7_1000                                 = 16,
}

SpatialMarkerAprilTagDictEXT :: enum i32 {
    _16H5                                      = 1,
    _25H9                                      = 2,
    _36H10                                     = 3,
    _36H11                                     = 4,
}

SpatialPersistenceScopeEXT :: enum i32 {
    SYSTEM_MANAGED                                  = 1,
    LOCAL_ANCHORS                                   = 1000781000,
}

SpatialPersistenceContextResultEXT :: enum i32 {
    SUCCESS                                                          = 0,
    ENTITY_NOT_TRACKING                                              = -1000781001,
    PERSIST_UUID_NOT_FOUND                                           = -1000781002,
}

SpatialPersistenceStateEXT :: enum i32 {
    LOADED                                     = 1,
    NOT_FOUND                                  = 2,
}

InstanceCreateFlags :: distinct bit_set[InstanceCreateFlag; i64]
InstanceCreateFlag :: enum u64 {}

SessionCreateFlags :: distinct bit_set[SessionCreateFlag; i64]
SessionCreateFlag :: enum u64 {}

SpaceVelocityFlags :: distinct bit_set[SpaceVelocityFlag; i64]
SpaceVelocityFlag :: enum u64 {
    LINEAR_VALID                    = 0,
    ANGULAR_VALID                   = 1,
}

SpaceLocationFlags :: distinct bit_set[SpaceLocationFlag; i64]
SpaceLocationFlag :: enum u64 {
    ORIENTATION_VALID                     = 0,
    POSITION_VALID                        = 1,
    ORIENTATION_TRACKED                   = 2,
    POSITION_TRACKED                      = 3,
}

SwapchainCreateFlags :: distinct bit_set[SwapchainCreateFlag; i64]
SwapchainCreateFlag :: enum u64 {
    PROTECTED_CONTENT                     = 0,
    STATIC_IMAGE                          = 1,
}

SwapchainUsageFlags :: distinct bit_set[SwapchainUsageFlag; i64]
SwapchainUsageFlag :: enum u64 {
    COLOR_ATTACHMENT                            = 0,
    DEPTH_STENCIL_ATTACHMENT                    = 1,
    UNORDERED_ACCESS                            = 2,
    TRANSFER_SRC                                = 3,
    TRANSFER_DST                                = 4,
    SAMPLED                                     = 5,
    MUTABLE_FORMAT                              = 6,
    INPUT_ATTACHMENT_MND                        = 7,
    INPUT_ATTACHMENT_KHR                        = 7,
}

CompositionLayerFlags :: distinct bit_set[CompositionLayerFlag; i64]
CompositionLayerFlag :: enum u64 {
    CORRECT_CHROMATIC_ABERRATION                      = 0,
    BLEND_TEXTURE_SOURCE_ALPHA                        = 1,
    UNPREMULTIPLIED_ALPHA                             = 2,
    INVERTED_ALPHA_EXT                                = 3,
}

ViewStateFlags :: distinct bit_set[ViewStateFlag; i64]
ViewStateFlag :: enum u64 {
    ORIENTATION_VALID                 = 0,
    POSITION_VALID                    = 1,
    ORIENTATION_TRACKED               = 2,
    POSITION_TRACKED                  = 3,
}

InputSourceLocalizedNameFlags :: distinct bit_set[InputSourceLocalizedNameFlag; i64]
InputSourceLocalizedNameFlag :: enum u64 {
    USER_PATH                                          = 0,
    INTERACTION_PROFILE                                = 1,
    COMPONENT                                          = 2,
}

DebugUtilsMessageSeverityFlagsEXT :: distinct bit_set[DebugUtilsMessageSeverityFlagEXT; i64]
DebugUtilsMessageSeverityFlagEXT :: enum u64 {
    VERBOSE                                     = 0,
    INFO                                        = 4,
    WARNING                                     = 8,
    ERROR                                       = 12,
}

DebugUtilsMessageTypeFlagsEXT :: distinct bit_set[DebugUtilsMessageTypeFlagEXT; i64]
DebugUtilsMessageTypeFlagEXT :: enum u64 {
    GENERAL                                     = 0,
    VALIDATION                                  = 1,
    PERFORMANCE                                 = 2,
    CONFORMANCE                                 = 3,
}

OverlaySessionCreateFlagsEXTX :: distinct bit_set[OverlaySessionCreateFlagEXTX; i64]
OverlaySessionCreateFlagEXTX :: enum u64 {}

OverlayMainSessionFlagsEXTX :: distinct bit_set[OverlayMainSessionFlagEXTX; i64]
OverlayMainSessionFlagEXTX :: enum u64 {
    ENABLED_COMPOSITION_LAYER_INFO_DEPTH                              = 0,
}

CompositionLayerImageLayoutFlagsFB :: distinct bit_set[CompositionLayerImageLayoutFlagFB; i64]
CompositionLayerImageLayoutFlagFB :: enum u64 {
    VERTICAL_FLIP                                      = 0,
}

CompositionLayerSecureContentFlagsFB :: distinct bit_set[CompositionLayerSecureContentFlagFB; i64]
CompositionLayerSecureContentFlagFB :: enum u64 {
    EXCLUDE_LAYER                                        = 0,
    REPLACE_LAYER                                        = 1,
}

HandTrackingAimFlagsFB :: distinct bit_set[HandTrackingAimFlagFB; i64]
HandTrackingAimFlagFB :: enum u64 {
    COMPUTED                                = 0,
    VALID                                   = 1,
    INDEX_PINCHING                          = 2,
    MIDDLE_PINCHING                         = 3,
    RING_PINCHING                           = 4,
    LITTLE_PINCHING                         = 5,
    SYSTEM_GESTURE                          = 6,
    DOMINANT_HAND                           = 7,
    MENU_PRESSED                            = 8,
}

SwapchainCreateFoveationFlagsFB :: distinct bit_set[SwapchainCreateFoveationFlagFB; i64]
SwapchainCreateFoveationFlagFB :: enum u64 {
    SCALED_BIN                                            = 0,
    FRAGMENT_DENSITY_MAP                                  = 1,
}

SwapchainStateFoveationFlagsFB :: distinct bit_set[SwapchainStateFoveationFlagFB; i64]
SwapchainStateFoveationFlagFB :: enum u64 {}

KeyboardTrackingFlagsFB :: distinct bit_set[KeyboardTrackingFlagFB; i64]
KeyboardTrackingFlagFB :: enum u64 {
    EXISTS                            = 0,
    LOCAL                             = 1,
    REMOTE                            = 2,
    CONNECTED                         = 3,
}

KeyboardTrackingQueryFlagsFB :: distinct bit_set[KeyboardTrackingQueryFlagFB; i64]
KeyboardTrackingQueryFlagFB :: enum u64 {
    LOCAL                                = 1,
    REMOTE                               = 2,
}

TriangleMeshFlagsFB :: distinct bit_set[TriangleMeshFlagFB; i64]
TriangleMeshFlagFB :: enum u64 {
    MUTABLE                     = 0,
}

PassthroughCapabilityFlagsFB :: distinct bit_set[PassthroughCapabilityFlagFB; i64]
PassthroughCapabilityFlagFB :: enum u64 {
    SUPPORTED                                = 0,
    COLOR                                    = 1,
    LAYER_DEPTH                              = 2,
}

PassthroughFlagsFB :: distinct bit_set[PassthroughFlagFB; i64]
PassthroughFlagFB :: enum u64 {
    IS_RUNNING_AT_CREATION                   = 0,
    LAYER_DEPTH                              = 1,
}

PassthroughStateChangedFlagsFB :: distinct bit_set[PassthroughStateChangedFlagFB; i64]
PassthroughStateChangedFlagFB :: enum u64 {
    REINIT_REQUIRED                                       = 0,
    NON_RECOVERABLE_ERROR                                 = 1,
    RECOVERABLE_ERROR                                     = 2,
    RESTORED_ERROR                                        = 3,
}

RenderModelFlagsFB :: distinct bit_set[RenderModelFlagFB; i64]
RenderModelFlagFB :: enum u64 {
    SUPPORTS_GLTF_2_0_SUBSET_1                    = 0,
    SUPPORTS_GLTF_2_0_SUBSET_2                    = 1,
}

FrameEndInfoFlagsML :: distinct bit_set[FrameEndInfoFlagML; i64]
FrameEndInfoFlagML :: enum u64 {
    PROTECTED                      = 0,
    VIGNETTE                       = 1,
}

GlobalDimmerFrameEndInfoFlagsML :: distinct bit_set[GlobalDimmerFrameEndInfoFlagML; i64]
GlobalDimmerFrameEndInfoFlagML :: enum u64 {
    ENABLED                                    = 0,
}

LocalizationMapErrorFlagsML :: distinct bit_set[LocalizationMapErrorFlagML; i64]
LocalizationMapErrorFlagML :: enum u64 {
    UNKNOWN                                         = 0,
    OUT_OF_MAPPED_AREA                              = 1,
    LOW_FEATURE_COUNT                               = 2,
    EXCESSIVE_MOTION                                = 3,
    LOW_LIGHT                                       = 4,
    HEADPOSE                                        = 5,
}

CompositionLayerSpaceWarpInfoFlagsFB :: distinct bit_set[CompositionLayerSpaceWarpInfoFlagFB; i64]
CompositionLayerSpaceWarpInfoFlagFB :: enum u64 {
    FRAME_SKIP                                         = 0,
}

SemanticLabelsSupportFlagsFB :: distinct bit_set[SemanticLabelsSupportFlagFB; i64]
SemanticLabelsSupportFlagFB :: enum u64 {
    MULTIPLE_SEMANTIC_LABELS                                     = 0,
    ACCEPT_DESK_TO_TABLE_MIGRATION                               = 1,
    ACCEPT_INVISIBLE_WALL_FACE                                   = 2,
}

DigitalLensControlFlagsALMALENCE :: distinct bit_set[DigitalLensControlFlagALMALENCE; i64]
DigitalLensControlFlagALMALENCE :: enum u64 {
    PROCESSING_DISABLE                                   = 0,
}

FoveationEyeTrackedProfileCreateFlagsMETA :: distinct bit_set[FoveationEyeTrackedProfileCreateFlagMETA; i64]
FoveationEyeTrackedProfileCreateFlagMETA :: enum u64 {}

FoveationEyeTrackedStateFlagsMETA :: distinct bit_set[FoveationEyeTrackedStateFlagMETA; i64]
FoveationEyeTrackedStateFlagMETA :: enum u64 {
    VALID                                     = 0,
}

CompositionLayerSettingsFlagsFB :: distinct bit_set[CompositionLayerSettingsFlagFB; i64]
CompositionLayerSettingsFlagFB :: enum u64 {
    NORMAL_SUPER_SAMPLING                                   = 0,
    QUALITY_SUPER_SAMPLING                                  = 1,
    NORMAL_SHARPENING                                       = 2,
    QUALITY_SHARPENING                                      = 3,
    AUTO_LAYER_FILTER_META                                  = 5,
}

FrameSynthesisInfoFlagsEXT :: distinct bit_set[FrameSynthesisInfoFlagEXT; i64]
FrameSynthesisInfoFlagEXT :: enum u64 {
    USE_2D_MOTION_VECTOR                                       = 0,
    REQUEST_RELAXED_FRAME_INTERVAL                             = 1,
}

PassthroughPreferenceFlagsMETA :: distinct bit_set[PassthroughPreferenceFlagMETA; i64]
PassthroughPreferenceFlagMETA :: enum u64 {
    DEFAULT_TO_ACTIVE                                = 0,
}

VirtualKeyboardInputStateFlagsMETA :: distinct bit_set[VirtualKeyboardInputStateFlagMETA; i64]
VirtualKeyboardInputStateFlagMETA :: enum u64 {
    PRESSED                                      = 0,
}

ExternalCameraStatusFlagsOCULUS :: distinct bit_set[ExternalCameraStatusFlagOCULUS; i64]
ExternalCameraStatusFlagOCULUS :: enum u64 {
    CONNECTED                                           = 0,
    CALIBRATING                                         = 1,
    CALIBRATION_FAILED                                  = 2,
    CALIBRATED                                          = 3,
    CAPTURING                                           = 4,
}

PerformanceMetricsCounterFlagsMETA :: distinct bit_set[PerformanceMetricsCounterFlagMETA; i64]
PerformanceMetricsCounterFlagMETA :: enum u64 {
    ANY_VALUE_VALID                                       = 0,
    UINT_VALUE_VALID                                      = 1,
    FLOAT_VALUE_VALID                                     = 2,
}

EnvironmentDepthProviderCreateFlagsMETA :: distinct bit_set[EnvironmentDepthProviderCreateFlagMETA; i64]
EnvironmentDepthProviderCreateFlagMETA :: enum u64 {}

EnvironmentDepthSwapchainCreateFlagsMETA :: distinct bit_set[EnvironmentDepthSwapchainCreateFlagMETA; i64]
EnvironmentDepthSwapchainCreateFlagMETA :: enum u64 {}

FoveationDynamicFlagsHTC :: distinct bit_set[FoveationDynamicFlagHTC; i64]
FoveationDynamicFlagHTC :: enum u64 {
    LEVEL_ENABLED                                        = 0,
    CLEAR_FOV_ENABLED                                    = 1,
    FOCAL_CENTER_OFFSET_ENABLED                          = 2,
}

SpatialMeshConfigFlagsBD :: distinct bit_set[SpatialMeshConfigFlagBD; i64]
SpatialMeshConfigFlagBD :: enum u64 {
    SEMANTIC_BD                                          = 0,
    ALIGN_SEMANTIC_WITH_VERTEX_BD                        = 1,
}

PlaneDetectionCapabilityFlagsEXT :: distinct bit_set[PlaneDetectionCapabilityFlagEXT; i64]
PlaneDetectionCapabilityFlagEXT :: enum u64 {
    PLANE_DETECTION                                     = 0,
    PLANE_HOLES                                         = 1,
    SEMANTIC_CEILING                                    = 2,
    SEMANTIC_FLOOR                                      = 3,
    SEMANTIC_WALL                                       = 4,
    SEMANTIC_PLATFORM                                   = 5,
    ORIENTATION                                         = 6,
}

PlaneDetectorFlagsEXT :: distinct bit_set[PlaneDetectorFlagEXT; i64]
PlaneDetectorFlagEXT :: enum u64 {
    ENABLE_CONTOUR                       = 0,
}

WorldMeshDetectorFlagsML :: distinct bit_set[WorldMeshDetectorFlagML; i64]
WorldMeshDetectorFlagML :: enum u64 {
    POINT_CLOUD                                  = 0,
    COMPUTE_NORMALS                              = 1,
    COMPUTE_CONFIDENCE                           = 2,
    PLANARIZE                                    = 3,
    REMOVE_MESH_SKIRT                            = 4,
    INDEX_ORDER_CW                               = 5,
}

FacialExpressionBlendShapePropertiesFlagsML :: distinct bit_set[FacialExpressionBlendShapePropertiesFlagML; i64]
FacialExpressionBlendShapePropertiesFlagML :: enum u64 {
    VALID                                                  = 0,
    TRACKED                                                = 1,
}

