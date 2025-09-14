//
// OpenXR wrapper generated from: https://raw.githubusercontent.com/KhronosGroup/OpenXR-SDK/refs/heads/main/include/openxr/openxr.h
//
package vendor_openxr


MAKE_VERSION :: proc(major, minor, path: u32) -> u64 {
    return (cast(u64)(major & 0xFFFF) << 48) | (cast(u64)(minor & 0xFFFF) << 32) | (cast(u64)path & 0xFFFF_FFFF)
}

VERSION_MAJOR :: proc(version: u64) -> u32 { return cast(u32)((version >> 48) & 0xFFFF) }
VERSION_MINOR :: proc(version: u64) -> u32 { return cast(u32)((version >> 32) & 0xFFFF) }
VERSION_PATCH :: proc(version: u64) -> u32 { return cast(u32)(version & 0xFFFF_FFFF)    }

CURRENT_API_VERSION :: (u64(1 << 48) | u64(1 << 32) | u64(51))

API_VERSION_1_0 :: (u64(1 << 48) | u64(0 << 32) | u64(51))

VERSION_1_0                                             :: 1
MIN_COMPOSITION_LAYERS_SUPPORTED                        :: 16
NULL_HANDLE                                             :: 0
NULL_SYSTEM_ID                                          :: 0
NULL_PATH                                               :: 0
NO_DURATION                                             :: 0
MIN_HAPTIC_DURATION                                     :: -1
FREQUENCY_UNSPECIFIED                                   :: 0
EXTENSION_ENUM_BASE                                     :: 1000000000
EXTENSION_ENUM_STRIDE                                   :: 1000
Version                                                 :: u64
Flags64                                                 :: u64
SystemId                                                :: u64
Bool32                                                  :: u32
Path                                                    :: u64
Time                                                    :: i64
Duration                                                :: i64
Instance_T                                              :: struct {}
Instance                                                :: ^Instance_T
Session_T                                               :: struct {}
Session                                                 :: ^Session_T
Space_T                                                 :: struct {}
Space                                                   :: ^Space_T
Action_T                                                :: struct {}
Action                                                  :: ^Action_T
Swapchain_T                                             :: struct {}
Swapchain                                               :: ^Swapchain_T
ActionSet_T                                             :: struct {}
ActionSet                                               :: ^ActionSet_T
TRUE                                                    :: 1
FALSE                                                   :: 0
MAX_EXTENSION_NAME_SIZE                                 :: 128
MAX_API_LAYER_NAME_SIZE                                 :: 256
MAX_API_LAYER_DESCRIPTION_SIZE                          :: 256
MAX_SYSTEM_NAME_SIZE                                    :: 256
MAX_APPLICATION_NAME_SIZE                               :: 128
MAX_ENGINE_NAME_SIZE                                    :: 128
MAX_RUNTIME_NAME_SIZE                                   :: 128
MAX_PATH_LENGTH                                         :: 256
MAX_STRUCTURE_NAME_SIZE                                 :: 64
MAX_RESULT_STRING_SIZE                                  :: 64
MAX_ACTION_SET_NAME_SIZE                                :: 64
MAX_LOCALIZED_ACTION_SET_NAME_SIZE                      :: 128
MAX_ACTION_NAME_SIZE                                    :: 64
MAX_LOCALIZED_ACTION_NAME_SIZE                          :: 128
VERSION_1_1                                             :: 1
UUID_SIZE                                               :: 16
KHR_composition_layer_cube_SPEC_VERSION                 :: 8
KHR_COMPOSITION_LAYER_CUBE_EXTENSION_NAME               :: "XR_KHR_composition_layer_cube"
KHR_composition_layer_depth_SPEC_VERSION                :: 6
KHR_COMPOSITION_LAYER_DEPTH_EXTENSION_NAME              :: "XR_KHR_composition_layer_depth"
KHR_composition_layer_cylinder_SPEC_VERSION             :: 4
KHR_COMPOSITION_LAYER_CYLINDER_EXTENSION_NAME           :: "XR_KHR_composition_layer_cylinder"
KHR_composition_layer_equirect_SPEC_VERSION             :: 3
KHR_COMPOSITION_LAYER_EQUIRECT_EXTENSION_NAME           :: "XR_KHR_composition_layer_equirect"
KHR_visibility_mask_SPEC_VERSION                        :: 2
KHR_VISIBILITY_MASK_EXTENSION_NAME                      :: "XR_KHR_visibility_mask"
KHR_composition_layer_color_scale_bias_SPEC_VERSION     :: 5
KHR_COMPOSITION_LAYER_COLOR_SCALE_BIAS_EXTENSION_NAME   :: "XR_KHR_composition_layer_color_scale_bias"
KHR_loader_init_SPEC_VERSION                            :: 2
KHR_LOADER_INIT_EXTENSION_NAME                          :: "XR_KHR_loader_init"
KHR_composition_layer_equirect2_SPEC_VERSION            :: 1
KHR_COMPOSITION_LAYER_EQUIRECT2_EXTENSION_NAME          :: "XR_KHR_composition_layer_equirect2"
KHR_binding_modification_SPEC_VERSION                   :: 1
KHR_BINDING_MODIFICATION_EXTENSION_NAME                 :: "XR_KHR_binding_modification"
KHR_extended_struct_name_lengths_SPEC_VERSION           :: 1
KHR_EXTENDED_STRUCT_NAME_LENGTHS_EXTENSION_NAME         :: "XR_KHR_extended_struct_name_lengths"
MAX_STRUCTURE_NAME_SIZE_EXTENDED_KHR                    :: 256
KHR_swapchain_usage_input_attachment_bit_SPEC_VERSION   :: 3
KHR_SWAPCHAIN_USAGE_INPUT_ATTACHMENT_BIT_EXTENSION_NAME :: "XR_KHR_swapchain_usage_input_attachment_bit"
KHR_locate_spaces_SPEC_VERSION                          :: 1
KHR_LOCATE_SPACES_EXTENSION_NAME                        :: "XR_KHR_locate_spaces"
SpacesLocateInfoKHR                                     :: SpacesLocateInfo
SpaceLocationDataKHR                                    :: SpaceLocationData
SpaceLocationsKHR                                       :: SpaceLocations
SpaceVelocityDataKHR                                    :: SpaceVelocityData
SpaceVelocitiesKHR                                      :: SpaceVelocities
KHR_maintenance1_SPEC_VERSION                           :: 1
KHR_MAINTENANCE1_EXTENSION_NAME                         :: "XR_KHR_maintenance1"
Color3fKHR                                              :: Color3f
Extent3DfKHR                                            :: Extent3Df
SpherefKHR                                              :: Spheref
BoxfKHR                                                 :: Boxf
FrustumfKHR                                             :: Frustumf
EXT_performance_settings_SPEC_VERSION                   :: 4
EXT_PERFORMANCE_SETTINGS_EXTENSION_NAME                 :: "XR_EXT_performance_settings"
EXT_thermal_query_SPEC_VERSION                          :: 2
EXT_THERMAL_QUERY_EXTENSION_NAME                        :: "XR_EXT_thermal_query"
DebugUtilsMessengerEXT_T                                :: struct {}
DebugUtilsMessengerEXT                                  :: ^DebugUtilsMessengerEXT_T
EXT_debug_utils_SPEC_VERSION                            :: 5
EXT_DEBUG_UTILS_EXTENSION_NAME                          :: "XR_EXT_debug_utils"
EXT_eye_gaze_interaction_SPEC_VERSION                   :: 2
EXT_EYE_GAZE_INTERACTION_EXTENSION_NAME                 :: "XR_EXT_eye_gaze_interaction"
EXTX_overlay_SPEC_VERSION                               :: 5
EXTX_OVERLAY_EXTENSION_NAME                             :: "XR_EXTX_overlay"
VARJO_quad_views_SPEC_VERSION                           :: 2
VARJO_QUAD_VIEWS_EXTENSION_NAME                         :: "XR_VARJO_quad_views"
MSFT_unbounded_reference_space_SPEC_VERSION             :: 1
MSFT_UNBOUNDED_REFERENCE_SPACE_EXTENSION_NAME           :: "XR_MSFT_unbounded_reference_space"
SpatialAnchorMSFT_T                                     :: struct {}
SpatialAnchorMSFT                                       :: ^SpatialAnchorMSFT_T
MSFT_spatial_anchor_SPEC_VERSION                        :: 2
MSFT_SPATIAL_ANCHOR_EXTENSION_NAME                      :: "XR_MSFT_spatial_anchor"
FB_composition_layer_image_layout_SPEC_VERSION          :: 1
FB_COMPOSITION_LAYER_IMAGE_LAYOUT_EXTENSION_NAME        :: "XR_FB_composition_layer_image_layout"
FB_composition_layer_alpha_blend_SPEC_VERSION           :: 3
FB_COMPOSITION_LAYER_ALPHA_BLEND_EXTENSION_NAME         :: "XR_FB_composition_layer_alpha_blend"
MND_headless_SPEC_VERSION                               :: 2
MND_HEADLESS_EXTENSION_NAME                             :: "XR_MND_headless"
OCULUS_android_session_state_enable_SPEC_VERSION        :: 1
OCULUS_ANDROID_SESSION_STATE_ENABLE_EXTENSION_NAME      :: "XR_OCULUS_android_session_state_enable"
EXT_view_configuration_depth_range_SPEC_VERSION         :: 1
EXT_VIEW_CONFIGURATION_DEPTH_RANGE_EXTENSION_NAME       :: "XR_EXT_view_configuration_depth_range"
EXT_conformance_automation_SPEC_VERSION                 :: 3
EXT_CONFORMANCE_AUTOMATION_EXTENSION_NAME               :: "XR_EXT_conformance_automation"
SpatialGraphNodeBindingMSFT_T                           :: struct {}
SpatialGraphNodeBindingMSFT                             :: ^SpatialGraphNodeBindingMSFT_T
GUID_SIZE_MSFT                                          :: 16
MSFT_spatial_graph_bridge_SPEC_VERSION                  :: 2
MSFT_SPATIAL_GRAPH_BRIDGE_EXTENSION_NAME                :: "XR_MSFT_spatial_graph_bridge"
MSFT_hand_interaction_SPEC_VERSION                      :: 1
MSFT_HAND_INTERACTION_EXTENSION_NAME                    :: "XR_MSFT_hand_interaction"
HAND_JOINT_COUNT_EXT                                    :: 26
HandTrackerEXT_T                                        :: struct {}
HandTrackerEXT                                          :: ^HandTrackerEXT_T
EXT_hand_tracking_SPEC_VERSION                          :: 4
EXT_HAND_TRACKING_EXTENSION_NAME                        :: "XR_EXT_hand_tracking"
MSFT_hand_tracking_mesh_SPEC_VERSION                    :: 4
MSFT_HAND_TRACKING_MESH_EXTENSION_NAME                  :: "XR_MSFT_hand_tracking_mesh"
MSFT_secondary_view_configuration_SPEC_VERSION          :: 1
MSFT_SECONDARY_VIEW_CONFIGURATION_EXTENSION_NAME        :: "XR_MSFT_secondary_view_configuration"
MSFT_first_person_observer_SPEC_VERSION                 :: 1
MSFT_FIRST_PERSON_OBSERVER_EXTENSION_NAME               :: "XR_MSFT_first_person_observer"
NULL_CONTROLLER_MODEL_KEY_MSFT                          :: 0
ControllerModelKeyMSFT                                  :: u64
MAX_CONTROLLER_MODEL_NODE_NAME_SIZE_MSFT                :: 64
MSFT_controller_model_SPEC_VERSION                      :: 2
MSFT_CONTROLLER_MODEL_EXTENSION_NAME                    :: "XR_MSFT_controller_model"
EXT_win32_appcontainer_compatible_SPEC_VERSION          :: 1
EXT_WIN32_APPCONTAINER_COMPATIBLE_EXTENSION_NAME        :: "XR_EXT_win32_appcontainer_compatible"
EPIC_view_configuration_fov_SPEC_VERSION                :: 2
EPIC_VIEW_CONFIGURATION_FOV_EXTENSION_NAME              :: "XR_EPIC_view_configuration_fov"
MSFT_composition_layer_reprojection_SPEC_VERSION        :: 1
MSFT_COMPOSITION_LAYER_REPROJECTION_EXTENSION_NAME      :: "XR_MSFT_composition_layer_reprojection"
HUAWEI_controller_interaction_SPEC_VERSION              :: 1
HUAWEI_CONTROLLER_INTERACTION_EXTENSION_NAME            :: "XR_HUAWEI_controller_interaction"
FB_swapchain_update_state_SPEC_VERSION                  :: 3
FB_SWAPCHAIN_UPDATE_STATE_EXTENSION_NAME                :: "XR_FB_swapchain_update_state"
FB_composition_layer_secure_content_SPEC_VERSION        :: 1
FB_COMPOSITION_LAYER_SECURE_CONTENT_EXTENSION_NAME      :: "XR_FB_composition_layer_secure_content"
BodyTrackerFB_T                                         :: struct {}
BodyTrackerFB                                           :: ^BodyTrackerFB_T
FB_body_tracking_SPEC_VERSION                           :: 1
FB_BODY_TRACKING_EXTENSION_NAME                         :: "XR_FB_body_tracking"
EXT_dpad_binding_SPEC_VERSION                           :: 1
EXT_DPAD_BINDING_EXTENSION_NAME                         :: "XR_EXT_dpad_binding"
VALVE_analog_threshold_SPEC_VERSION                     :: 2
VALVE_ANALOG_THRESHOLD_EXTENSION_NAME                   :: "XR_VALVE_analog_threshold"
EXT_hand_joints_motion_range_SPEC_VERSION               :: 1
EXT_HAND_JOINTS_MOTION_RANGE_EXTENSION_NAME             :: "XR_EXT_hand_joints_motion_range"
EXT_samsung_odyssey_controller_SPEC_VERSION             :: 1
EXT_SAMSUNG_ODYSSEY_CONTROLLER_EXTENSION_NAME           :: "XR_EXT_samsung_odyssey_controller"
EXT_hp_mixed_reality_controller_SPEC_VERSION            :: 1
EXT_HP_MIXED_REALITY_CONTROLLER_EXTENSION_NAME          :: "XR_EXT_hp_mixed_reality_controller"
MND_swapchain_usage_input_attachment_bit_SPEC_VERSION   :: 2
MND_SWAPCHAIN_USAGE_INPUT_ATTACHMENT_BIT_EXTENSION_NAME :: "XR_MND_swapchain_usage_input_attachment_bit"
SceneObserverMSFT_T                                     :: struct {}
SceneObserverMSFT                                       :: ^SceneObserverMSFT_T
SceneMSFT_T                                             :: struct {}
SceneMSFT                                               :: ^SceneMSFT_T
MSFT_scene_understanding_SPEC_VERSION                   :: 2
MSFT_SCENE_UNDERSTANDING_EXTENSION_NAME                 :: "XR_MSFT_scene_understanding"
MSFT_scene_understanding_serialization_SPEC_VERSION     :: 2
MSFT_SCENE_UNDERSTANDING_SERIALIZATION_EXTENSION_NAME   :: "XR_MSFT_scene_understanding_serialization"
FB_display_refresh_rate_SPEC_VERSION                    :: 1
FB_DISPLAY_REFRESH_RATE_EXTENSION_NAME                  :: "XR_FB_display_refresh_rate"
HTC_vive_cosmos_controller_interaction_SPEC_VERSION     :: 1
HTC_VIVE_COSMOS_CONTROLLER_INTERACTION_EXTENSION_NAME   :: "XR_HTC_vive_cosmos_controller_interaction"
HTCX_vive_tracker_interaction_SPEC_VERSION              :: 3
HTCX_VIVE_TRACKER_INTERACTION_EXTENSION_NAME            :: "XR_HTCX_vive_tracker_interaction"
FACIAL_EXPRESSION_EYE_COUNT_HTC                         :: 14
FACIAL_EXPRESSION_LIP_COUNT_HTC                         :: 37
FacialTrackerHTC_T                                      :: struct {}
FacialTrackerHTC                                        :: ^FacialTrackerHTC_T
HTC_facial_tracking_SPEC_VERSION                        :: 3
HTC_FACIAL_TRACKING_EXTENSION_NAME                      :: "XR_HTC_facial_tracking"
HTC_vive_focus3_controller_interaction_SPEC_VERSION     :: 2
HTC_VIVE_FOCUS3_CONTROLLER_INTERACTION_EXTENSION_NAME   :: "XR_HTC_vive_focus3_controller_interaction"
HTC_hand_interaction_SPEC_VERSION                       :: 1
HTC_HAND_INTERACTION_EXTENSION_NAME                     :: "XR_HTC_hand_interaction"
HTC_vive_wrist_tracker_interaction_SPEC_VERSION         :: 1
HTC_VIVE_WRIST_TRACKER_INTERACTION_EXTENSION_NAME       :: "XR_HTC_vive_wrist_tracker_interaction"
FB_color_space_SPEC_VERSION                             :: 3
FB_COLOR_SPACE_EXTENSION_NAME                           :: "XR_FB_color_space"
FB_hand_tracking_mesh_SPEC_VERSION                      :: 3
FB_HAND_TRACKING_MESH_EXTENSION_NAME                    :: "XR_FB_hand_tracking_mesh"
FB_hand_tracking_aim_SPEC_VERSION                       :: 2
FB_HAND_TRACKING_AIM_EXTENSION_NAME                     :: "XR_FB_hand_tracking_aim"
HAND_TRACKING_CAPSULE_POINT_COUNT_FB                    :: 2
HAND_TRACKING_CAPSULE_COUNT_FB                          :: 19
FB_hand_tracking_capsules_SPEC_VERSION                  :: 3
FB_HAND_TRACKING_CAPSULES_EXTENSION_NAME                :: "XR_FB_hand_tracking_capsules"
AsyncRequestIdFB                                        :: u64
FB_spatial_entity_SPEC_VERSION                          :: 3
FB_SPATIAL_ENTITY_EXTENSION_NAME                        :: "XR_FB_spatial_entity"
UuidEXT                                                 :: Uuid
FoveationProfileFB_T                                    :: struct {}
FoveationProfileFB                                      :: ^FoveationProfileFB_T
FB_foveation_SPEC_VERSION                               :: 1
FB_FOVEATION_EXTENSION_NAME                             :: "XR_FB_foveation"
FB_foveation_configuration_SPEC_VERSION                 :: 1
FB_FOVEATION_CONFIGURATION_EXTENSION_NAME               :: "XR_FB_foveation_configuration"
MAX_KEYBOARD_TRACKING_NAME_SIZE_FB                      :: 128
FB_keyboard_tracking_SPEC_VERSION                       :: 1
FB_KEYBOARD_TRACKING_EXTENSION_NAME                     :: "XR_FB_keyboard_tracking"
TriangleMeshFB_T                                        :: struct {}
TriangleMeshFB                                          :: ^TriangleMeshFB_T
FB_triangle_mesh_SPEC_VERSION                           :: 2
FB_TRIANGLE_MESH_EXTENSION_NAME                         :: "XR_FB_triangle_mesh"
PassthroughFB_T                                         :: struct {}
PassthroughFB                                           :: ^PassthroughFB_T
PassthroughLayerFB_T                                    :: struct {}
PassthroughLayerFB                                      :: ^PassthroughLayerFB_T
GeometryInstanceFB_T                                    :: struct {}
GeometryInstanceFB                                      :: ^GeometryInstanceFB_T
PASSTHROUGH_COLOR_MAP_MONO_SIZE_FB                      :: 256
FB_passthrough_SPEC_VERSION                             :: 4
FB_PASSTHROUGH_EXTENSION_NAME                           :: "XR_FB_passthrough"
NULL_RENDER_MODEL_KEY_FB                                :: 0
RenderModelKeyFB                                        :: u64
MAX_RENDER_MODEL_NAME_SIZE_FB                           :: 64
FB_render_model_SPEC_VERSION                            :: 4
FB_RENDER_MODEL_EXTENSION_NAME                          :: "XR_FB_render_model"
VARJO_foveated_rendering_SPEC_VERSION                   :: 3
VARJO_FOVEATED_RENDERING_EXTENSION_NAME                 :: "XR_VARJO_foveated_rendering"
VARJO_composition_layer_depth_test_SPEC_VERSION         :: 2
VARJO_COMPOSITION_LAYER_DEPTH_TEST_EXTENSION_NAME       :: "XR_VARJO_composition_layer_depth_test"
VARJO_environment_depth_estimation_SPEC_VERSION         :: 1
VARJO_ENVIRONMENT_DEPTH_ESTIMATION_EXTENSION_NAME       :: "XR_VARJO_environment_depth_estimation"
VARJO_marker_tracking_SPEC_VERSION                      :: 1
VARJO_MARKER_TRACKING_EXTENSION_NAME                    :: "XR_VARJO_marker_tracking"
VARJO_view_offset_SPEC_VERSION                          :: 1
VARJO_VIEW_OFFSET_EXTENSION_NAME                        :: "XR_VARJO_view_offset"
VARJO_xr4_controller_interaction_SPEC_VERSION           :: 2
VARJO_XR4_CONTROLLER_INTERACTION_EXTENSION_NAME         :: "XR_VARJO_xr4_controller_interaction"
ML_ml2_controller_interaction_SPEC_VERSION              :: 1
ML_ML2_CONTROLLER_INTERACTION_EXTENSION_NAME            :: "XR_ML_ml2_controller_interaction"
ML_frame_end_info_SPEC_VERSION                          :: 1
ML_FRAME_END_INFO_EXTENSION_NAME                        :: "XR_ML_frame_end_info"
ML_global_dimmer_SPEC_VERSION                           :: 1
ML_GLOBAL_DIMMER_EXTENSION_NAME                         :: "XR_ML_global_dimmer"
MarkerML                                                :: u64
MarkerDetectorML_T                                      :: struct {}
MarkerDetectorML                                        :: ^MarkerDetectorML_T
ML_marker_understanding_SPEC_VERSION                    :: 1
ML_MARKER_UNDERSTANDING_EXTENSION_NAME                  :: "XR_ML_marker_understanding"
ExportedLocalizationMapML_T                             :: struct {}
ExportedLocalizationMapML                               :: ^ExportedLocalizationMapML_T
MAX_LOCALIZATION_MAP_NAME_LENGTH_ML                     :: 64
ML_localization_map_SPEC_VERSION                        :: 1
ML_LOCALIZATION_MAP_EXTENSION_NAME                      :: "XR_ML_localization_map"
FutureEXT                                               :: distinct u64
ML_spatial_anchors_SPEC_VERSION                         :: 1
ML_SPATIAL_ANCHORS_EXTENSION_NAME                       :: "XR_ML_spatial_anchors"
SpatialAnchorsStorageML_T                               :: struct {}
SpatialAnchorsStorageML                                 :: ^SpatialAnchorsStorageML_T
ML_spatial_anchors_storage_SPEC_VERSION                 :: 1
ML_SPATIAL_ANCHORS_STORAGE_EXTENSION_NAME               :: "XR_ML_spatial_anchors_storage"
SpatialAnchorStoreConnectionMSFT_T                      :: struct {}
SpatialAnchorStoreConnectionMSFT                        :: ^SpatialAnchorStoreConnectionMSFT_T
MAX_SPATIAL_ANCHOR_NAME_SIZE_MSFT                       :: 256
MSFT_spatial_anchor_persistence_SPEC_VERSION            :: 2
MSFT_SPATIAL_ANCHOR_PERSISTENCE_EXTENSION_NAME          :: "XR_MSFT_spatial_anchor_persistence"
MSFT_scene_marker_SPEC_VERSION                          :: 1
MSFT_SCENE_MARKER_EXTENSION_NAME                        :: "XR_MSFT_scene_marker"
HAND_FOREARM_JOINT_COUNT_ULTRALEAP                      :: 27
ULTRALEAP_hand_tracking_forearm_SPEC_VERSION            :: 1
ULTRALEAP_HAND_TRACKING_FOREARM_EXTENSION_NAME          :: "XR_ULTRALEAP_hand_tracking_forearm"
FB_spatial_entity_query_SPEC_VERSION                    :: 1
FB_SPATIAL_ENTITY_QUERY_EXTENSION_NAME                  :: "XR_FB_spatial_entity_query"
FB_spatial_entity_storage_SPEC_VERSION                  :: 1
FB_SPATIAL_ENTITY_STORAGE_EXTENSION_NAME                :: "XR_FB_spatial_entity_storage"
FB_touch_controller_pro_SPEC_VERSION                    :: 1
FB_TOUCH_CONTROLLER_PRO_EXTENSION_NAME                  :: "XR_FB_touch_controller_pro"
SpaceUserFB_T                                           :: struct {}
SpaceUserFB                                             :: ^SpaceUserFB_T
FB_spatial_entity_sharing_SPEC_VERSION                  :: 1
FB_SPATIAL_ENTITY_SHARING_EXTENSION_NAME                :: "XR_FB_spatial_entity_sharing"
FB_space_warp_SPEC_VERSION                              :: 2
FB_SPACE_WARP_EXTENSION_NAME                            :: "XR_FB_space_warp"
FB_haptic_amplitude_envelope_SPEC_VERSION               :: 1
FB_HAPTIC_AMPLITUDE_ENVELOPE_EXTENSION_NAME             :: "XR_FB_haptic_amplitude_envelope"
FB_scene_SPEC_VERSION                                   :: 4
FB_SCENE_EXTENSION_NAME                                 :: "XR_FB_scene"
Extent3DfFB                                             :: Extent3Df
EXT_palm_pose_SPEC_VERSION                              :: 3
EXT_PALM_POSE_EXTENSION_NAME                            :: "XR_EXT_palm_pose"
ALMALENCE_digital_lens_control_SPEC_VERSION             :: 1
ALMALENCE_DIGITAL_LENS_CONTROL_EXTENSION_NAME           :: "XR_ALMALENCE_digital_lens_control"
FB_scene_capture_SPEC_VERSION                           :: 1
FB_SCENE_CAPTURE_EXTENSION_NAME                         :: "XR_FB_scene_capture"
FB_spatial_entity_container_SPEC_VERSION                :: 2
FB_SPATIAL_ENTITY_CONTAINER_EXTENSION_NAME              :: "XR_FB_spatial_entity_container"
FOVEATION_CENTER_SIZE_META                              :: 2
META_foveation_eye_tracked_SPEC_VERSION                 :: 1
META_FOVEATION_EYE_TRACKED_EXTENSION_NAME               :: "XR_META_foveation_eye_tracked"
FaceTrackerFB_T                                         :: struct {}
FaceTrackerFB                                           :: ^FaceTrackerFB_T
FB_face_tracking_SPEC_VERSION                           :: 1
FB_FACE_TRACKING_EXTENSION_NAME                         :: "XR_FB_face_tracking"
EyeTrackerFB_T                                          :: struct {}
EyeTrackerFB                                            :: ^EyeTrackerFB_T
FB_eye_tracking_social_SPEC_VERSION                     :: 1
FB_EYE_TRACKING_SOCIAL_EXTENSION_NAME                   :: "XR_FB_eye_tracking_social"
FB_passthrough_keyboard_hands_SPEC_VERSION              :: 2
FB_PASSTHROUGH_KEYBOARD_HANDS_EXTENSION_NAME            :: "XR_FB_passthrough_keyboard_hands"
FB_composition_layer_settings_SPEC_VERSION              :: 1
FB_COMPOSITION_LAYER_SETTINGS_EXTENSION_NAME            :: "XR_FB_composition_layer_settings"
FB_touch_controller_proximity_SPEC_VERSION              :: 1
FB_TOUCH_CONTROLLER_PROXIMITY_EXTENSION_NAME            :: "XR_FB_touch_controller_proximity"
MAX_HAPTIC_PCM_BUFFER_SIZE_FB                           :: 4000
FB_haptic_pcm_SPEC_VERSION                              :: 1
FB_HAPTIC_PCM_EXTENSION_NAME                            :: "XR_FB_haptic_pcm"
DevicePcmSampleRateGetInfoFB                            :: DevicePcmSampleRateStateFB
EXT_frame_synthesis_SPEC_VERSION                        :: 1
EXT_FRAME_SYNTHESIS_EXTENSION_NAME                      :: "XR_EXT_frame_synthesis"
FB_composition_layer_depth_test_SPEC_VERSION            :: 1
FB_COMPOSITION_LAYER_DEPTH_TEST_EXTENSION_NAME          :: "XR_FB_composition_layer_depth_test"
META_local_dimming_SPEC_VERSION                         :: 1
META_LOCAL_DIMMING_EXTENSION_NAME                       :: "XR_META_local_dimming"
META_passthrough_preferences_SPEC_VERSION               :: 1
META_PASSTHROUGH_PREFERENCES_EXTENSION_NAME             :: "XR_META_passthrough_preferences"
VirtualKeyboardMETA_T                                   :: struct {}
VirtualKeyboardMETA                                     :: ^VirtualKeyboardMETA_T
MAX_VIRTUAL_KEYBOARD_COMMIT_TEXT_SIZE_META              :: 3992
META_virtual_keyboard_SPEC_VERSION                      :: 1
META_VIRTUAL_KEYBOARD_EXTENSION_NAME                    :: "XR_META_virtual_keyboard"
MAX_EXTERNAL_CAMERA_NAME_SIZE_OCULUS                    :: 32
OCULUS_external_camera_SPEC_VERSION                     :: 1
OCULUS_EXTERNAL_CAMERA_EXTENSION_NAME                   :: "XR_OCULUS_external_camera"
META_performance_metrics_SPEC_VERSION                   :: 2
META_PERFORMANCE_METRICS_EXTENSION_NAME                 :: "XR_META_performance_metrics"
FB_spatial_entity_storage_batch_SPEC_VERSION            :: 1
FB_SPATIAL_ENTITY_STORAGE_BATCH_EXTENSION_NAME          :: "XR_FB_spatial_entity_storage_batch"
META_detached_controllers_SPEC_VERSION                  :: 1
META_DETACHED_CONTROLLERS_EXTENSION_NAME                :: "XR_META_detached_controllers"
SpaceUserIdFB                                           :: u64
FB_spatial_entity_user_SPEC_VERSION                     :: 1
FB_SPATIAL_ENTITY_USER_EXTENSION_NAME                   :: "XR_FB_spatial_entity_user"
META_headset_id_SPEC_VERSION                            :: 2
META_HEADSET_ID_EXTENSION_NAME                          :: "XR_META_headset_id"
META_hand_tracking_microgestures_SPEC_VERSION           :: 1
META_HAND_TRACKING_MICROGESTURES_EXTENSION_NAME         :: "XR_META_hand_tracking_microgestures"
META_recommended_layer_resolution_SPEC_VERSION          :: 1
META_RECOMMENDED_LAYER_RESOLUTION_EXTENSION_NAME        :: "XR_META_recommended_layer_resolution"
META_spatial_entity_persistence_SPEC_VERSION            :: 1
META_SPATIAL_ENTITY_PERSISTENCE_EXTENSION_NAME          :: "XR_META_spatial_entity_persistence"
PassthroughColorLutMETA_T                               :: struct {}
PassthroughColorLutMETA                                 :: ^PassthroughColorLutMETA_T
META_passthrough_color_lut_SPEC_VERSION                 :: 1
META_PASSTHROUGH_COLOR_LUT_EXTENSION_NAME               :: "XR_META_passthrough_color_lut"
META_spatial_entity_mesh_SPEC_VERSION                   :: 1
META_SPATIAL_ENTITY_MESH_EXTENSION_NAME                 :: "XR_META_spatial_entity_mesh"
META_automatic_layer_filter_SPEC_VERSION                :: 1
META_AUTOMATIC_LAYER_FILTER_EXTENSION_NAME              :: "XR_META_automatic_layer_filter"
META_body_tracking_full_body_SPEC_VERSION               :: 1
META_BODY_TRACKING_FULL_BODY_EXTENSION_NAME             :: "XR_META_body_tracking_full_body"
META_touch_controller_plus_SPEC_VERSION                 :: 1
META_TOUCH_CONTROLLER_PLUS_EXTENSION_NAME               :: "XR_META_touch_controller_plus"
META_passthrough_layer_resumed_event_SPEC_VERSION       :: 1
META_PASSTHROUGH_LAYER_RESUMED_EVENT_EXTENSION_NAME     :: "XR_META_passthrough_layer_resumed_event"
META_body_tracking_calibration_SPEC_VERSION             :: 1
META_BODY_TRACKING_CALIBRATION_EXTENSION_NAME           :: "XR_META_body_tracking_calibration"
FaceTracker2FB_T                                        :: struct {}
FaceTracker2FB                                          :: ^FaceTracker2FB_T
FB_face_tracking2_SPEC_VERSION                          :: 1
FB_FACE_TRACKING2_EXTENSION_NAME                        :: "XR_FB_face_tracking2"
META_spatial_entity_sharing_SPEC_VERSION                :: 1
META_SPATIAL_ENTITY_SHARING_EXTENSION_NAME              :: "XR_META_spatial_entity_sharing"
MAX_SPACES_PER_SHARE_REQUEST_META                       :: 32
EnvironmentDepthProviderMETA_T                          :: struct {}
EnvironmentDepthProviderMETA                            :: ^EnvironmentDepthProviderMETA_T
EnvironmentDepthSwapchainMETA_T                         :: struct {}
EnvironmentDepthSwapchainMETA                           :: ^EnvironmentDepthSwapchainMETA_T
META_environment_depth_SPEC_VERSION                     :: 1
META_ENVIRONMENT_DEPTH_EXTENSION_NAME                   :: "XR_META_environment_depth"
EXT_uuid_SPEC_VERSION                                   :: 1
EXT_UUID_EXTENSION_NAME                                 :: "XR_EXT_uuid"
UUID_SIZE_EXT                                           :: 16
RenderModelIdEXT                                        :: u64
RenderModelEXT_T                                        :: struct {}
RenderModelEXT                                          :: ^RenderModelEXT_T
RenderModelAssetEXT_T                                   :: struct {}
RenderModelAssetEXT                                     :: ^RenderModelAssetEXT_T
MAX_RENDER_MODEL_ASSET_NODE_NAME_SIZE_EXT               :: 64
EXT_render_model_SPEC_VERSION                           :: 1
EXT_RENDER_MODEL_EXTENSION_NAME                         :: "XR_EXT_render_model"
NULL_RENDER_MODEL_ID_EXT                                :: 0
EXT_interaction_render_model_SPEC_VERSION               :: 1
EXT_INTERACTION_RENDER_MODEL_EXTENSION_NAME             :: "XR_EXT_interaction_render_model"
EXT_hand_interaction_SPEC_VERSION                       :: 1
EXT_HAND_INTERACTION_EXTENSION_NAME                     :: "XR_EXT_hand_interaction"
QCOM_tracking_optimization_settings_SPEC_VERSION        :: 1
QCOM_TRACKING_OPTIMIZATION_SETTINGS_EXTENSION_NAME      :: "XR_QCOM_tracking_optimization_settings"
PassthroughHTC_T                                        :: struct {}
PassthroughHTC                                          :: ^PassthroughHTC_T
HTC_passthrough_SPEC_VERSION                            :: 1
HTC_PASSTHROUGH_EXTENSION_NAME                          :: "XR_HTC_passthrough"
HTC_foveation_SPEC_VERSION                              :: 1
HTC_FOVEATION_EXTENSION_NAME                            :: "XR_HTC_foveation"
MAX_SPATIAL_ANCHOR_NAME_SIZE_HTC                        :: 256
HTC_anchor_SPEC_VERSION                                 :: 1
HTC_ANCHOR_EXTENSION_NAME                               :: "XR_HTC_anchor"
BODY_JOINT_COUNT_HTC                                    :: 26
BodyTrackerHTC_T                                        :: struct {}
BodyTrackerHTC                                          :: ^BodyTrackerHTC_T
HTC_body_tracking_SPEC_VERSION                          :: 1
HTC_BODY_TRACKING_EXTENSION_NAME                        :: "XR_HTC_body_tracking"
EXT_active_action_set_priority_SPEC_VERSION             :: 1
EXT_ACTIVE_ACTION_SET_PRIORITY_EXTENSION_NAME           :: "XR_EXT_active_action_set_priority"
MNDX_force_feedback_curl_SPEC_VERSION                   :: 1
MNDX_FORCE_FEEDBACK_CURL_EXTENSION_NAME                 :: "XR_MNDX_force_feedback_curl"
BD_controller_interaction_SPEC_VERSION                  :: 2
BD_CONTROLLER_INTERACTION_EXTENSION_NAME                :: "XR_BD_controller_interaction"
BODY_JOINT_COUNT_BD                                     :: 24
BODY_JOINT_WITHOUT_ARM_COUNT_BD                         :: 16
BodyTrackerBD_T                                         :: struct {}
BodyTrackerBD                                           :: ^BodyTrackerBD_T
BD_body_tracking_SPEC_VERSION                           :: 1
BD_BODY_TRACKING_EXTENSION_NAME                         :: "XR_BD_body_tracking"
SpatialEntityIdBD                                       :: u64
SenseDataProviderBD_T                                   :: struct {}
SenseDataProviderBD                                     :: ^SenseDataProviderBD_T
SenseDataSnapshotBD_T                                   :: struct {}
SenseDataSnapshotBD                                     :: ^SenseDataSnapshotBD_T
AnchorBD_T                                              :: struct {}
AnchorBD                                                :: ^AnchorBD_T
BD_spatial_sensing_SPEC_VERSION                         :: 1
BD_SPATIAL_SENSING_EXTENSION_NAME                       :: "XR_BD_spatial_sensing"
BD_spatial_anchor_SPEC_VERSION                          :: 2
BD_SPATIAL_ANCHOR_EXTENSION_NAME                        :: "XR_BD_spatial_anchor"
BD_spatial_anchor_sharing_SPEC_VERSION                  :: 2
BD_SPATIAL_ANCHOR_SHARING_EXTENSION_NAME                :: "XR_BD_spatial_anchor_sharing"
BD_spatial_scene_SPEC_VERSION                           :: 1
BD_SPATIAL_SCENE_EXTENSION_NAME                         :: "XR_BD_spatial_scene"
BD_spatial_mesh_SPEC_VERSION                            :: 1
BD_SPATIAL_MESH_EXTENSION_NAME                          :: "XR_BD_spatial_mesh"
BD_future_progress_SPEC_VERSION                         :: 1
BD_FUTURE_PROGRESS_EXTENSION_NAME                       :: "XR_BD_future_progress"
BD_spatial_plane_SPEC_VERSION                           :: 1
BD_SPATIAL_PLANE_EXTENSION_NAME                         :: "XR_BD_spatial_plane"
EXT_local_floor_SPEC_VERSION                            :: 1
EXT_LOCAL_FLOOR_EXTENSION_NAME                          :: "XR_EXT_local_floor"
EXT_hand_tracking_data_source_SPEC_VERSION              :: 1
EXT_HAND_TRACKING_DATA_SOURCE_EXTENSION_NAME            :: "XR_EXT_hand_tracking_data_source"
PlaneDetectorEXT_T                                      :: struct {}
PlaneDetectorEXT                                        :: ^PlaneDetectorEXT_T
EXT_plane_detection_SPEC_VERSION                        :: 2
EXT_PLANE_DETECTION_EXTENSION_NAME                      :: "XR_EXT_plane_detection"
Extent3DfEXT                                            :: Extent3Df
OPPO_controller_interaction_SPEC_VERSION                :: 1
OPPO_CONTROLLER_INTERACTION_EXTENSION_NAME              :: "XR_OPPO_controller_interaction"
NULL_TRACKABLE_ANDROID                                  :: 0
TrackableANDROID                                        :: u64
TrackableTrackerANDROID_T                               :: struct {}
TrackableTrackerANDROID                                 :: ^TrackableTrackerANDROID_T
ANDROID_trackables_SPEC_VERSION                         :: 1
ANDROID_TRACKABLES_EXTENSION_NAME                       :: "XR_ANDROID_trackables"
DeviceAnchorPersistenceANDROID_T                        :: struct {}
DeviceAnchorPersistenceANDROID                          :: ^DeviceAnchorPersistenceANDROID_T
ANDROID_device_anchor_persistence_SPEC_VERSION          :: 1
ANDROID_DEVICE_ANCHOR_PERSISTENCE_EXTENSION_NAME        :: "XR_ANDROID_device_anchor_persistence"
ANDROID_passthrough_camera_state_SPEC_VERSION           :: 1
ANDROID_PASSTHROUGH_CAMERA_STATE_EXTENSION_NAME         :: "XR_ANDROID_passthrough_camera_state"
ANDROID_raycast_SPEC_VERSION                            :: 1
ANDROID_RAYCAST_EXTENSION_NAME                          :: "XR_ANDROID_raycast"
ANDROID_trackables_object_SPEC_VERSION                  :: 1
ANDROID_TRACKABLES_OBJECT_EXTENSION_NAME                :: "XR_ANDROID_trackables_object"
EXT_future_SPEC_VERSION                                 :: 1
EXT_FUTURE_EXTENSION_NAME                               :: "XR_EXT_future"
NULL_FUTURE_EXT                                         :: 0
EXT_user_presence_SPEC_VERSION                          :: 1
EXT_USER_PRESENCE_EXTENSION_NAME                        :: "XR_EXT_user_presence"
ML_user_calibration_SPEC_VERSION                        :: 1
ML_USER_CALIBRATION_EXTENSION_NAME                      :: "XR_ML_user_calibration"
ML_system_notifications_SPEC_VERSION                    :: 1
ML_SYSTEM_NOTIFICATIONS_EXTENSION_NAME                  :: "XR_ML_system_notifications"
WorldMeshDetectorML_T                                   :: struct {}
WorldMeshDetectorML                                     :: ^WorldMeshDetectorML_T
ML_world_mesh_detection_SPEC_VERSION                    :: 1
ML_WORLD_MESH_DETECTION_EXTENSION_NAME                  :: "XR_ML_world_mesh_detection"
FacialExpressionClientML_T                              :: struct {}
FacialExpressionClientML                                :: ^FacialExpressionClientML_T
ML_facial_expression_SPEC_VERSION                       :: 1
ML_FACIAL_EXPRESSION_EXTENSION_NAME                     :: "XR_ML_facial_expression"
ML_view_configuration_depth_range_change_SPEC_VERSION   :: 1
ML_VIEW_CONFIGURATION_DEPTH_RANGE_CHANGE_EXTENSION_NAME :: "XR_ML_view_configuration_depth_range_change"
YVR_controller_interaction_SPEC_VERSION                 :: 1
YVR_CONTROLLER_INTERACTION_EXTENSION_NAME               :: "XR_YVR_controller_interaction"
META_simultaneous_hands_and_controllers_SPEC_VERSION    :: 1
META_SIMULTANEOUS_HANDS_AND_CONTROLLERS_EXTENSION_NAME  :: "XR_META_simultaneous_hands_and_controllers"
EXT_composition_layer_inverted_alpha_SPEC_VERSION       :: 1
EXT_COMPOSITION_LAYER_INVERTED_ALPHA_EXTENSION_NAME     :: "XR_EXT_composition_layer_inverted_alpha"
MAX_COLOCATION_DISCOVERY_BUFFER_SIZE_META               :: 1024
META_colocation_discovery_SPEC_VERSION                  :: 1
META_COLOCATION_DISCOVERY_EXTENSION_NAME                :: "XR_META_colocation_discovery"
META_spatial_entity_group_sharing_SPEC_VERSION          :: 1
META_SPATIAL_ENTITY_GROUP_SHARING_EXTENSION_NAME        :: "XR_META_spatial_entity_group_sharing"
ANDROID_trackables_marker_SPEC_VERSION                  :: 1
ANDROID_TRACKABLES_MARKER_EXTENSION_NAME                :: "XR_ANDROID_trackables_marker"
NULL_SPATIAL_ENTITY_ID_EXT                              :: 0
NULL_SPATIAL_BUFFER_ID_EXT                              :: 0
SpatialEntityIdEXT                                      :: u64
SpatialBufferIdEXT                                      :: u64
SpatialEntityEXT_T                                      :: struct {}
SpatialEntityEXT                                        :: ^SpatialEntityEXT_T
SpatialContextEXT_T                                     :: struct {}
SpatialContextEXT                                       :: ^SpatialContextEXT_T
SpatialSnapshotEXT_T                                    :: struct {}
SpatialSnapshotEXT                                      :: ^SpatialSnapshotEXT_T
EXT_spatial_entity_SPEC_VERSION                         :: 1
EXT_SPATIAL_ENTITY_EXTENSION_NAME                       :: "XR_EXT_spatial_entity"
EXT_spatial_plane_tracking_SPEC_VERSION                 :: 1
EXT_SPATIAL_PLANE_TRACKING_EXTENSION_NAME               :: "XR_EXT_spatial_plane_tracking"
EXT_spatial_marker_tracking_SPEC_VERSION                :: 1
EXT_SPATIAL_MARKER_TRACKING_EXTENSION_NAME              :: "XR_EXT_spatial_marker_tracking"
LOGITECH_mx_ink_stylus_interaction_SPEC_VERSION         :: 1
LOGITECH_MX_INK_STYLUS_INTERACTION_EXTENSION_NAME       :: "XR_LOGITECH_mx_ink_stylus_interaction"
EXT_spatial_anchor_SPEC_VERSION                         :: 1
EXT_SPATIAL_ANCHOR_EXTENSION_NAME                       :: "XR_EXT_spatial_anchor"
SpatialPersistenceContextEXT_T                          :: struct {}
SpatialPersistenceContextEXT                            :: ^SpatialPersistenceContextEXT_T
EXT_spatial_persistence_SPEC_VERSION                    :: 1
EXT_SPATIAL_PERSISTENCE_EXTENSION_NAME                  :: "XR_EXT_spatial_persistence"
EXT_spatial_persistence_operations_SPEC_VERSION         :: 1
EXT_SPATIAL_PERSISTENCE_OPERATIONS_EXTENSION_NAME       :: "XR_EXT_spatial_persistence_operations"
EXT_loader_init_properties_SPEC_VERSION                 :: 1
EXT_LOADER_INIT_PROPERTIES_EXTENSION_NAME               :: "XR_EXT_loader_init_properties"
KHR_android_thread_settings_SPEC_VERSION                :: 6
KHR_ANDROID_THREAD_SETTINGS_EXTENSION_NAME              :: "XR_KHR_android_thread_settings"
KHR_android_surface_swapchain_SPEC_VERSION              :: 4
KHR_ANDROID_SURFACE_SWAPCHAIN_EXTENSION_NAME            :: "XR_KHR_android_surface_swapchain"
KHR_android_create_instance_SPEC_VERSION                :: 3
KHR_ANDROID_CREATE_INSTANCE_EXTENSION_NAME              :: "XR_KHR_android_create_instance"
SetProcAddressType :: #type proc(p: rawptr, name: cstring)
