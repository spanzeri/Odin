//
// OpenXR wrapper generated from: https://raw.githubusercontent.com/KhronosGroup/OpenXR-SDK/refs/heads/main/include/openxr/openxr.h
//
package vendor_openxr

ApiLayerProperties :: struct {
    type:         StructureType,
    next:         rawptr,
    layerName:    [MAX_API_LAYER_NAME_SIZE]u8,
    specVersion:  Version,
    layerVersion: u32,
    description:  [MAX_API_LAYER_DESCRIPTION_SIZE]u8,
}

ExtensionProperties :: struct {
    type:             StructureType,
    next:             rawptr,
    extensionName:    [MAX_EXTENSION_NAME_SIZE]u8,
    extensionVersion: u32,
}

ApplicationInfo :: struct {
    applicationName:    [MAX_APPLICATION_NAME_SIZE]u8,
    applicationVersion: u32,
    engineName:         [MAX_ENGINE_NAME_SIZE]u8,
    engineVersion:      u32,
    apiVersion:         Version,
}

InstanceCreateInfo :: struct {
    type:                  StructureType,
    next:                  rawptr,
    createFlags:           InstanceCreateFlags,
    applicationInfo:       ApplicationInfo,
    enabledApiLayerCount:  u32,
    enabledApiLayerNames:  [^]cstring,
    enabledExtensionCount: u32,
    enabledExtensionNames: [^]cstring,
}

InstanceProperties :: struct {
    type:           StructureType,
    next:           rawptr,
    runtimeVersion: Version,
    runtimeName:    [MAX_RUNTIME_NAME_SIZE]u8,
}

EventDataBuffer :: struct {
    type:    StructureType,
    next:    rawptr,
    varying: [4000]u8,
}

SystemGetInfo :: struct {
    type:       StructureType,
    next:       rawptr,
    formFactor: FormFactor,
}

SystemGraphicsProperties :: struct {
    maxSwapchainImageHeight: u32,
    maxSwapchainImageWidth:  u32,
    maxLayerCount:           u32,
}

SystemTrackingProperties :: struct {
    orientationTracking: b32,
    positionTracking:    b32,
}

SystemProperties :: struct {
    type:               StructureType,
    next:               rawptr,
    systemId:           SystemId,
    vendorId:           u32,
    systemName:         [MAX_SYSTEM_NAME_SIZE]u8,
    graphicsProperties: SystemGraphicsProperties,
    trackingProperties: SystemTrackingProperties,
}

SessionCreateInfo :: struct {
    type:        StructureType,
    next:        rawptr,
    createFlags: SessionCreateFlags,
    systemId:    SystemId,
}

Vector3f :: struct {
    x: f32,
    y: f32,
    z: f32,
}

SpaceVelocity :: struct {
    type:            StructureType,
    next:            rawptr,
    velocityFlags:   SpaceVelocityFlags,
    linearVelocity:  Vector3f,
    angularVelocity: Vector3f,
}

Quaternionf :: struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
}

Posef :: struct {
    orientation: Quaternionf,
    position:    Vector3f,
}

ReferenceSpaceCreateInfo :: struct {
    type:                 StructureType,
    next:                 rawptr,
    referenceSpaceType:   ReferenceSpaceType,
    poseInReferenceSpace: Posef,
}

Extent2Df :: struct {
    width:  f32,
    height: f32,
}

ActionSpaceCreateInfo :: struct {
    type:              StructureType,
    next:              rawptr,
    action:            Action,
    subactionPath:     Path,
    poseInActionSpace: Posef,
}

SpaceLocation :: struct {
    type:          StructureType,
    next:          rawptr,
    locationFlags: SpaceLocationFlags,
    pose:          Posef,
}

ViewConfigurationProperties :: struct {
    type:                  StructureType,
    next:                  rawptr,
    viewConfigurationType: ViewConfigurationType,
    fovMutable:            b32,
}

ViewConfigurationView :: struct {
    type:                            StructureType,
    next:                            rawptr,
    recommendedImageRectWidth:       u32,
    maxImageRectWidth:               u32,
    recommendedImageRectHeight:      u32,
    maxImageRectHeight:              u32,
    recommendedSwapchainSampleCount: u32,
    maxSwapchainSampleCount:         u32,
}

SwapchainCreateInfo :: struct {
    type:        StructureType,
    next:        rawptr,
    createFlags: SwapchainCreateFlags,
    usageFlags:  SwapchainUsageFlags,
    format:      i64,
    sampleCount: u32,
    width:       u32,
    height:      u32,
    faceCount:   u32,
    arraySize:   u32,
    mipCount:    u32,
}

SwapchainImageBaseHeader :: struct {
    type: StructureType,
    next: rawptr,
}

SwapchainImageAcquireInfo :: struct {
    type: StructureType,
    next: rawptr,
}

SwapchainImageWaitInfo :: struct {
    type:    StructureType,
    next:    rawptr,
    timeout: Duration,
}

SwapchainImageReleaseInfo :: struct {
    type: StructureType,
    next: rawptr,
}

SessionBeginInfo :: struct {
    type:                         StructureType,
    next:                         rawptr,
    primaryViewConfigurationType: ViewConfigurationType,
}

FrameWaitInfo :: struct {
    type: StructureType,
    next: rawptr,
}

FrameState :: struct {
    type:                   StructureType,
    next:                   rawptr,
    predictedDisplayTime:   Time,
    predictedDisplayPeriod: Duration,
    shouldRender:           b32,
}

FrameBeginInfo :: struct {
    type: StructureType,
    next: rawptr,
}

CompositionLayerBaseHeader :: struct {
    type:       StructureType,
    next:       rawptr,
    layerFlags: CompositionLayerFlags,
    space:      Space,
}

FrameEndInfo :: struct {
    type:                 StructureType,
    next:                 rawptr,
    displayTime:          Time,
    environmentBlendMode: EnvironmentBlendMode,
    layerCount:           u32,
    layers:               [^]^CompositionLayerBaseHeader,
}

ViewLocateInfo :: struct {
    type:                  StructureType,
    next:                  rawptr,
    viewConfigurationType: ViewConfigurationType,
    displayTime:           Time,
    space:                 Space,
}

ViewState :: struct {
    type:           StructureType,
    next:           rawptr,
    viewStateFlags: ViewStateFlags,
}

Fovf :: struct {
    angleLeft:  f32,
    angleRight: f32,
    angleUp:    f32,
    angleDown:  f32,
}

View :: struct {
    type: StructureType,
    next: rawptr,
    pose: Posef,
    fov:  Fovf,
}

ActionSetCreateInfo :: struct {
    type:                   StructureType,
    next:                   rawptr,
    actionSetName:          [MAX_ACTION_SET_NAME_SIZE]u8,
    localizedActionSetName: [MAX_LOCALIZED_ACTION_SET_NAME_SIZE]u8,
    priority:               u32,
}

ActionCreateInfo :: struct {
    type:                StructureType,
    next:                rawptr,
    actionName:          [MAX_ACTION_NAME_SIZE]u8,
    actionType:          ActionType,
    countSubactionPaths: u32,
    subactionPaths:      [^]Path,
    localizedActionName: [MAX_LOCALIZED_ACTION_NAME_SIZE]u8,
}

ActionSuggestedBinding :: struct {
    action:  Action,
    binding: Path,
}

InteractionProfileSuggestedBinding :: struct {
    type:                   StructureType,
    next:                   rawptr,
    interactionProfile:     Path,
    countSuggestedBindings: u32,
    suggestedBindings:      [^]ActionSuggestedBinding,
}

SessionActionSetsAttachInfo :: struct {
    type:            StructureType,
    next:            rawptr,
    countActionSets: u32,
    actionSets:      [^]ActionSet,
}

InteractionProfileState :: struct {
    type:               StructureType,
    next:               rawptr,
    interactionProfile: Path,
}

ActionStateGetInfo :: struct {
    type:          StructureType,
    next:          rawptr,
    action:        Action,
    subactionPath: Path,
}

ActionStateBoolean :: struct {
    type:                 StructureType,
    next:                 rawptr,
    currentState:         b32,
    changedSinceLastSync: b32,
    lastChangeTime:       Time,
    isActive:             b32,
}

ActionStateFloat :: struct {
    type:                 StructureType,
    next:                 rawptr,
    currentState:         f32,
    changedSinceLastSync: b32,
    lastChangeTime:       Time,
    isActive:             b32,
}

Vector2f :: struct {
    x: f32,
    y: f32,
}

ActionStateVector2f :: struct {
    type:                 StructureType,
    next:                 rawptr,
    currentState:         Vector2f,
    changedSinceLastSync: b32,
    lastChangeTime:       Time,
    isActive:             b32,
}

ActionStatePose :: struct {
    type:     StructureType,
    next:     rawptr,
    isActive: b32,
}

ActiveActionSet :: struct {
    actionSet:     ActionSet,
    subactionPath: Path,
}

ActionsSyncInfo :: struct {
    type:                  StructureType,
    next:                  rawptr,
    countActiveActionSets: u32,
    activeActionSets:      [^]ActiveActionSet,
}

BoundSourcesForActionEnumerateInfo :: struct {
    type:   StructureType,
    next:   rawptr,
    action: Action,
}

InputSourceLocalizedNameGetInfo :: struct {
    type:            StructureType,
    next:            rawptr,
    sourcePath:      Path,
    whichComponents: InputSourceLocalizedNameFlags,
}

HapticActionInfo :: struct {
    type:          StructureType,
    next:          rawptr,
    action:        Action,
    subactionPath: Path,
}

HapticBaseHeader :: struct {
    type: StructureType,
    next: rawptr,
}

BaseInStructure :: struct {
    type: StructureType,
    next: ^BaseInStructure,
}

BaseOutStructure :: struct {
    type: StructureType,
    next: ^BaseOutStructure,
}

Offset2Di :: struct {
    x: i32,
    y: i32,
}

Extent2Di :: struct {
    width:  i32,
    height: i32,
}

Rect2Di :: struct {
    offset: Offset2Di,
    extent: Extent2Di,
}

SwapchainSubImage :: struct {
    swapchain:       Swapchain,
    imageRect:       Rect2Di,
    imageArrayIndex: u32,
}

CompositionLayerProjectionView :: struct {
    type:     StructureType,
    next:     rawptr,
    pose:     Posef,
    fov:      Fovf,
    subImage: SwapchainSubImage,
}

CompositionLayerProjection :: struct {
    type:       StructureType,
    next:       rawptr,
    layerFlags: CompositionLayerFlags,
    space:      Space,
    viewCount:  u32,
    views:      [^]CompositionLayerProjectionView,
}

CompositionLayerQuad :: struct {
    type:          StructureType,
    next:          rawptr,
    layerFlags:    CompositionLayerFlags,
    space:         Space,
    eyeVisibility: EyeVisibility,
    subImage:      SwapchainSubImage,
    pose:          Posef,
    size:          Extent2Df,
}

EventDataBaseHeader :: struct {
    type: StructureType,
    next: rawptr,
}

EventDataEventsLost :: struct {
    type:           StructureType,
    next:           rawptr,
    lostEventCount: u32,
}

EventDataInstanceLossPending :: struct {
    type:     StructureType,
    next:     rawptr,
    lossTime: Time,
}

EventDataSessionStateChanged :: struct {
    type:    StructureType,
    next:    rawptr,
    session: Session,
    state:   SessionState,
    time:    Time,
}

EventDataReferenceSpaceChangePending :: struct {
    type:                StructureType,
    next:                rawptr,
    session:             Session,
    referenceSpaceType:  ReferenceSpaceType,
    changeTime:          Time,
    poseValid:           b32,
    poseInPreviousSpace: Posef,
}

EventDataInteractionProfileChanged :: struct {
    type:    StructureType,
    next:    rawptr,
    session: Session,
}

HapticVibration :: struct {
    type:      StructureType,
    next:      rawptr,
    duration:  Duration,
    frequency: f32,
    amplitude: f32,
}

Offset2Df :: struct {
    x: f32,
    y: f32,
}

Rect2Df :: struct {
    offset: Offset2Df,
    extent: Extent2Df,
}

Vector4f :: struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
}

Color4f :: struct {
    r: f32,
    g: f32,
    b: f32,
    a: f32,
}

Color3f :: struct {
    r: f32,
    g: f32,
    b: f32,
}

Extent3Df :: struct {
    width:  f32,
    height: f32,
    depth:  f32,
}

Spheref :: struct {
    center: Posef,
    radius: f32,
}

Boxf :: struct {
    center:  Posef,
    extents: Extent3Df,
}

Frustumf :: struct {
    pose:  Posef,
    fov:   Fovf,
    nearZ: f32,
    farZ:  f32,
}

Uuid :: struct {
    data: [UUID_SIZE]u8,
}

SpacesLocateInfo :: struct {
    type:       StructureType,
    next:       rawptr,
    baseSpace:  Space,
    time:       Time,
    spaceCount: u32,
    spaces:     [^]Space,
}

SpaceLocationData :: struct {
    locationFlags: SpaceLocationFlags,
    pose:          Posef,
}

SpaceLocations :: struct {
    type:          StructureType,
    next:          rawptr,
    locationCount: u32,
    locations:     [^]SpaceLocationData,
}

SpaceVelocityData :: struct {
    velocityFlags:   SpaceVelocityFlags,
    linearVelocity:  Vector3f,
    angularVelocity: Vector3f,
}

SpaceVelocities :: struct {
    type:          StructureType,
    next:          rawptr,
    velocityCount: u32,
    velocities:    [^]SpaceVelocityData,
}

CompositionLayerCubeKHR :: struct {
    type:            StructureType,
    next:            rawptr,
    layerFlags:      CompositionLayerFlags,
    space:           Space,
    eyeVisibility:   EyeVisibility,
    swapchain:       Swapchain,
    imageArrayIndex: u32,
    orientation:     Quaternionf,
}

CompositionLayerDepthInfoKHR :: struct {
    type:     StructureType,
    next:     rawptr,
    subImage: SwapchainSubImage,
    minDepth: f32,
    maxDepth: f32,
    nearZ:    f32,
    farZ:     f32,
}

CompositionLayerCylinderKHR :: struct {
    type:          StructureType,
    next:          rawptr,
    layerFlags:    CompositionLayerFlags,
    space:         Space,
    eyeVisibility: EyeVisibility,
    subImage:      SwapchainSubImage,
    pose:          Posef,
    radius:        f32,
    centralAngle:  f32,
    aspectRatio:   f32,
}

CompositionLayerEquirectKHR :: struct {
    type:          StructureType,
    next:          rawptr,
    layerFlags:    CompositionLayerFlags,
    space:         Space,
    eyeVisibility: EyeVisibility,
    subImage:      SwapchainSubImage,
    pose:          Posef,
    radius:        f32,
    scale:         Vector2f,
    bias:          Vector2f,
}

VisibilityMaskKHR :: struct {
    type:                StructureType,
    next:                rawptr,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertices:            [^]Vector2f,
    indexCapacityInput:  u32,
    indexCountOutput:    u32,
    indices:             [^]u32,
}

EventDataVisibilityMaskChangedKHR :: struct {
    type:                  StructureType,
    next:                  rawptr,
    session:               Session,
    viewConfigurationType: ViewConfigurationType,
    viewIndex:             u32,
}

CompositionLayerColorScaleBiasKHR :: struct {
    type:       StructureType,
    next:       rawptr,
    colorScale: Color4f,
    colorBias:  Color4f,
}

LoaderInitInfoBaseHeaderKHR :: struct {
    type: StructureType,
    next: rawptr,
}

CompositionLayerEquirect2KHR :: struct {
    type:                   StructureType,
    next:                   rawptr,
    layerFlags:             CompositionLayerFlags,
    space:                  Space,
    eyeVisibility:          EyeVisibility,
    subImage:               SwapchainSubImage,
    pose:                   Posef,
    radius:                 f32,
    centralHorizontalAngle: f32,
    upperVerticalAngle:     f32,
    lowerVerticalAngle:     f32,
}

BindingModificationBaseHeaderKHR :: struct {
    type: StructureType,
    next: rawptr,
}

BindingModificationsKHR :: struct {
    type:                     StructureType,
    next:                     rawptr,
    bindingModificationCount: u32,
    bindingModifications:     [^]^BindingModificationBaseHeaderKHR,
}

EventDataPerfSettingsEXT :: struct {
    type:      StructureType,
    next:      rawptr,
    domain:    PerfSettingsDomainEXT,
    subDomain: PerfSettingsSubDomainEXT,
    fromLevel: PerfSettingsNotificationLevelEXT,
    toLevel:   PerfSettingsNotificationLevelEXT,
}

DebugUtilsObjectNameInfoEXT :: struct {
    type:         StructureType,
    next:         rawptr,
    objectType:   ObjectType,
    objectHandle: u64,
    objectName:   cstring,
}

DebugUtilsLabelEXT :: struct {
    type:      StructureType,
    next:      rawptr,
    labelName: cstring,
}

DebugUtilsMessengerCallbackDataEXT :: struct {
    type:              StructureType,
    next:              rawptr,
    messageId:         cstring,
    functionName:      cstring,
    message:           cstring,
    objectCount:       u32,
    objects:           [^]DebugUtilsObjectNameInfoEXT,
    sessionLabelCount: u32,
    sessionLabels:     [^]DebugUtilsLabelEXT,
}

DebugUtilsMessengerCreateInfoEXT :: struct {
    type:              StructureType,
    next:              rawptr,
    messageSeverities: DebugUtilsMessageSeverityFlagsEXT,
    messageTypes:      DebugUtilsMessageTypeFlagsEXT,
    userCallback:      ProcDebugUtilsMessengerCallbackEXT,
    userData:          rawptr,
}

SystemEyeGazeInteractionPropertiesEXT :: struct {
    type:                       StructureType,
    next:                       rawptr,
    supportsEyeGazeInteraction: b32,
}

EyeGazeSampleTimeEXT :: struct {
    type: StructureType,
    next: rawptr,
    time: Time,
}

SessionCreateInfoOverlayEXTX :: struct {
    type:                   StructureType,
    next:                   rawptr,
    createFlags:            OverlaySessionCreateFlagsEXTX,
    sessionLayersPlacement: u32,
}

EventDataMainSessionVisibilityChangedEXTX :: struct {
    type:    StructureType,
    next:    rawptr,
    visible: b32,
    flags:   OverlayMainSessionFlagsEXTX,
}

SpatialAnchorCreateInfoMSFT :: struct {
    type:  StructureType,
    next:  rawptr,
    space: Space,
    pose:  Posef,
    time:  Time,
}

SpatialAnchorSpaceCreateInfoMSFT :: struct {
    type:              StructureType,
    next:              rawptr,
    anchor:            SpatialAnchorMSFT,
    poseInAnchorSpace: Posef,
}

CompositionLayerImageLayoutFB :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: CompositionLayerImageLayoutFlagsFB,
}

CompositionLayerAlphaBlendFB :: struct {
    type:           StructureType,
    next:           rawptr,
    srcFactorColor: BlendFactorFB,
    dstFactorColor: BlendFactorFB,
    srcFactorAlpha: BlendFactorFB,
    dstFactorAlpha: BlendFactorFB,
}

ViewConfigurationDepthRangeEXT :: struct {
    type:             StructureType,
    next:             rawptr,
    recommendedNearZ: f32,
    minNearZ:         f32,
    recommendedFarZ:  f32,
    maxFarZ:          f32,
}

SpatialGraphNodeSpaceCreateInfoMSFT :: struct {
    type:     StructureType,
    next:     rawptr,
    nodeType: SpatialGraphNodeTypeMSFT,
    nodeId:   [GUID_SIZE_MSFT]u8,
    pose:     Posef,
}

SpatialGraphStaticNodeBindingCreateInfoMSFT :: struct {
    type:        StructureType,
    next:        rawptr,
    space:       Space,
    poseInSpace: Posef,
    time:        Time,
}

SpatialGraphNodeBindingPropertiesGetInfoMSFT :: struct {
    type: StructureType,
    next: rawptr,
}

SpatialGraphNodeBindingPropertiesMSFT :: struct {
    type:            StructureType,
    next:            rawptr,
    nodeId:          [GUID_SIZE_MSFT]u8,
    poseInNodeSpace: Posef,
}

SystemHandTrackingPropertiesEXT :: struct {
    type:                 StructureType,
    next:                 rawptr,
    supportsHandTracking: b32,
}

HandTrackerCreateInfoEXT :: struct {
    type:         StructureType,
    next:         rawptr,
    hand:         HandEXT,
    handJointSet: HandJointSetEXT,
}

HandJointsLocateInfoEXT :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    time:      Time,
}

HandJointLocationEXT :: struct {
    locationFlags: SpaceLocationFlags,
    pose:          Posef,
    radius:        f32,
}

HandJointVelocityEXT :: struct {
    velocityFlags:   SpaceVelocityFlags,
    linearVelocity:  Vector3f,
    angularVelocity: Vector3f,
}

HandJointLocationsEXT :: struct {
    type:           StructureType,
    next:           rawptr,
    isActive:       b32,
    jointCount:     u32,
    jointLocations: [^]HandJointLocationEXT,
}

HandJointVelocitiesEXT :: struct {
    type:            StructureType,
    next:            rawptr,
    jointCount:      u32,
    jointVelocities: [^]HandJointVelocityEXT,
}

SystemHandTrackingMeshPropertiesMSFT :: struct {
    type:                     StructureType,
    next:                     rawptr,
    supportsHandTrackingMesh: b32,
    maxHandMeshIndexCount:    u32,
    maxHandMeshVertexCount:   u32,
}

HandMeshSpaceCreateInfoMSFT :: struct {
    type:                StructureType,
    next:                rawptr,
    handPoseType:        HandPoseTypeMSFT,
    poseInHandMeshSpace: Posef,
}

HandMeshUpdateInfoMSFT :: struct {
    type:         StructureType,
    next:         rawptr,
    time:         Time,
    handPoseType: HandPoseTypeMSFT,
}

HandMeshIndexBufferMSFT :: struct {
    indexBufferKey:     u32,
    indexCapacityInput: u32,
    indexCountOutput:   u32,
    indices:            [^]u32,
}

HandMeshVertexMSFT :: struct {
    position: Vector3f,
    normal:   Vector3f,
}

HandMeshVertexBufferMSFT :: struct {
    vertexUpdateTime:    Time,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertices:            [^]HandMeshVertexMSFT,
}

HandMeshMSFT :: struct {
    type:                StructureType,
    next:                rawptr,
    isActive:            b32,
    indexBufferChanged:  b32,
    vertexBufferChanged: b32,
    indexBuffer:         HandMeshIndexBufferMSFT,
    vertexBuffer:        HandMeshVertexBufferMSFT,
}

HandPoseTypeInfoMSFT :: struct {
    type:         StructureType,
    next:         rawptr,
    handPoseType: HandPoseTypeMSFT,
}

SecondaryViewConfigurationSessionBeginInfoMSFT :: struct {
    type:                          StructureType,
    next:                          rawptr,
    viewConfigurationCount:        u32,
    enabledViewConfigurationTypes: [^]ViewConfigurationType,
}

SecondaryViewConfigurationStateMSFT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    viewConfigurationType: ViewConfigurationType,
    active:                b32,
}

SecondaryViewConfigurationFrameStateMSFT :: struct {
    type:                    StructureType,
    next:                    rawptr,
    viewConfigurationCount:  u32,
    viewConfigurationStates: [^]SecondaryViewConfigurationStateMSFT,
}

SecondaryViewConfigurationLayerInfoMSFT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    viewConfigurationType: ViewConfigurationType,
    environmentBlendMode:  EnvironmentBlendMode,
    layerCount:            u32,
    layers:                [^]^CompositionLayerBaseHeader,
}

SecondaryViewConfigurationFrameEndInfoMSFT :: struct {
    type:                        StructureType,
    next:                        rawptr,
    viewConfigurationCount:      u32,
    viewConfigurationLayersInfo: ^SecondaryViewConfigurationLayerInfoMSFT,
}

SecondaryViewConfigurationSwapchainCreateInfoMSFT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    viewConfigurationType: ViewConfigurationType,
}

ControllerModelKeyStateMSFT :: struct {
    type:     StructureType,
    next:     rawptr,
    modelKey: ControllerModelKeyMSFT,
}

ControllerModelNodePropertiesMSFT :: struct {
    type:           StructureType,
    next:           rawptr,
    parentNodeName: [MAX_CONTROLLER_MODEL_NODE_NAME_SIZE_MSFT]u8,
    nodeName:       [MAX_CONTROLLER_MODEL_NODE_NAME_SIZE_MSFT]u8,
}

ControllerModelPropertiesMSFT :: struct {
    type:              StructureType,
    next:              rawptr,
    nodeCapacityInput: u32,
    nodeCountOutput:   u32,
    nodeProperties:    [^]ControllerModelNodePropertiesMSFT,
}

ControllerModelNodeStateMSFT :: struct {
    type:     StructureType,
    next:     rawptr,
    nodePose: Posef,
}

ControllerModelStateMSFT :: struct {
    type:              StructureType,
    next:              rawptr,
    nodeCapacityInput: u32,
    nodeCountOutput:   u32,
    nodeStates:        [^]ControllerModelNodeStateMSFT,
}

ViewConfigurationViewFovEPIC :: struct {
    type:           StructureType,
    next:           rawptr,
    recommendedFov: Fovf,
    maxMutableFov:  Fovf,
}

CompositionLayerReprojectionInfoMSFT :: struct {
    type:             StructureType,
    next:             rawptr,
    reprojectionMode: ReprojectionModeMSFT,
}

CompositionLayerReprojectionPlaneOverrideMSFT :: struct {
    type:     StructureType,
    next:     rawptr,
    position: Vector3f,
    normal:   Vector3f,
    velocity: Vector3f,
}

SwapchainStateBaseHeaderFB :: struct {
    type: StructureType,
    next: rawptr,
}

CompositionLayerSecureContentFB :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: CompositionLayerSecureContentFlagsFB,
}

BodyJointLocationFB :: struct {
    locationFlags: SpaceLocationFlags,
    pose:          Posef,
}

SystemBodyTrackingPropertiesFB :: struct {
    type:                 StructureType,
    next:                 rawptr,
    supportsBodyTracking: b32,
}

BodyTrackerCreateInfoFB :: struct {
    type:         StructureType,
    next:         rawptr,
    bodyJointSet: BodyJointSetFB,
}

BodySkeletonJointFB :: struct {
    joint:       i32,
    parentJoint: i32,
    pose:        Posef,
}

BodySkeletonFB :: struct {
    type:       StructureType,
    next:       rawptr,
    jointCount: u32,
    joints:     [^]BodySkeletonJointFB,
}

BodyJointsLocateInfoFB :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    time:      Time,
}

BodyJointLocationsFB :: struct {
    type:                 StructureType,
    next:                 rawptr,
    isActive:             b32,
    confidence:           f32,
    jointCount:           u32,
    jointLocations:       [^]BodyJointLocationFB,
    skeletonChangedCount: u32,
    time:                 Time,
}

InteractionProfileDpadBindingEXT :: struct {
    type:                   StructureType,
    next:                   rawptr,
    binding:                Path,
    actionSet:              ActionSet,
    forceThreshold:         f32,
    forceThresholdReleased: f32,
    centerRegion:           f32,
    wedgeAngle:             f32,
    isSticky:               b32,
    onHaptic:               ^HapticBaseHeader,
    offHaptic:              ^HapticBaseHeader,
}

InteractionProfileAnalogThresholdVALVE :: struct {
    type:         StructureType,
    next:         rawptr,
    action:       Action,
    binding:      Path,
    onThreshold:  f32,
    offThreshold: f32,
    onHaptic:     ^HapticBaseHeader,
    offHaptic:    ^HapticBaseHeader,
}

HandJointsMotionRangeInfoEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    handJointsMotionRange: HandJointsMotionRangeEXT,
}

UuidMSFT :: struct {
    bytes: [16]u8,
}

SceneObserverCreateInfoMSFT :: struct {
    type: StructureType,
    next: rawptr,
}

SceneCreateInfoMSFT :: struct {
    type: StructureType,
    next: rawptr,
}

SceneSphereBoundMSFT :: struct {
    center: Vector3f,
    radius: f32,
}

SceneOrientedBoxBoundMSFT :: struct {
    pose:    Posef,
    extents: Vector3f,
}

SceneFrustumBoundMSFT :: struct {
    pose:        Posef,
    fov:         Fovf,
    farDistance: f32,
}

SceneBoundsMSFT :: struct {
    space:        Space,
    time:         Time,
    sphereCount:  u32,
    spheres:      [^]SceneSphereBoundMSFT,
    boxCount:     u32,
    boxes:        [^]SceneOrientedBoxBoundMSFT,
    frustumCount: u32,
    frustums:     [^]SceneFrustumBoundMSFT,
}

NewSceneComputeInfoMSFT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    requestedFeatureCount: u32,
    requestedFeatures:     [^]SceneComputeFeatureMSFT,
    consistency:           SceneComputeConsistencyMSFT,
    bounds:                SceneBoundsMSFT,
}

VisualMeshComputeLodInfoMSFT :: struct {
    type: StructureType,
    next: rawptr,
    lod:  MeshComputeLodMSFT,
}

SceneComponentMSFT :: struct {
    componentType: SceneComponentTypeMSFT,
    id:            UuidMSFT,
    parentId:      UuidMSFT,
    updateTime:    Time,
}

SceneComponentsMSFT :: struct {
    type:                   StructureType,
    next:                   rawptr,
    componentCapacityInput: u32,
    componentCountOutput:   u32,
    components:             [^]SceneComponentMSFT,
}

SceneComponentsGetInfoMSFT :: struct {
    type:          StructureType,
    next:          rawptr,
    componentType: SceneComponentTypeMSFT,
}

SceneComponentLocationMSFT :: struct {
    flags: SpaceLocationFlags,
    pose:  Posef,
}

SceneComponentLocationsMSFT :: struct {
    type:          StructureType,
    next:          rawptr,
    locationCount: u32,
    locations:     [^]SceneComponentLocationMSFT,
}

SceneComponentsLocateInfoMSFT :: struct {
    type:             StructureType,
    next:             rawptr,
    baseSpace:        Space,
    time:             Time,
    componentIdCount: u32,
    componentIds:     [^]UuidMSFT,
}

SceneObjectMSFT :: struct {
    objectType: SceneObjectTypeMSFT,
}

SceneObjectsMSFT :: struct {
    type:             StructureType,
    next:             rawptr,
    sceneObjectCount: u32,
    sceneObjects:     [^]SceneObjectMSFT,
}

SceneComponentParentFilterInfoMSFT :: struct {
    type:     StructureType,
    next:     rawptr,
    parentId: UuidMSFT,
}

SceneObjectTypesFilterInfoMSFT :: struct {
    type:            StructureType,
    next:            rawptr,
    objectTypeCount: u32,
    objectTypes:     [^]SceneObjectTypeMSFT,
}

ScenePlaneMSFT :: struct {
    alignment:             ScenePlaneAlignmentTypeMSFT,
    size:                  Extent2Df,
    meshBufferId:          u64,
    supportsIndicesUint16: b32,
}

ScenePlanesMSFT :: struct {
    type:            StructureType,
    next:            rawptr,
    scenePlaneCount: u32,
    scenePlanes:     [^]ScenePlaneMSFT,
}

ScenePlaneAlignmentFilterInfoMSFT :: struct {
    type:           StructureType,
    next:           rawptr,
    alignmentCount: u32,
    alignments:     [^]ScenePlaneAlignmentTypeMSFT,
}

SceneMeshMSFT :: struct {
    meshBufferId:          u64,
    supportsIndicesUint16: b32,
}

SceneMeshesMSFT :: struct {
    type:           StructureType,
    next:           rawptr,
    sceneMeshCount: u32,
    sceneMeshes:    [^]SceneMeshMSFT,
}

SceneMeshBuffersGetInfoMSFT :: struct {
    type:         StructureType,
    next:         rawptr,
    meshBufferId: u64,
}

SceneMeshBuffersMSFT :: struct {
    type: StructureType,
    next: rawptr,
}

SceneMeshVertexBufferMSFT :: struct {
    type:                StructureType,
    next:                rawptr,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertices:            [^]Vector3f,
}

SceneMeshIndicesUint32MSFT :: struct {
    type:               StructureType,
    next:               rawptr,
    indexCapacityInput: u32,
    indexCountOutput:   u32,
    indices:            [^]u32,
}

SceneMeshIndicesUint16MSFT :: struct {
    type:               StructureType,
    next:               rawptr,
    indexCapacityInput: u32,
    indexCountOutput:   u32,
    indices:            [^]u16,
}

SerializedSceneFragmentDataGetInfoMSFT :: struct {
    type:            StructureType,
    next:            rawptr,
    sceneFragmentId: UuidMSFT,
}

DeserializeSceneFragmentMSFT :: struct {
    bufferSize: u32,
    buffer:     ^u8,
}

SceneDeserializeInfoMSFT :: struct {
    type:          StructureType,
    next:          rawptr,
    fragmentCount: u32,
    fragments:     [^]DeserializeSceneFragmentMSFT,
}

EventDataDisplayRefreshRateChangedFB :: struct {
    type:                   StructureType,
    next:                   rawptr,
    fromDisplayRefreshRate: f32,
    toDisplayRefreshRate:   f32,
}

ViveTrackerPathsHTCX :: struct {
    type:           StructureType,
    next:           rawptr,
    persistentPath: Path,
    rolePath:       Path,
}

EventDataViveTrackerConnectedHTCX :: struct {
    type:  StructureType,
    next:  rawptr,
    paths: [^]ViveTrackerPathsHTCX,
}

SystemFacialTrackingPropertiesHTC :: struct {
    type:                     StructureType,
    next:                     rawptr,
    supportEyeFacialTracking: b32,
    supportLipFacialTracking: b32,
}

FacialExpressionsHTC :: struct {
    type:                 StructureType,
    next:                 rawptr,
    isActive:             b32,
    sampleTime:           Time,
    expressionCount:      u32,
    expressionWeightings: [^]f32,
}

FacialTrackerCreateInfoHTC :: struct {
    type:               StructureType,
    next:               rawptr,
    facialTrackingType: FacialTrackingTypeHTC,
}

SystemColorSpacePropertiesFB :: struct {
    type:       StructureType,
    next:       rawptr,
    colorSpace: ColorSpaceFB,
}

Vector4sFB :: struct {
    x: i16,
    y: i16,
    z: i16,
    w: i16,
}

HandTrackingMeshFB :: struct {
    type:                StructureType,
    next:                rawptr,
    jointCapacityInput:  u32,
    jointCountOutput:    u32,
    jointBindPoses:      [^]Posef,
    jointRadii:          ^f32,
    jointParents:        [^]HandJointEXT,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertexPositions:     [^]Vector3f,
    vertexNormals:       [^]Vector3f,
    vertexUVs:           [^]Vector2f,
    vertexBlendIndices:  [^]Vector4sFB,
    vertexBlendWeights:  [^]Vector4f,
    indexCapacityInput:  u32,
    indexCountOutput:    u32,
    indices:             [^]i16,
}

HandTrackingScaleFB :: struct {
    type:               StructureType,
    next:               rawptr,
    sensorOutput:       f32,
    currentOutput:      f32,
    overrideHandScale:  b32,
    overrideValueInput: f32,
}

HandTrackingAimStateFB :: struct {
    type:                StructureType,
    next:                rawptr,
    status:              HandTrackingAimFlagsFB,
    aimPose:             Posef,
    pinchStrengthIndex:  f32,
    pinchStrengthMiddle: f32,
    pinchStrengthRing:   f32,
    pinchStrengthLittle: f32,
}

HandCapsuleFB :: struct {
    points: [HAND_TRACKING_CAPSULE_POINT_COUNT_FB]Vector3f,
    radius: f32,
    joint:  HandJointEXT,
}

HandTrackingCapsulesStateFB :: struct {
    type:     StructureType,
    next:     rawptr,
    capsules: [HAND_TRACKING_CAPSULE_COUNT_FB]HandCapsuleFB,
}

SystemSpatialEntityPropertiesFB :: struct {
    type:                  StructureType,
    next:                  rawptr,
    supportsSpatialEntity: b32,
}

SpatialAnchorCreateInfoFB :: struct {
    type:        StructureType,
    next:        rawptr,
    space:       Space,
    poseInSpace: Posef,
    time:        Time,
}

SpaceComponentStatusSetInfoFB :: struct {
    type:          StructureType,
    next:          rawptr,
    componentType: SpaceComponentTypeFB,
    enabled:       b32,
    timeout:       Duration,
}

SpaceComponentStatusFB :: struct {
    type:          StructureType,
    next:          rawptr,
    enabled:       b32,
    changePending: b32,
}

EventDataSpatialAnchorCreateCompleteFB :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
    space:     Space,
    uuid:      UuidEXT,
}

EventDataSpaceSetStatusCompleteFB :: struct {
    type:          StructureType,
    next:          rawptr,
    requestId:     AsyncRequestIdFB,
    result:        Result,
    space:         Space,
    uuid:          UuidEXT,
    componentType: SpaceComponentTypeFB,
    enabled:       b32,
}

FoveationProfileCreateInfoFB :: struct {
    type: StructureType,
    next: rawptr,
}

SwapchainCreateInfoFoveationFB :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: SwapchainCreateFoveationFlagsFB,
}

SwapchainStateFoveationFB :: struct {
    type:    StructureType,
    next:    rawptr,
    flags:   SwapchainStateFoveationFlagsFB,
    profile: FoveationProfileFB,
}

FoveationLevelProfileCreateInfoFB :: struct {
    type:           StructureType,
    next:           rawptr,
    level:          FoveationLevelFB,
    verticalOffset: f32,
    dynamic_:       FoveationDynamicFB,
}

SystemKeyboardTrackingPropertiesFB :: struct {
    type:                     StructureType,
    next:                     rawptr,
    supportsKeyboardTracking: b32,
}

KeyboardTrackingDescriptionFB :: struct {
    trackedKeyboardId: u64,
    size:              Vector3f,
    flags:             KeyboardTrackingFlagsFB,
    name:              [MAX_KEYBOARD_TRACKING_NAME_SIZE_FB]u8,
}

KeyboardSpaceCreateInfoFB :: struct {
    type:              StructureType,
    next:              rawptr,
    trackedKeyboardId: u64,
}

KeyboardTrackingQueryFB :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: KeyboardTrackingQueryFlagsFB,
}

TriangleMeshCreateInfoFB :: struct {
    type:          StructureType,
    next:          rawptr,
    flags:         TriangleMeshFlagsFB,
    windingOrder:  WindingOrderFB,
    vertexCount:   u32,
    vertexBuffer:  ^Vector3f,
    triangleCount: u32,
    indexBuffer:   ^u32,
}

SystemPassthroughPropertiesFB :: struct {
    type:                StructureType,
    next:                rawptr,
    supportsPassthrough: b32,
}

SystemPassthroughProperties2FB :: struct {
    type:         StructureType,
    next:         rawptr,
    capabilities: PassthroughCapabilityFlagsFB,
}

PassthroughCreateInfoFB :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: PassthroughFlagsFB,
}

PassthroughLayerCreateInfoFB :: struct {
    type:        StructureType,
    next:        rawptr,
    passthrough: PassthroughFB,
    flags:       PassthroughFlagsFB,
    purpose:     PassthroughLayerPurposeFB,
}

CompositionLayerPassthroughFB :: struct {
    type:        StructureType,
    next:        rawptr,
    flags:       CompositionLayerFlags,
    space:       Space,
    layerHandle: PassthroughLayerFB,
}

GeometryInstanceCreateInfoFB :: struct {
    type:      StructureType,
    next:      rawptr,
    layer:     PassthroughLayerFB,
    mesh:      TriangleMeshFB,
    baseSpace: Space,
    pose:      Posef,
    scale:     Vector3f,
}

GeometryInstanceTransformFB :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    time:      Time,
    pose:      Posef,
    scale:     Vector3f,
}

PassthroughStyleFB :: struct {
    type:                 StructureType,
    next:                 rawptr,
    textureOpacityFactor: f32,
    edgeColor:            Color4f,
}

PassthroughColorMapMonoToRgbaFB :: struct {
    type:            StructureType,
    next:            rawptr,
    textureColorMap: [PASSTHROUGH_COLOR_MAP_MONO_SIZE_FB]Color4f,
}

PassthroughColorMapMonoToMonoFB :: struct {
    type:            StructureType,
    next:            rawptr,
    textureColorMap: [PASSTHROUGH_COLOR_MAP_MONO_SIZE_FB]u8,
}

PassthroughBrightnessContrastSaturationFB :: struct {
    type:       StructureType,
    next:       rawptr,
    brightness: f32,
    contrast:   f32,
    saturation: f32,
}

EventDataPassthroughStateChangedFB :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: PassthroughStateChangedFlagsFB,
}

RenderModelPathInfoFB :: struct {
    type: StructureType,
    next: rawptr,
    path: Path,
}

RenderModelPropertiesFB :: struct {
    type:         StructureType,
    next:         rawptr,
    vendorId:     u32,
    modelName:    [MAX_RENDER_MODEL_NAME_SIZE_FB]u8,
    modelKey:     RenderModelKeyFB,
    modelVersion: u32,
    flags:        RenderModelFlagsFB,
}

RenderModelBufferFB :: struct {
    type:                StructureType,
    next:                rawptr,
    bufferCapacityInput: u32,
    bufferCountOutput:   u32,
    buffer:              ^u8,
}

RenderModelLoadInfoFB :: struct {
    type:     StructureType,
    next:     rawptr,
    modelKey: RenderModelKeyFB,
}

SystemRenderModelPropertiesFB :: struct {
    type:                       StructureType,
    next:                       rawptr,
    supportsRenderModelLoading: b32,
}

RenderModelCapabilitiesRequestFB :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: RenderModelFlagsFB,
}

ViewLocateFoveatedRenderingVARJO :: struct {
    type:                    StructureType,
    next:                    rawptr,
    foveatedRenderingActive: b32,
}

FoveatedViewConfigurationViewVARJO :: struct {
    type:                    StructureType,
    next:                    rawptr,
    foveatedRenderingActive: b32,
}

SystemFoveatedRenderingPropertiesVARJO :: struct {
    type:                      StructureType,
    next:                      rawptr,
    supportsFoveatedRendering: b32,
}

CompositionLayerDepthTestVARJO :: struct {
    type:                StructureType,
    next:                rawptr,
    depthTestRangeNearZ: f32,
    depthTestRangeFarZ:  f32,
}

SystemMarkerTrackingPropertiesVARJO :: struct {
    type:                   StructureType,
    next:                   rawptr,
    supportsMarkerTracking: b32,
}

EventDataMarkerTrackingUpdateVARJO :: struct {
    type:        StructureType,
    next:        rawptr,
    markerId:    u64,
    isActive:    b32,
    isPredicted: b32,
    time:        Time,
}

MarkerSpaceCreateInfoVARJO :: struct {
    type:              StructureType,
    next:              rawptr,
    markerId:          u64,
    poseInMarkerSpace: Posef,
}

FrameEndInfoML :: struct {
    type:          StructureType,
    next:          rawptr,
    focusDistance: f32,
    flags:         FrameEndInfoFlagsML,
}

GlobalDimmerFrameEndInfoML :: struct {
    type:        StructureType,
    next:        rawptr,
    dimmerValue: f32,
    flags:       GlobalDimmerFrameEndInfoFlagsML,
}

SystemMarkerUnderstandingPropertiesML :: struct {
    type:                        StructureType,
    next:                        rawptr,
    supportsMarkerUnderstanding: b32,
}

MarkerDetectorCreateInfoML :: struct {
    type:       StructureType,
    next:       rawptr,
    profile:    MarkerDetectorProfileML,
    markerType: MarkerTypeML,
}

MarkerDetectorArucoInfoML :: struct {
    type:      StructureType,
    next:      rawptr,
    arucoDict: MarkerArucoDictML,
}

MarkerDetectorSizeInfoML :: struct {
    type:         StructureType,
    next:         rawptr,
    markerLength: f32,
}

MarkerDetectorAprilTagInfoML :: struct {
    type:         StructureType,
    next:         rawptr,
    aprilTagDict: MarkerAprilTagDictML,
}

MarkerDetectorCustomProfileInfoML :: struct {
    type:                     StructureType,
    next:                     rawptr,
    fpsHint:                  MarkerDetectorFpsML,
    resolutionHint:           MarkerDetectorResolutionML,
    cameraHint:               MarkerDetectorCameraML,
    cornerRefineMethod:       MarkerDetectorCornerRefineMethodML,
    useEdgeRefinement:        b32,
    fullAnalysisIntervalHint: MarkerDetectorFullAnalysisIntervalML,
}

MarkerDetectorSnapshotInfoML :: struct {
    type: StructureType,
    next: rawptr,
}

MarkerDetectorStateML :: struct {
    type:  StructureType,
    next:  rawptr,
    state: MarkerDetectorStatusML,
}

MarkerSpaceCreateInfoML :: struct {
    type:              StructureType,
    next:              rawptr,
    markerDetector:    MarkerDetectorML,
    marker:            MarkerML,
    poseInMarkerSpace: Posef,
}

LocalizationMapML :: struct {
    type:    StructureType,
    next:    rawptr,
    name:    [MAX_LOCALIZATION_MAP_NAME_LENGTH_ML]u8,
    mapUuid: UuidEXT,
    mapType: LocalizationMapTypeML,
}

EventDataLocalizationChangedML :: struct {
    type:       StructureType,
    next:       rawptr,
    session:    Session,
    state:      LocalizationMapStateML,
    map_:       LocalizationMapML,
    confidence: LocalizationMapConfidenceML,
    errorFlags: LocalizationMapErrorFlagsML,
}

LocalizationMapQueryInfoBaseHeaderML :: struct {
    type: StructureType,
    next: rawptr,
}

MapLocalizationRequestInfoML :: struct {
    type:    StructureType,
    next:    rawptr,
    mapUuid: UuidEXT,
}

LocalizationMapImportInfoML :: struct {
    type: StructureType,
    next: rawptr,
    size: u32,
    data: ^u8,
}

LocalizationEnableEventsInfoML :: struct {
    type:    StructureType,
    next:    rawptr,
    enabled: b32,
}

SpatialAnchorsCreateInfoBaseHeaderML :: struct {
    type: StructureType,
    next: rawptr,
}

SpatialAnchorsCreateInfoFromPoseML :: struct {
    type:            StructureType,
    next:            rawptr,
    baseSpace:       Space,
    poseInBaseSpace: Posef,
    time:            Time,
}

CreateSpatialAnchorsCompletionML :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
    spaceCount:   u32,
    spaces:       [^]Space,
}

SpatialAnchorStateML :: struct {
    type:       StructureType,
    next:       rawptr,
    confidence: SpatialAnchorConfidenceML,
}

SpatialAnchorsCreateStorageInfoML :: struct {
    type: StructureType,
    next: rawptr,
}

SpatialAnchorsQueryInfoBaseHeaderML :: struct {
    type: StructureType,
    next: rawptr,
}

SpatialAnchorsQueryInfoRadiusML :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    center:    Vector3f,
    time:      Time,
    radius:    f32,
}

SpatialAnchorsQueryCompletionML :: struct {
    type:              StructureType,
    next:              rawptr,
    futureResult:      Result,
    uuidCapacityInput: u32,
    uuidCountOutput:   u32,
    uuids:             [^]UuidEXT,
}

SpatialAnchorsCreateInfoFromUuidsML :: struct {
    type:      StructureType,
    next:      rawptr,
    storage:   SpatialAnchorsStorageML,
    uuidCount: u32,
    uuids:     [^]UuidEXT,
}

SpatialAnchorsPublishInfoML :: struct {
    type:        StructureType,
    next:        rawptr,
    anchorCount: u32,
    anchors:     [^]Space,
    expiration:  u64,
}

SpatialAnchorsPublishCompletionML :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
    uuidCount:    u32,
    uuids:        [^]UuidEXT,
}

SpatialAnchorsDeleteInfoML :: struct {
    type:      StructureType,
    next:      rawptr,
    uuidCount: u32,
    uuids:     [^]UuidEXT,
}

SpatialAnchorsDeleteCompletionML :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
}

SpatialAnchorsUpdateExpirationInfoML :: struct {
    type:       StructureType,
    next:       rawptr,
    uuidCount:  u32,
    uuids:      [^]UuidEXT,
    expiration: u64,
}

SpatialAnchorsUpdateExpirationCompletionML :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
}

SpatialAnchorCompletionResultML :: struct {
    uuid:   UuidEXT,
    result: Result,
}

SpatialAnchorsPublishCompletionDetailsML :: struct {
    type:        StructureType,
    next:        rawptr,
    resultCount: u32,
    results:     [^]SpatialAnchorCompletionResultML,
}

SpatialAnchorsDeleteCompletionDetailsML :: struct {
    type:        StructureType,
    next:        rawptr,
    resultCount: u32,
    results:     [^]SpatialAnchorCompletionResultML,
}

SpatialAnchorsUpdateExpirationCompletionDetailsML :: struct {
    type:        StructureType,
    next:        rawptr,
    resultCount: u32,
    results:     [^]SpatialAnchorCompletionResultML,
}

SpatialAnchorPersistenceNameMSFT :: struct {
    name: [MAX_SPATIAL_ANCHOR_NAME_SIZE_MSFT]u8,
}

SpatialAnchorPersistenceInfoMSFT :: struct {
    type:                         StructureType,
    next:                         rawptr,
    spatialAnchorPersistenceName: SpatialAnchorPersistenceNameMSFT,
    spatialAnchor:                SpatialAnchorMSFT,
}

SpatialAnchorFromPersistedAnchorCreateInfoMSFT :: struct {
    type:                         StructureType,
    next:                         rawptr,
    spatialAnchorStore:           SpatialAnchorStoreConnectionMSFT,
    spatialAnchorPersistenceName: SpatialAnchorPersistenceNameMSFT,
}

SceneMarkerMSFT :: struct {
    markerType:   SceneMarkerTypeMSFT,
    lastSeenTime: Time,
    center:       Offset2Df,
    size:         Extent2Df,
}

SceneMarkersMSFT :: struct {
    type:                     StructureType,
    next:                     rawptr,
    sceneMarkerCapacityInput: u32,
    sceneMarkers:             [^]SceneMarkerMSFT,
}

SceneMarkerTypeFilterMSFT :: struct {
    type:            StructureType,
    next:            rawptr,
    markerTypeCount: u32,
    markerTypes:     [^]SceneMarkerTypeMSFT,
}

SceneMarkerQRCodeMSFT :: struct {
    symbolType: SceneMarkerQRCodeSymbolTypeMSFT,
    version:    u8,
}

SceneMarkerQRCodesMSFT :: struct {
    type:                StructureType,
    next:                rawptr,
    qrCodeCapacityInput: u32,
    qrCodes:             [^]SceneMarkerQRCodeMSFT,
}

SpaceQueryInfoBaseHeaderFB :: struct {
    type: StructureType,
    next: rawptr,
}

SpaceFilterInfoBaseHeaderFB :: struct {
    type: StructureType,
    next: rawptr,
}

SpaceQueryInfoFB :: struct {
    type:           StructureType,
    next:           rawptr,
    queryAction:    SpaceQueryActionFB,
    maxResultCount: u32,
    timeout:        Duration,
    filter:         ^SpaceFilterInfoBaseHeaderFB,
    excludeFilter:  ^SpaceFilterInfoBaseHeaderFB,
}

SpaceStorageLocationFilterInfoFB :: struct {
    type:     StructureType,
    next:     rawptr,
    location: SpaceStorageLocationFB,
}

SpaceUuidFilterInfoFB :: struct {
    type:      StructureType,
    next:      rawptr,
    uuidCount: u32,
    uuids:     [^]UuidEXT,
}

SpaceComponentFilterInfoFB :: struct {
    type:          StructureType,
    next:          rawptr,
    componentType: SpaceComponentTypeFB,
}

SpaceQueryResultFB :: struct {
    space: Space,
    uuid:  UuidEXT,
}

SpaceQueryResultsFB :: struct {
    type:                StructureType,
    next:                rawptr,
    resultCapacityInput: u32,
    resultCountOutput:   u32,
    results:             [^]SpaceQueryResultFB,
}

EventDataSpaceQueryResultsAvailableFB :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
}

EventDataSpaceQueryCompleteFB :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
}

SpaceSaveInfoFB :: struct {
    type:            StructureType,
    next:            rawptr,
    space:           Space,
    location:        SpaceStorageLocationFB,
    persistenceMode: SpacePersistenceModeFB,
}

SpaceEraseInfoFB :: struct {
    type:     StructureType,
    next:     rawptr,
    space:    Space,
    location: SpaceStorageLocationFB,
}

EventDataSpaceSaveCompleteFB :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
    space:     Space,
    uuid:      UuidEXT,
    location:  SpaceStorageLocationFB,
}

EventDataSpaceEraseCompleteFB :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
    space:     Space,
    uuid:      UuidEXT,
    location:  SpaceStorageLocationFB,
}

SpaceShareInfoFB :: struct {
    type:       StructureType,
    next:       rawptr,
    spaceCount: u32,
    spaces:     [^]Space,
    userCount:  u32,
    users:      [^]SpaceUserFB,
}

EventDataSpaceShareCompleteFB :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
}

CompositionLayerSpaceWarpInfoFB :: struct {
    type:                 StructureType,
    next:                 rawptr,
    layerFlags:           CompositionLayerSpaceWarpInfoFlagsFB,
    motionVectorSubImage: SwapchainSubImage,
    appSpaceDeltaPose:    Posef,
    depthSubImage:        SwapchainSubImage,
    minDepth:             f32,
    maxDepth:             f32,
    nearZ:                f32,
    farZ:                 f32,
}

SystemSpaceWarpPropertiesFB :: struct {
    type:                                   StructureType,
    next:                                   rawptr,
    recommendedMotionVectorImageRectWidth:  u32,
    recommendedMotionVectorImageRectHeight: u32,
}

HapticAmplitudeEnvelopeVibrationFB :: struct {
    type:           StructureType,
    next:           rawptr,
    duration:       Duration,
    amplitudeCount: u32,
    amplitudes:     [^]f32,
}

Offset3DfFB :: struct {
    x: f32,
    y: f32,
    z: f32,
}

Rect3DfFB :: struct {
    offset: Offset3DfFB,
    extent: Extent3DfFB,
}

SemanticLabelsFB :: struct {
    type:                StructureType,
    next:                rawptr,
    bufferCapacityInput: u32,
    bufferCountOutput:   u32,
    buffer:              ^u8,
}

RoomLayoutFB :: struct {
    type:                  StructureType,
    next:                  rawptr,
    floorUuid:             UuidEXT,
    ceilingUuid:           UuidEXT,
    wallUuidCapacityInput: u32,
    wallUuidCountOutput:   u32,
    wallUuids:             [^]UuidEXT,
}

Boundary2DFB :: struct {
    type:                StructureType,
    next:                rawptr,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertices:            [^]Vector2f,
}

SemanticLabelsSupportInfoFB :: struct {
    type:             StructureType,
    next:             rawptr,
    flags:            SemanticLabelsSupportFlagsFB,
    recognizedLabels: cstring,
}

DigitalLensControlALMALENCE :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: DigitalLensControlFlagsALMALENCE,
}

EventDataSceneCaptureCompleteFB :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
}

SceneCaptureRequestInfoFB :: struct {
    type:             StructureType,
    next:             rawptr,
    requestByteCount: u32,
    request:          cstring,
}

SpaceContainerFB :: struct {
    type:              StructureType,
    next:              rawptr,
    uuidCapacityInput: u32,
    uuidCountOutput:   u32,
    uuids:             [^]UuidEXT,
}

FoveationEyeTrackedProfileCreateInfoMETA :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: FoveationEyeTrackedProfileCreateFlagsMETA,
}

FoveationEyeTrackedStateMETA :: struct {
    type:            StructureType,
    next:            rawptr,
    foveationCenter: [FOVEATION_CENTER_SIZE_META]Vector2f,
    flags:           FoveationEyeTrackedStateFlagsMETA,
}

SystemFoveationEyeTrackedPropertiesMETA :: struct {
    type:                        StructureType,
    next:                        rawptr,
    supportsFoveationEyeTracked: b32,
}

SystemFaceTrackingPropertiesFB :: struct {
    type:                 StructureType,
    next:                 rawptr,
    supportsFaceTracking: b32,
}

FaceTrackerCreateInfoFB :: struct {
    type:              StructureType,
    next:              rawptr,
    faceExpressionSet: FaceExpressionSetFB,
}

FaceExpressionInfoFB :: struct {
    type: StructureType,
    next: rawptr,
    time: Time,
}

FaceExpressionStatusFB :: struct {
    isValid:                        b32,
    isEyeFollowingBlendshapesValid: b32,
}

FaceExpressionWeightsFB :: struct {
    type:            StructureType,
    next:            rawptr,
    weightCount:     u32,
    weights:         [^]f32,
    confidenceCount: u32,
    confidences:     [^]f32,
    status:          FaceExpressionStatusFB,
    time:            Time,
}

EyeGazeFB :: struct {
    isValid:        b32,
    gazePose:       Posef,
    gazeConfidence: f32,
}

EyeTrackerCreateInfoFB :: struct {
    type: StructureType,
    next: rawptr,
}

EyeGazesInfoFB :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    time:      Time,
}

SystemEyeTrackingPropertiesFB :: struct {
    type:                StructureType,
    next:                rawptr,
    supportsEyeTracking: b32,
}

EyeGazesFB :: struct {
    type: StructureType,
    next: rawptr,
    gaze: [EyePositionFB.COUNT]EyeGazeFB,
    time: Time,
}

PassthroughKeyboardHandsIntensityFB :: struct {
    type:               StructureType,
    next:               rawptr,
    leftHandIntensity:  f32,
    rightHandIntensity: f32,
}

CompositionLayerSettingsFB :: struct {
    type:       StructureType,
    next:       rawptr,
    layerFlags: CompositionLayerSettingsFlagsFB,
}

HapticPcmVibrationFB :: struct {
    type:            StructureType,
    next:            rawptr,
    bufferSize:      u32,
    buffer:          ^f32,
    sampleRate:      f32,
    append:          b32,
    samplesConsumed: ^u32,
}

DevicePcmSampleRateStateFB :: struct {
    type:       StructureType,
    next:       rawptr,
    sampleRate: f32,
}

FrameSynthesisInfoEXT :: struct {
    type:                 StructureType,
    next:                 rawptr,
    layerFlags:           FrameSynthesisInfoFlagsEXT,
    motionVectorSubImage: SwapchainSubImage,
    motionVectorScale:    Vector4f,
    motionVectorOffset:   Vector4f,
    appSpaceDeltaPose:    Posef,
    depthSubImage:        SwapchainSubImage,
    minDepth:             f32,
    maxDepth:             f32,
    nearZ:                f32,
    farZ:                 f32,
}

FrameSynthesisConfigViewEXT :: struct {
    type:                                   StructureType,
    next:                                   rawptr,
    recommendedMotionVectorImageRectWidth:  u32,
    recommendedMotionVectorImageRectHeight: u32,
}

CompositionLayerDepthTestFB :: struct {
    type:      StructureType,
    next:      rawptr,
    depthMask: b32,
    compareOp: CompareOpFB,
}

LocalDimmingFrameEndInfoMETA :: struct {
    type:             StructureType,
    next:             rawptr,
    localDimmingMode: LocalDimmingModeMETA,
}

PassthroughPreferencesMETA :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: PassthroughPreferenceFlagsMETA,
}

SystemVirtualKeyboardPropertiesMETA :: struct {
    type:                    StructureType,
    next:                    rawptr,
    supportsVirtualKeyboard: b32,
}

VirtualKeyboardCreateInfoMETA :: struct {
    type: StructureType,
    next: rawptr,
}

VirtualKeyboardSpaceCreateInfoMETA :: struct {
    type:         StructureType,
    next:         rawptr,
    locationType: VirtualKeyboardLocationTypeMETA,
    space:        Space,
    poseInSpace:  Posef,
}

VirtualKeyboardLocationInfoMETA :: struct {
    type:         StructureType,
    next:         rawptr,
    locationType: VirtualKeyboardLocationTypeMETA,
    space:        Space,
    poseInSpace:  Posef,
    scale:        f32,
}

VirtualKeyboardModelVisibilitySetInfoMETA :: struct {
    type:    StructureType,
    next:    rawptr,
    visible: b32,
}

VirtualKeyboardAnimationStateMETA :: struct {
    type:           StructureType,
    next:           rawptr,
    animationIndex: i32,
    fraction:       f32,
}

VirtualKeyboardModelAnimationStatesMETA :: struct {
    type:               StructureType,
    next:               rawptr,
    stateCapacityInput: u32,
    stateCountOutput:   u32,
    states:             [^]VirtualKeyboardAnimationStateMETA,
}

VirtualKeyboardTextureDataMETA :: struct {
    type:                StructureType,
    next:                rawptr,
    textureWidth:        u32,
    textureHeight:       u32,
    bufferCapacityInput: u32,
    bufferCountOutput:   u32,
    buffer:              ^u8,
}

VirtualKeyboardInputInfoMETA :: struct {
    type:             StructureType,
    next:             rawptr,
    inputSource:      VirtualKeyboardInputSourceMETA,
    inputSpace:       Space,
    inputPoseInSpace: Posef,
    inputState:       VirtualKeyboardInputStateFlagsMETA,
}

VirtualKeyboardTextContextChangeInfoMETA :: struct {
    type:        StructureType,
    next:        rawptr,
    textContext: cstring,
}

EventDataVirtualKeyboardCommitTextMETA :: struct {
    type:     StructureType,
    next:     rawptr,
    keyboard: VirtualKeyboardMETA,
    text:     [MAX_VIRTUAL_KEYBOARD_COMMIT_TEXT_SIZE_META]u8,
}

EventDataVirtualKeyboardBackspaceMETA :: struct {
    type:     StructureType,
    next:     rawptr,
    keyboard: VirtualKeyboardMETA,
}

EventDataVirtualKeyboardEnterMETA :: struct {
    type:     StructureType,
    next:     rawptr,
    keyboard: VirtualKeyboardMETA,
}

EventDataVirtualKeyboardShownMETA :: struct {
    type:     StructureType,
    next:     rawptr,
    keyboard: VirtualKeyboardMETA,
}

EventDataVirtualKeyboardHiddenMETA :: struct {
    type:     StructureType,
    next:     rawptr,
    keyboard: VirtualKeyboardMETA,
}

ExternalCameraIntrinsicsOCULUS :: struct {
    lastChangeTime:             Time,
    fov:                        Fovf,
    virtualNearPlaneDistance:   f32,
    virtualFarPlaneDistance:    f32,
    imageSensorPixelResolution: Extent2Di,
}

ExternalCameraExtrinsicsOCULUS :: struct {
    lastChangeTime:    Time,
    cameraStatusFlags: ExternalCameraStatusFlagsOCULUS,
    attachedToDevice:  ExternalCameraAttachedToDeviceOCULUS,
    relativePose:      Posef,
}

ExternalCameraOCULUS :: struct {
    type:       StructureType,
    next:       rawptr,
    name:       [MAX_EXTERNAL_CAMERA_NAME_SIZE_OCULUS]u8,
    intrinsics: ExternalCameraIntrinsicsOCULUS,
    extrinsics: ExternalCameraExtrinsicsOCULUS,
}

PerformanceMetricsStateMETA :: struct {
    type:    StructureType,
    next:    rawptr,
    enabled: b32,
}

PerformanceMetricsCounterMETA :: struct {
    type:         StructureType,
    next:         rawptr,
    counterFlags: PerformanceMetricsCounterFlagsMETA,
    counterUnit:  PerformanceMetricsCounterUnitMETA,
    uintValue:    u32,
    floatValue:   f32,
}

SpaceListSaveInfoFB :: struct {
    type:       StructureType,
    next:       rawptr,
    spaceCount: u32,
    spaces:     [^]Space,
    location:   SpaceStorageLocationFB,
}

EventDataSpaceListSaveCompleteFB :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
}

SpaceUserCreateInfoFB :: struct {
    type:   StructureType,
    next:   rawptr,
    userId: SpaceUserIdFB,
}

SystemHeadsetIdPropertiesMETA :: struct {
    type: StructureType,
    next: rawptr,
    id:   UuidEXT,
}

RecommendedLayerResolutionMETA :: struct {
    type:                       StructureType,
    next:                       rawptr,
    recommendedImageDimensions: Extent2Di,
    isValid:                    b32,
}

RecommendedLayerResolutionGetInfoMETA :: struct {
    type:                 StructureType,
    next:                 rawptr,
    layer:                ^CompositionLayerBaseHeader,
    predictedDisplayTime: Time,
}

SystemSpacePersistencePropertiesMETA :: struct {
    type:                     StructureType,
    next:                     rawptr,
    supportsSpacePersistence: b32,
}

SpacesSaveInfoMETA :: struct {
    type:       StructureType,
    next:       rawptr,
    spaceCount: u32,
    spaces:     [^]Space,
}

EventDataSpacesSaveResultMETA :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
}

SpacesEraseInfoMETA :: struct {
    type:       StructureType,
    next:       rawptr,
    spaceCount: u32,
    spaces:     [^]Space,
    uuidCount:  u32,
    uuids:      [^]UuidEXT,
}

EventDataSpacesEraseResultMETA :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
}

PassthroughColorLutDataMETA :: struct {
    bufferSize: u32,
    buffer:     ^u8,
}

PassthroughColorLutCreateInfoMETA :: struct {
    type:       StructureType,
    next:       rawptr,
    channels:   PassthroughColorLutChannelsMETA,
    resolution: u32,
    data:       PassthroughColorLutDataMETA,
}

PassthroughColorLutUpdateInfoMETA :: struct {
    type: StructureType,
    next: rawptr,
    data: PassthroughColorLutDataMETA,
}

PassthroughColorMapLutMETA :: struct {
    type:     StructureType,
    next:     rawptr,
    colorLut: PassthroughColorLutMETA,
    weight:   f32,
}

PassthroughColorMapInterpolatedLutMETA :: struct {
    type:           StructureType,
    next:           rawptr,
    sourceColorLut: PassthroughColorLutMETA,
    targetColorLut: PassthroughColorLutMETA,
    weight:         f32,
}

SystemPassthroughColorLutPropertiesMETA :: struct {
    type:                  StructureType,
    next:                  rawptr,
    maxColorLutResolution: u32,
}

SpaceTriangleMeshGetInfoMETA :: struct {
    type: StructureType,
    next: rawptr,
}

SpaceTriangleMeshMETA :: struct {
    type:                StructureType,
    next:                rawptr,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertices:            [^]Vector3f,
    indexCapacityInput:  u32,
    indexCountOutput:    u32,
    indices:             [^]u32,
}

SystemPropertiesBodyTrackingFullBodyMETA :: struct {
    type:                     StructureType,
    next:                     rawptr,
    supportsFullBodyTracking: b32,
}

EventDataPassthroughLayerResumedMETA :: struct {
    type:  StructureType,
    next:  rawptr,
    layer: PassthroughLayerFB,
}

BodyTrackingCalibrationStatusMETA :: struct {
    type:   StructureType,
    next:   rawptr,
    status: BodyTrackingCalibrationStateMETA,
}

BodyTrackingCalibrationInfoMETA :: struct {
    type:       StructureType,
    next:       rawptr,
    bodyHeight: f32,
}

SystemPropertiesBodyTrackingCalibrationMETA :: struct {
    type:                   StructureType,
    next:                   rawptr,
    supportsHeightOverride: b32,
}

SystemFaceTrackingProperties2FB :: struct {
    type:                       StructureType,
    next:                       rawptr,
    supportsVisualFaceTracking: b32,
    supportsAudioFaceTracking:  b32,
}

FaceTrackerCreateInfo2FB :: struct {
    type:                     StructureType,
    next:                     rawptr,
    faceExpressionSet:        FaceExpressionSet2FB,
    requestedDataSourceCount: u32,
    requestedDataSources:     [^]FaceTrackingDataSource2FB,
}

FaceExpressionInfo2FB :: struct {
    type: StructureType,
    next: rawptr,
    time: Time,
}

FaceExpressionWeights2FB :: struct {
    type:                           StructureType,
    next:                           rawptr,
    weightCount:                    u32,
    weights:                        [^]f32,
    confidenceCount:                u32,
    confidences:                    [^]f32,
    isValid:                        b32,
    isEyeFollowingBlendshapesValid: b32,
    dataSource:                     FaceTrackingDataSource2FB,
    time:                           Time,
}

SystemSpatialEntitySharingPropertiesMETA :: struct {
    type:                         StructureType,
    next:                         rawptr,
    supportsSpatialEntitySharing: b32,
}

ShareSpacesRecipientBaseHeaderMETA :: struct {
    type: StructureType,
    next: rawptr,
}

ShareSpacesInfoMETA :: struct {
    type:          StructureType,
    next:          rawptr,
    spaceCount:    u32,
    spaces:        [^]Space,
    recipientInfo: ^ShareSpacesRecipientBaseHeaderMETA,
}

EventDataShareSpacesCompleteMETA :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
}

EnvironmentDepthProviderCreateInfoMETA :: struct {
    type:        StructureType,
    next:        rawptr,
    createFlags: EnvironmentDepthProviderCreateFlagsMETA,
}

EnvironmentDepthSwapchainCreateInfoMETA :: struct {
    type:        StructureType,
    next:        rawptr,
    createFlags: EnvironmentDepthSwapchainCreateFlagsMETA,
}

EnvironmentDepthSwapchainStateMETA :: struct {
    type:   StructureType,
    next:   rawptr,
    width:  u32,
    height: u32,
}

EnvironmentDepthImageAcquireInfoMETA :: struct {
    type:        StructureType,
    next:        rawptr,
    space:       Space,
    displayTime: Time,
}

EnvironmentDepthImageViewMETA :: struct {
    type: StructureType,
    next: rawptr,
    fov:  Fovf,
    pose: Posef,
}

EnvironmentDepthImageMETA :: struct {
    type:           StructureType,
    next:           rawptr,
    swapchainIndex: u32,
    nearZ:          f32,
    farZ:           f32,
    views:          [2]EnvironmentDepthImageViewMETA,
}

EnvironmentDepthHandRemovalSetInfoMETA :: struct {
    type:    StructureType,
    next:    rawptr,
    enabled: b32,
}

SystemEnvironmentDepthPropertiesMETA :: struct {
    type:                     StructureType,
    next:                     rawptr,
    supportsEnvironmentDepth: b32,
    supportsHandRemoval:      b32,
}

RenderModelCreateInfoEXT :: struct {
    type:               StructureType,
    next:               rawptr,
    renderModelId:      RenderModelIdEXT,
    gltfExtensionCount: u32,
    gltfExtensions:     [^]cstring,
}

RenderModelPropertiesGetInfoEXT :: struct {
    type: StructureType,
    next: rawptr,
}

RenderModelPropertiesEXT :: struct {
    type:                StructureType,
    next:                rawptr,
    cacheId:             UuidEXT,
    animatableNodeCount: u32,
}

RenderModelSpaceCreateInfoEXT :: struct {
    type:        StructureType,
    next:        rawptr,
    renderModel: RenderModelEXT,
}

RenderModelStateGetInfoEXT :: struct {
    type:        StructureType,
    next:        rawptr,
    displayTime: Time,
}

RenderModelNodeStateEXT :: struct {
    nodePose:  Posef,
    isVisible: b32,
}

RenderModelStateEXT :: struct {
    type:           StructureType,
    next:           rawptr,
    nodeStateCount: u32,
    nodeStates:     [^]RenderModelNodeStateEXT,
}

RenderModelAssetCreateInfoEXT :: struct {
    type:    StructureType,
    next:    rawptr,
    cacheId: UuidEXT,
}

RenderModelAssetDataGetInfoEXT :: struct {
    type: StructureType,
    next: rawptr,
}

RenderModelAssetDataEXT :: struct {
    type:                StructureType,
    next:                rawptr,
    bufferCapacityInput: u32,
    bufferCountOutput:   u32,
    buffer:              ^u8,
}

RenderModelAssetPropertiesGetInfoEXT :: struct {
    type: StructureType,
    next: rawptr,
}

RenderModelAssetNodePropertiesEXT :: struct {
    uniqueName: [MAX_RENDER_MODEL_ASSET_NODE_NAME_SIZE_EXT]u8,
}

RenderModelAssetPropertiesEXT :: struct {
    type:              StructureType,
    next:              rawptr,
    nodePropertyCount: u32,
    nodeProperties:    [^]RenderModelAssetNodePropertiesEXT,
}

InteractionRenderModelIdsEnumerateInfoEXT :: struct {
    type: StructureType,
    next: rawptr,
}

InteractionRenderModelSubactionPathInfoEXT :: struct {
    type: StructureType,
    next: rawptr,
}

InteractionRenderModelTopLevelUserPathGetInfoEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    topLevelUserPathCount: u32,
    topLevelUserPaths:     [^]Path,
}

EventDataInteractionRenderModelsChangedEXT :: struct {
    type: StructureType,
    next: rawptr,
}

PassthroughCreateInfoHTC :: struct {
    type: StructureType,
    next: rawptr,
    form: PassthroughFormHTC,
}

PassthroughColorHTC :: struct {
    type:  StructureType,
    next:  rawptr,
    alpha: f32,
}

PassthroughMeshTransformInfoHTC :: struct {
    type:        StructureType,
    next:        rawptr,
    vertexCount: u32,
    vertices:    [^]Vector3f,
    indexCount:  u32,
    indices:     [^]u32,
    baseSpace:   Space,
    time:        Time,
    pose:        Posef,
    scale:       Vector3f,
}

CompositionLayerPassthroughHTC :: struct {
    type:        StructureType,
    next:        rawptr,
    layerFlags:  CompositionLayerFlags,
    space:       Space,
    passthrough: PassthroughHTC,
    color:       PassthroughColorHTC,
}

FoveationApplyInfoHTC :: struct {
    type:          StructureType,
    next:          rawptr,
    mode:          FoveationModeHTC,
    subImageCount: u32,
    subImages:     [^]SwapchainSubImage,
}

FoveationConfigurationHTC :: struct {
    level:             FoveationLevelHTC,
    clearFovDegree:    f32,
    focalCenterOffset: Vector2f,
}

FoveationDynamicModeInfoHTC :: struct {
    type:         StructureType,
    next:         rawptr,
    dynamicFlags: FoveationDynamicFlagsHTC,
}

FoveationCustomModeInfoHTC :: struct {
    type:        StructureType,
    next:        rawptr,
    configCount: u32,
    configs:     [^]FoveationConfigurationHTC,
}

SystemAnchorPropertiesHTC :: struct {
    type:           StructureType,
    next:           rawptr,
    supportsAnchor: b32,
}

SpatialAnchorNameHTC :: struct {
    name: [MAX_SPATIAL_ANCHOR_NAME_SIZE_HTC]u8,
}

SpatialAnchorCreateInfoHTC :: struct {
    type:        StructureType,
    next:        rawptr,
    space:       Space,
    poseInSpace: Posef,
    name:        SpatialAnchorNameHTC,
}

SystemBodyTrackingPropertiesHTC :: struct {
    type:                 StructureType,
    next:                 rawptr,
    supportsBodyTracking: b32,
}

BodyTrackerCreateInfoHTC :: struct {
    type:         StructureType,
    next:         rawptr,
    bodyJointSet: BodyJointSetHTC,
}

BodyJointsLocateInfoHTC :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    time:      Time,
}

BodyJointLocationHTC :: struct {
    locationFlags: SpaceLocationFlags,
    pose:          Posef,
}

BodyJointLocationsHTC :: struct {
    type:                  StructureType,
    next:                  rawptr,
    combinedLocationFlags: SpaceLocationFlags,
    confidenceLevel:       BodyJointConfidenceHTC,
    jointLocationCount:    u32,
    jointLocations:        [^]BodyJointLocationHTC,
    skeletonGenerationId:  u32,
}

BodySkeletonJointHTC :: struct {
    pose: Posef,
}

BodySkeletonHTC :: struct {
    type:       StructureType,
    next:       rawptr,
    jointCount: u32,
    joints:     [^]BodySkeletonJointHTC,
}

ActiveActionSetPriorityEXT :: struct {
    actionSet:        ActionSet,
    priorityOverride: u32,
}

ActiveActionSetPrioritiesEXT :: struct {
    type:                   StructureType,
    next:                   rawptr,
    actionSetPriorityCount: u32,
    actionSetPriorities:    [^]ActiveActionSetPriorityEXT,
}

SystemForceFeedbackCurlPropertiesMNDX :: struct {
    type:                      StructureType,
    next:                      rawptr,
    supportsForceFeedbackCurl: b32,
}

ForceFeedbackCurlApplyLocationMNDX :: struct {
    location: ForceFeedbackCurlLocationMNDX,
    value:    f32,
}

ForceFeedbackCurlApplyLocationsMNDX :: struct {
    type:          StructureType,
    next:          rawptr,
    locationCount: u32,
    locations:     [^]ForceFeedbackCurlApplyLocationMNDX,
}

SystemBodyTrackingPropertiesBD :: struct {
    type:                 StructureType,
    next:                 rawptr,
    supportsBodyTracking: b32,
}

BodyTrackerCreateInfoBD :: struct {
    type:     StructureType,
    next:     rawptr,
    jointSet: BodyJointSetBD,
}

BodyJointsLocateInfoBD :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    time:      Time,
}

BodyJointLocationBD :: struct {
    locationFlags: SpaceLocationFlags,
    pose:          Posef,
}

BodyJointLocationsBD :: struct {
    type:                 StructureType,
    next:                 rawptr,
    allJointPosesTracked: b32,
    jointLocationCount:   u32,
    jointLocations:       [^]BodyJointLocationBD,
}

SystemSpatialSensingPropertiesBD :: struct {
    type:                   StructureType,
    next:                   rawptr,
    supportsSpatialSensing: b32,
}

SpatialEntityComponentGetInfoBD :: struct {
    type:          StructureType,
    next:          rawptr,
    entityId:      SpatialEntityIdBD,
    componentType: SpatialEntityComponentTypeBD,
}

SpatialEntityComponentDataBaseHeaderBD :: struct {
    type: StructureType,
    next: rawptr,
}

SpatialEntityLocationGetInfoBD :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
}

SpatialEntityComponentDataLocationBD :: struct {
    type:     StructureType,
    next:     rawptr,
    location: SpaceLocation,
}

SpatialEntityComponentDataSemanticBD :: struct {
    type:               StructureType,
    next:               rawptr,
    labelCapacityInput: u32,
    labelCountOutput:   u32,
    labels:             [^]SemanticLabelBD,
}

SpatialEntityComponentDataBoundingBox2DBD :: struct {
    type:          StructureType,
    next:          rawptr,
    boundingBox2D: Rect2Df,
}

SpatialEntityComponentDataPolygonBD :: struct {
    type:                StructureType,
    next:                rawptr,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertices:            [^]Vector2f,
}

SpatialEntityComponentDataBoundingBox3DBD :: struct {
    type:          StructureType,
    next:          rawptr,
    boundingBox3D: Boxf,
}

SpatialEntityComponentDataTriangleMeshBD :: struct {
    type:                StructureType,
    next:                rawptr,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertices:            [^]Vector3f,
    indexCapacityInput:  u32,
    indexCountOutput:    u32,
    indices:             [^]u16,
}

SenseDataProviderCreateInfoBD :: struct {
    type:         StructureType,
    next:         rawptr,
    providerType: SenseDataProviderTypeBD,
}

SenseDataProviderStartInfoBD :: struct {
    type: StructureType,
    next: rawptr,
}

EventDataSenseDataProviderStateChangedBD :: struct {
    type:     StructureType,
    next:     rawptr,
    provider: SenseDataProviderBD,
    newState: SenseDataProviderStateBD,
}

EventDataSenseDataUpdatedBD :: struct {
    type:     StructureType,
    next:     rawptr,
    provider: SenseDataProviderBD,
}

SenseDataQueryInfoBD :: struct {
    type: StructureType,
    next: rawptr,
}

SenseDataQueryCompletionBD :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
    snapshot:     SenseDataSnapshotBD,
}

QueriedSenseDataGetInfoBD :: struct {
    type: StructureType,
    next: rawptr,
}

SpatialEntityStateBD :: struct {
    type:           StructureType,
    next:           rawptr,
    entityId:       SpatialEntityIdBD,
    lastUpdateTime: Time,
    uuid:           UuidEXT,
}

QueriedSenseDataBD :: struct {
    type:               StructureType,
    next:               rawptr,
    stateCapacityInput: u32,
    stateCountOutput:   u32,
    states:             [^]SpatialEntityStateBD,
}

SenseDataFilterUuidBD :: struct {
    type:      StructureType,
    next:      rawptr,
    uuidCount: u32,
    uuids:     [^]UuidEXT,
}

SenseDataFilterSemanticBD :: struct {
    type:       StructureType,
    next:       rawptr,
    labelCount: u32,
    labels:     [^]SemanticLabelBD,
}

SpatialEntityAnchorCreateInfoBD :: struct {
    type:     StructureType,
    next:     rawptr,
    snapshot: SenseDataSnapshotBD,
    entityId: SpatialEntityIdBD,
}

AnchorSpaceCreateInfoBD :: struct {
    type:              StructureType,
    next:              rawptr,
    anchor:            AnchorBD,
    poseInAnchorSpace: Posef,
}

FutureCompletionEXT :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
}

SystemSpatialAnchorPropertiesBD :: struct {
    type:                  StructureType,
    next:                  rawptr,
    supportsSpatialAnchor: b32,
}

SpatialAnchorCreateInfoBD :: struct {
    type:  StructureType,
    next:  rawptr,
    space: Space,
    pose:  Posef,
    time:  Time,
}

SpatialAnchorCreateCompletionBD :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
    uuid:         UuidEXT,
    anchor:       AnchorBD,
}

SpatialAnchorPersistInfoBD :: struct {
    type:     StructureType,
    next:     rawptr,
    location: PersistenceLocationBD,
    anchor:   AnchorBD,
}

SpatialAnchorUnpersistInfoBD :: struct {
    type:     StructureType,
    next:     rawptr,
    location: PersistenceLocationBD,
    anchor:   AnchorBD,
}

SystemSpatialAnchorSharingPropertiesBD :: struct {
    type:                         StructureType,
    next:                         rawptr,
    supportsSpatialAnchorSharing: b32,
}

SpatialAnchorShareInfoBD :: struct {
    type:   StructureType,
    next:   rawptr,
    anchor: AnchorBD,
}

SharedSpatialAnchorDownloadInfoBD :: struct {
    type: StructureType,
    next: rawptr,
    uuid: UuidEXT,
}

SystemSpatialScenePropertiesBD :: struct {
    type:                 StructureType,
    next:                 rawptr,
    supportsSpatialScene: b32,
}

SceneCaptureInfoBD :: struct {
    type: StructureType,
    next: rawptr,
}

SystemSpatialMeshPropertiesBD :: struct {
    type:                StructureType,
    next:                rawptr,
    supportsSpatialMesh: b32,
}

SenseDataProviderCreateInfoSpatialMeshBD :: struct {
    type:        StructureType,
    next:        rawptr,
    configFlags: SpatialMeshConfigFlagsBD,
    lod:         SpatialMeshLodBD,
}

FuturePollResultProgressBD :: struct {
    type:               StructureType,
    next:               rawptr,
    isSupported:        b32,
    progressPercentage: u32,
}

SystemSpatialPlanePropertiesBD :: struct {
    type:                 StructureType,
    next:                 rawptr,
    supportsSpatialPlane: b32,
}

SpatialEntityComponentDataPlaneOrientationBD :: struct {
    type:        StructureType,
    next:        rawptr,
    orientation: PlaneOrientationBD,
}

SenseDataFilterPlaneOrientationBD :: struct {
    type:             StructureType,
    next:             rawptr,
    orientationCount: u32,
    orientations:     [^]PlaneOrientationBD,
}

HandTrackingDataSourceInfoEXT :: struct {
    type:                     StructureType,
    next:                     rawptr,
    requestedDataSourceCount: u32,
    requestedDataSources:     [^]HandTrackingDataSourceEXT,
}

HandTrackingDataSourceStateEXT :: struct {
    type:       StructureType,
    next:       rawptr,
    isActive:   b32,
    dataSource: HandTrackingDataSourceEXT,
}

SystemPlaneDetectionPropertiesEXT :: struct {
    type:              StructureType,
    next:              rawptr,
    supportedFeatures: PlaneDetectionCapabilityFlagsEXT,
}

PlaneDetectorCreateInfoEXT :: struct {
    type:  StructureType,
    next:  rawptr,
    flags: PlaneDetectorFlagsEXT,
}

PlaneDetectorBeginInfoEXT :: struct {
    type:              StructureType,
    next:              rawptr,
    baseSpace:         Space,
    time:              Time,
    orientationCount:  u32,
    orientations:      [^]PlaneDetectorOrientationEXT,
    semanticTypeCount: u32,
    semanticTypes:     [^]PlaneDetectorSemanticTypeEXT,
    maxPlanes:         u32,
    minArea:           f32,
    boundingBoxPose:   Posef,
    boundingBoxExtent: Extent3DfEXT,
}

PlaneDetectorGetInfoEXT :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    time:      Time,
}

PlaneDetectorLocationEXT :: struct {
    type:               StructureType,
    next:               rawptr,
    planeId:            u64,
    locationFlags:      SpaceLocationFlags,
    pose:               Posef,
    extents:            Extent2Df,
    orientation:        PlaneDetectorOrientationEXT,
    semanticType:       PlaneDetectorSemanticTypeEXT,
    polygonBufferCount: u32,
}

PlaneDetectorLocationsEXT :: struct {
    type:                       StructureType,
    next:                       rawptr,
    planeLocationCapacityInput: u32,
    planeLocationCountOutput:   u32,
    planeLocations:             [^]PlaneDetectorLocationEXT,
}

PlaneDetectorPolygonBufferEXT :: struct {
    type:                StructureType,
    next:                rawptr,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertices:            [^]Vector2f,
}

TrackableTrackerCreateInfoANDROID :: struct {
    type:          StructureType,
    next:          rawptr,
    trackableType: TrackableTypeANDROID,
}

TrackableGetInfoANDROID :: struct {
    type:      StructureType,
    next:      rawptr,
    trackable: TrackableANDROID,
    baseSpace: Space,
    time:      Time,
}

TrackablePlaneANDROID :: struct {
    type:                StructureType,
    next:                rawptr,
    trackingState:       TrackingStateANDROID,
    centerPose:          Posef,
    extents:             Extent2Df,
    planeType:           PlaneTypeANDROID,
    planeLabel:          PlaneLabelANDROID,
    subsumedByPlane:     TrackableANDROID,
    lastUpdatedTime:     Time,
    vertexCapacityInput: u32,
    vertexCountOutput:   u32,
    vertices:            [^]Vector2f,
}

AnchorSpaceCreateInfoANDROID :: struct {
    type:      StructureType,
    next:      rawptr,
    space:     Space,
    time:      Time,
    pose:      Posef,
    trackable: TrackableANDROID,
}

SystemTrackablesPropertiesANDROID :: struct {
    type:           StructureType,
    next:           rawptr,
    supportsAnchor: b32,
    maxAnchors:     u32,
}

DeviceAnchorPersistenceCreateInfoANDROID :: struct {
    type: StructureType,
    next: rawptr,
}

PersistedAnchorSpaceCreateInfoANDROID :: struct {
    type:     StructureType,
    next:     rawptr,
    anchorId: UuidEXT,
}

PersistedAnchorSpaceInfoANDROID :: struct {
    type:   StructureType,
    next:   rawptr,
    anchor: Space,
}

SystemDeviceAnchorPersistencePropertiesANDROID :: struct {
    type:                      StructureType,
    next:                      rawptr,
    supportsAnchorPersistence: b32,
}

SystemPassthroughCameraStatePropertiesANDROID :: struct {
    type:                           StructureType,
    next:                           rawptr,
    supportsPassthroughCameraState: b32,
}

PassthroughCameraStateGetInfoANDROID :: struct {
    type: StructureType,
    next: rawptr,
}

RaycastInfoANDROID :: struct {
    type:         StructureType,
    next:         rawptr,
    maxResults:   u32,
    trackerCount: u32,
    trackers:     [^]TrackableTrackerANDROID,
    origin:       Vector3f,
    trajectory:   Vector3f,
    space:        Space,
    time:         Time,
}

RaycastHitResultANDROID :: struct {
    type:      TrackableTypeANDROID,
    trackable: TrackableANDROID,
    pose:      Posef,
}

RaycastHitResultsANDROID :: struct {
    type:                 StructureType,
    next:                 rawptr,
    resultsCapacityInput: u32,
    resultsCountOutput:   u32,
    results:              [^]RaycastHitResultANDROID,
}

TrackableObjectANDROID :: struct {
    type:            StructureType,
    next:            rawptr,
    trackingState:   TrackingStateANDROID,
    centerPose:      Posef,
    extents:         Extent3DfEXT,
    objectLabel:     ObjectLabelANDROID,
    lastUpdatedTime: Time,
}

TrackableObjectConfigurationANDROID :: struct {
    type:         StructureType,
    next:         rawptr,
    labelCount:   u32,
    activeLabels: [^]ObjectLabelANDROID,
}

FutureCancelInfoEXT :: struct {
    type:   StructureType,
    next:   rawptr,
    future: FutureEXT,
}

FuturePollInfoEXT :: struct {
    type:   StructureType,
    next:   rawptr,
    future: FutureEXT,
}

FutureCompletionBaseHeaderEXT :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
}

FuturePollResultEXT :: struct {
    type:  StructureType,
    next:  rawptr,
    state: FutureStateEXT,
}

EventDataUserPresenceChangedEXT :: struct {
    type:          StructureType,
    next:          rawptr,
    session:       Session,
    isUserPresent: b32,
}

SystemUserPresencePropertiesEXT :: struct {
    type:                 StructureType,
    next:                 rawptr,
    supportsUserPresence: b32,
}

EventDataHeadsetFitChangedML :: struct {
    type:   StructureType,
    next:   rawptr,
    status: HeadsetFitStatusML,
    time:   Time,
}

EventDataEyeCalibrationChangedML :: struct {
    type:   StructureType,
    next:   rawptr,
    status: EyeCalibrationStatusML,
}

UserCalibrationEnableEventsInfoML :: struct {
    type:    StructureType,
    next:    rawptr,
    enabled: b32,
}

SystemNotificationsSetInfoML :: struct {
    type:                  StructureType,
    next:                  rawptr,
    suppressNotifications: b32,
}

WorldMeshDetectorCreateInfoML :: struct {
    type: StructureType,
    next: rawptr,
}

WorldMeshBlockStateML :: struct {
    type:                   StructureType,
    next:                   rawptr,
    uuid:                   UuidEXT,
    meshBoundingBoxCenter:  Posef,
    meshBoundingBoxExtents: Extent3DfEXT,
    lastUpdateTime:         Time,
    status:                 WorldMeshBlockStatusML,
}

WorldMeshStateRequestInfoML :: struct {
    type:               StructureType,
    next:               rawptr,
    baseSpace:          Space,
    time:               Time,
    boundingBoxCenter:  Posef,
    boundingBoxExtents: Extent3DfEXT,
}

WorldMeshStateRequestCompletionML :: struct {
    type:                        StructureType,
    next:                        rawptr,
    futureResult:                Result,
    timestamp:                   Time,
    meshBlockStateCapacityInput: u32,
    meshBlockStateCountOutput:   u32,
    meshBlockStates:             [^]WorldMeshBlockStateML,
}

WorldMeshBufferRecommendedSizeInfoML :: struct {
    type:          StructureType,
    next:          rawptr,
    maxBlockCount: u32,
}

WorldMeshBufferSizeML :: struct {
    type: StructureType,
    next: rawptr,
    size: u32,
}

WorldMeshBufferML :: struct {
    type:       StructureType,
    next:       rawptr,
    bufferSize: u32,
    buffer:     rawptr,
}

WorldMeshBlockRequestML :: struct {
    type: StructureType,
    next: rawptr,
    uuid: UuidEXT,
    lod:  WorldMeshDetectorLodML,
}

WorldMeshGetInfoML :: struct {
    type:                      StructureType,
    next:                      rawptr,
    flags:                     WorldMeshDetectorFlagsML,
    fillHoleLength:            f32,
    disconnectedComponentArea: f32,
    blockCount:                u32,
    blocks:                    [^]WorldMeshBlockRequestML,
}

WorldMeshBlockML :: struct {
    type:             StructureType,
    next:             rawptr,
    uuid:             UuidEXT,
    blockResult:      WorldMeshBlockResultML,
    lod:              WorldMeshDetectorLodML,
    flags:            WorldMeshDetectorFlagsML,
    indexCount:       u32,
    indexBuffer:      ^u16,
    vertexCount:      u32,
    vertexBuffer:     ^Vector3f,
    normalCount:      u32,
    normalBuffer:     ^Vector3f,
    confidenceCount:  u32,
    confidenceBuffer: ^f32,
}

WorldMeshRequestCompletionInfoML :: struct {
    type:                StructureType,
    next:                rawptr,
    meshSpace:           Space,
    meshSpaceLocateTime: Time,
}

WorldMeshRequestCompletionML :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
    blockCount:   u32,
    blocks:       [^]WorldMeshBlockML,
}

SystemFacialExpressionPropertiesML :: struct {
    type:                     StructureType,
    next:                     rawptr,
    supportsFacialExpression: b32,
}

FacialExpressionClientCreateInfoML :: struct {
    type:                       StructureType,
    next:                       rawptr,
    requestedCount:             u32,
    requestedFacialBlendShapes: [^]FacialBlendShapeML,
}

FacialExpressionBlendShapeGetInfoML :: struct {
    type: StructureType,
    next: rawptr,
}

FacialExpressionBlendShapePropertiesML :: struct {
    type:                      StructureType,
    next:                      rawptr,
    requestedFacialBlendShape: FacialBlendShapeML,
    weight:                    f32,
    flags:                     FacialExpressionBlendShapePropertiesFlagsML,
    time:                      Time,
}

SystemSimultaneousHandsAndControllersPropertiesMETA :: struct {
    type:                                    StructureType,
    next:                                    rawptr,
    supportsSimultaneousHandsAndControllers: b32,
}

SimultaneousHandsAndControllersTrackingResumeInfoMETA :: struct {
    type: StructureType,
    next: rawptr,
}

SimultaneousHandsAndControllersTrackingPauseInfoMETA :: struct {
    type: StructureType,
    next: rawptr,
}

ColocationDiscoveryStartInfoMETA :: struct {
    type: StructureType,
    next: rawptr,
}

ColocationDiscoveryStopInfoMETA :: struct {
    type: StructureType,
    next: rawptr,
}

ColocationAdvertisementStartInfoMETA :: struct {
    type:       StructureType,
    next:       rawptr,
    bufferSize: u32,
    buffer:     ^u8,
}

ColocationAdvertisementStopInfoMETA :: struct {
    type: StructureType,
    next: rawptr,
}

EventDataStartColocationAdvertisementCompleteMETA :: struct {
    type:                   StructureType,
    next:                   rawptr,
    advertisementRequestId: AsyncRequestIdFB,
    result:                 Result,
    advertisementUuid:      Uuid,
}

EventDataStopColocationAdvertisementCompleteMETA :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
}

EventDataColocationAdvertisementCompleteMETA :: struct {
    type:                   StructureType,
    next:                   rawptr,
    advertisementRequestId: AsyncRequestIdFB,
    result:                 Result,
}

EventDataStartColocationDiscoveryCompleteMETA :: struct {
    type:               StructureType,
    next:               rawptr,
    discoveryRequestId: AsyncRequestIdFB,
    result:             Result,
}

EventDataColocationDiscoveryResultMETA :: struct {
    type:               StructureType,
    next:               rawptr,
    discoveryRequestId: AsyncRequestIdFB,
    advertisementUuid:  Uuid,
    bufferSize:         u32,
    buffer:             [MAX_COLOCATION_DISCOVERY_BUFFER_SIZE_META]u8,
}

EventDataColocationDiscoveryCompleteMETA :: struct {
    type:               StructureType,
    next:               rawptr,
    discoveryRequestId: AsyncRequestIdFB,
    result:             Result,
}

EventDataStopColocationDiscoveryCompleteMETA :: struct {
    type:      StructureType,
    next:      rawptr,
    requestId: AsyncRequestIdFB,
    result:    Result,
}

SystemColocationDiscoveryPropertiesMETA :: struct {
    type:                        StructureType,
    next:                        rawptr,
    supportsColocationDiscovery: b32,
}

SystemSpatialEntityGroupSharingPropertiesMETA :: struct {
    type:                              StructureType,
    next:                              rawptr,
    supportsSpatialEntityGroupSharing: b32,
}

ShareSpacesRecipientGroupsMETA :: struct {
    type:       StructureType,
    next:       rawptr,
    groupCount: u32,
    groups:     [^]Uuid,
}

SpaceGroupUuidFilterInfoMETA :: struct {
    type:      StructureType,
    next:      rawptr,
    groupUuid: Uuid,
}

SystemMarkerTrackingPropertiesANDROID :: struct {
    type:                         StructureType,
    next:                         rawptr,
    supportsMarkerTracking:       b32,
    supportsMarkerSizeEstimation: b32,
    maxMarkerCount:               u16,
}

TrackableMarkerDatabaseEntryANDROID :: struct {
    id:       i32,
    edgeSize: f32,
}

TrackableMarkerDatabaseANDROID :: struct {
    dictionary: TrackableMarkerDictionaryANDROID,
    entryCount: u32,
    entries:    [^]TrackableMarkerDatabaseEntryANDROID,
}

TrackableMarkerConfigurationANDROID :: struct {
    type:          StructureType,
    next:          rawptr,
    trackingMode:  TrackableMarkerTrackingModeANDROID,
    databaseCount: u32,
    databases:     [^]TrackableMarkerDatabaseANDROID,
}

TrackableMarkerANDROID :: struct {
    type:            StructureType,
    next:            rawptr,
    trackingState:   TrackingStateANDROID,
    lastUpdatedTime: Time,
    dictionary:      TrackableMarkerDictionaryANDROID,
    markerId:        i32,
    centerPose:      Posef,
    extents:         Extent2Df,
}

SpatialCapabilityComponentTypesEXT :: struct {
    type:                       StructureType,
    next:                       rawptr,
    componentTypeCapacityInput: u32,
    componentTypeCountOutput:   u32,
    componentTypes:             [^]SpatialComponentTypeEXT,
}

SpatialCapabilityConfigurationBaseHeaderEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    capability:            SpatialCapabilityEXT,
    enabledComponentCount: u32,
    enabledComponents:     [^]SpatialComponentTypeEXT,
}

SpatialContextCreateInfoEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    capabilityConfigCount: u32,
    capabilityConfigs:     [^]^SpatialCapabilityConfigurationBaseHeaderEXT,
}

CreateSpatialContextCompletionEXT :: struct {
    type:           StructureType,
    next:           rawptr,
    futureResult:   Result,
    spatialContext: SpatialContextEXT,
}

SpatialDiscoverySnapshotCreateInfoEXT :: struct {
    type:               StructureType,
    next:               rawptr,
    componentTypeCount: u32,
    componentTypes:     [^]SpatialComponentTypeEXT,
}

CreateSpatialDiscoverySnapshotCompletionInfoEXT :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    time:      Time,
    future:    FutureEXT,
}

CreateSpatialDiscoverySnapshotCompletionEXT :: struct {
    type:         StructureType,
    next:         rawptr,
    futureResult: Result,
    snapshot:     SpatialSnapshotEXT,
}

SpatialComponentDataQueryConditionEXT :: struct {
    type:               StructureType,
    next:               rawptr,
    componentTypeCount: u32,
    componentTypes:     [^]SpatialComponentTypeEXT,
}

SpatialComponentDataQueryResultEXT :: struct {
    type:                     StructureType,
    next:                     rawptr,
    entityIdCapacityInput:    u32,
    entityIdCountOutput:      u32,
    entityIds:                [^]SpatialEntityIdEXT,
    entityStateCapacityInput: u32,
    entityStateCountOutput:   u32,
    entityStates:             [^]SpatialEntityTrackingStateEXT,
}

SpatialBufferEXT :: struct {
    bufferId:   SpatialBufferIdEXT,
    bufferType: SpatialBufferTypeEXT,
}

SpatialBufferGetInfoEXT :: struct {
    type:     StructureType,
    next:     rawptr,
    bufferId: SpatialBufferIdEXT,
}

SpatialBounded2DDataEXT :: struct {
    center:  Posef,
    extents: Extent2Df,
}

SpatialComponentBounded2DListEXT :: struct {
    type:       StructureType,
    next:       rawptr,
    boundCount: u32,
    bounds:     [^]SpatialBounded2DDataEXT,
}

SpatialComponentBounded3DListEXT :: struct {
    type:       StructureType,
    next:       rawptr,
    boundCount: u32,
    bounds:     [^]Boxf,
}

SpatialComponentParentListEXT :: struct {
    type:        StructureType,
    next:        rawptr,
    parentCount: u32,
    parents:     [^]SpatialEntityIdEXT,
}

SpatialMeshDataEXT :: struct {
    origin:       Posef,
    vertexBuffer: SpatialBufferEXT,
    indexBuffer:  SpatialBufferEXT,
}

SpatialComponentMesh3DListEXT :: struct {
    type:      StructureType,
    next:      rawptr,
    meshCount: u32,
    meshes:    [^]SpatialMeshDataEXT,
}

SpatialEntityFromIdCreateInfoEXT :: struct {
    type:     StructureType,
    next:     rawptr,
    entityId: SpatialEntityIdEXT,
}

SpatialUpdateSnapshotCreateInfoEXT :: struct {
    type:               StructureType,
    next:               rawptr,
    entityCount:        u32,
    entities:           [^]SpatialEntityEXT,
    componentTypeCount: u32,
    componentTypes:     [^]SpatialComponentTypeEXT,
    baseSpace:          Space,
    time:               Time,
}

EventDataSpatialDiscoveryRecommendedEXT :: struct {
    type:           StructureType,
    next:           rawptr,
    spatialContext: SpatialContextEXT,
}

SpatialFilterTrackingStateEXT :: struct {
    type:          StructureType,
    next:          rawptr,
    trackingState: SpatialEntityTrackingStateEXT,
}

SpatialCapabilityConfigurationPlaneTrackingEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    capability:            SpatialCapabilityEXT,
    enabledComponentCount: u32,
    enabledComponents:     [^]SpatialComponentTypeEXT,
}

SpatialComponentPlaneAlignmentListEXT :: struct {
    type:                StructureType,
    next:                rawptr,
    planeAlignmentCount: u32,
    planeAlignments:     [^]SpatialPlaneAlignmentEXT,
}

SpatialComponentMesh2DListEXT :: struct {
    type:      StructureType,
    next:      rawptr,
    meshCount: u32,
    meshes:    [^]SpatialMeshDataEXT,
}

SpatialPolygon2DDataEXT :: struct {
    origin:       Posef,
    vertexBuffer: SpatialBufferEXT,
}

SpatialComponentPolygon2DListEXT :: struct {
    type:         StructureType,
    next:         rawptr,
    polygonCount: u32,
    polygons:     [^]SpatialPolygon2DDataEXT,
}

SpatialComponentPlaneSemanticLabelListEXT :: struct {
    type:               StructureType,
    next:               rawptr,
    semanticLabelCount: u32,
    semanticLabels:     [^]SpatialPlaneSemanticLabelEXT,
}

SpatialCapabilityConfigurationQrCodeEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    capability:            SpatialCapabilityEXT,
    enabledComponentCount: u32,
    enabledComponents:     [^]SpatialComponentTypeEXT,
}

SpatialCapabilityConfigurationMicroQrCodeEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    capability:            SpatialCapabilityEXT,
    enabledComponentCount: u32,
    enabledComponents:     [^]SpatialComponentTypeEXT,
}

SpatialCapabilityConfigurationArucoMarkerEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    capability:            SpatialCapabilityEXT,
    enabledComponentCount: u32,
    enabledComponents:     [^]SpatialComponentTypeEXT,
    arUcoDict:             SpatialMarkerArucoDictEXT,
}

SpatialCapabilityConfigurationAprilTagEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    capability:            SpatialCapabilityEXT,
    enabledComponentCount: u32,
    enabledComponents:     [^]SpatialComponentTypeEXT,
    aprilDict:             SpatialMarkerAprilTagDictEXT,
}

SpatialMarkerSizeEXT :: struct {
    type:             StructureType,
    next:             rawptr,
    markerSideLength: f32,
}

SpatialMarkerStaticOptimizationEXT :: struct {
    type:                    StructureType,
    next:                    rawptr,
    optimizeForStaticMarker: b32,
}

SpatialMarkerDataEXT :: struct {
    capability: SpatialCapabilityEXT,
    markerId:   u32,
    data:       SpatialBufferEXT,
}

SpatialComponentMarkerListEXT :: struct {
    type:        StructureType,
    next:        rawptr,
    markerCount: u32,
    markers:     [^]SpatialMarkerDataEXT,
}

SpatialCapabilityConfigurationAnchorEXT :: struct {
    type:                  StructureType,
    next:                  rawptr,
    capability:            SpatialCapabilityEXT,
    enabledComponentCount: u32,
    enabledComponents:     [^]SpatialComponentTypeEXT,
}

SpatialComponentAnchorListEXT :: struct {
    type:          StructureType,
    next:          rawptr,
    locationCount: u32,
    locations:     [^]Posef,
}

SpatialAnchorCreateInfoEXT :: struct {
    type:      StructureType,
    next:      rawptr,
    baseSpace: Space,
    time:      Time,
    pose:      Posef,
}

SpatialPersistenceContextCreateInfoEXT :: struct {
    type:  StructureType,
    next:  rawptr,
    scope: SpatialPersistenceScopeEXT,
}

CreateSpatialPersistenceContextCompletionEXT :: struct {
    type:               StructureType,
    next:               rawptr,
    futureResult:       Result,
    createResult:       SpatialPersistenceContextResultEXT,
    persistenceContext: SpatialPersistenceContextEXT,
}

SpatialContextPersistenceConfigEXT :: struct {
    type:                    StructureType,
    next:                    rawptr,
    persistenceContextCount: u32,
    persistenceContexts:     [^]SpatialPersistenceContextEXT,
}

SpatialDiscoveryPersistenceUuidFilterEXT :: struct {
    type:               StructureType,
    next:               rawptr,
    persistedUuidCount: u32,
    persistedUuids:     [^]Uuid,
}

SpatialPersistenceDataEXT :: struct {
    persistUuid:  Uuid,
    persistState: SpatialPersistenceStateEXT,
}

SpatialComponentPersistenceListEXT :: struct {
    type:             StructureType,
    next:             rawptr,
    persistDataCount: u32,
    persistData:      ^SpatialPersistenceDataEXT,
}

SpatialEntityPersistInfoEXT :: struct {
    type:            StructureType,
    next:            rawptr,
    spatialContext:  SpatialContextEXT,
    spatialEntityId: SpatialEntityIdEXT,
}

PersistSpatialEntityCompletionEXT :: struct {
    type:          StructureType,
    next:          rawptr,
    futureResult:  Result,
    persistResult: SpatialPersistenceContextResultEXT,
    persistUuid:   Uuid,
}

SpatialEntityUnpersistInfoEXT :: struct {
    type:        StructureType,
    next:        rawptr,
    persistUuid: Uuid,
}

UnpersistSpatialEntityCompletionEXT :: struct {
    type:            StructureType,
    next:            rawptr,
    futureResult:    Result,
    unpersistResult: SpatialPersistenceContextResultEXT,
}

LoaderInitPropertyValueEXT :: struct {
    name:  cstring,
    value: cstring,
}

LoaderInitInfoPropertiesEXT :: struct {
    type:               StructureType,
    next:               rawptr,
    propertyValueCount: u32,
    propertyValues:     [^]LoaderInitPropertyValueEXT,
}

