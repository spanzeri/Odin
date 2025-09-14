//
// OpenXR wrapper generated from: https://raw.githubusercontent.com/KhronosGroup/OpenXR-SDK/refs/heads/main/include/openxr/openxr.h
//
package vendor_openxr

ProcVoidFunction :: #type proc "system" ()

// Global level procedures

ProcEnumerateApiLayerProperties ::          #type proc "system" (propertyCapacityInput: u32, propertyCountOutput: ^u32, properties: [^]ApiLayerProperties) -> Result
ProcEnumerateInstanceExtensionProperties :: #type proc "system" (layerName: cstring, propertyCapacityInput: u32, propertyCountOutput: ^u32, properties: [^]ExtensionProperties) -> Result
ProcCreateInstance ::                       #type proc "system" (createInfo: ^InstanceCreateInfo, instance: ^Instance) -> Result

// Instance level procedures

ProcGetInstanceProcAddr ::                             #type proc "system" (instance: Instance, name: cstring, function: ^ProcVoidFunction) -> Result
ProcDestroyInstance ::                                 #type proc "system" (instance: Instance) -> Result
ProcGetInstanceProperties ::                           #type proc "system" (instance: Instance, instanceProperties: [^]InstanceProperties) -> Result
ProcPollEvent ::                                       #type proc "system" (instance: Instance, eventData: ^EventDataBuffer) -> Result
ProcResultToString ::                                  #type proc "system" (instance: Instance, value: Result, buffer: [MAX_RESULT_STRING_SIZE]u8) -> Result
ProcStructureTypeToString ::                           #type proc "system" (instance: Instance, value: StructureType, buffer: [MAX_STRUCTURE_NAME_SIZE]u8) -> Result
ProcGetSystem ::                                       #type proc "system" (instance: Instance, getInfo: ^SystemGetInfo, systemId: ^SystemId) -> Result
ProcGetSystemProperties ::                             #type proc "system" (instance: Instance, systemId: SystemId, properties: [^]SystemProperties) -> Result
ProcEnumerateEnvironmentBlendModes ::                  #type proc "system" (instance: Instance, systemId: SystemId, viewConfigurationType: ViewConfigurationType, environmentBlendModeCapacityInput: u32, environmentBlendModeCountOutput: ^u32, environmentBlendModes: [^]EnvironmentBlendMode) -> Result
ProcCreateSession ::                                   #type proc "system" (instance: Instance, createInfo: ^SessionCreateInfo, session: ^Session) -> Result
ProcEnumerateViewConfigurations ::                     #type proc "system" (instance: Instance, systemId: SystemId, viewConfigurationTypeCapacityInput: u32, viewConfigurationTypeCountOutput: ^u32, viewConfigurationTypes: [^]ViewConfigurationType) -> Result
ProcGetViewConfigurationProperties ::                  #type proc "system" (instance: Instance, systemId: SystemId, viewConfigurationType: ViewConfigurationType, configurationProperties: [^]ViewConfigurationProperties) -> Result
ProcEnumerateViewConfigurationViews ::                 #type proc "system" (instance: Instance, systemId: SystemId, viewConfigurationType: ViewConfigurationType, viewCapacityInput: u32, viewCountOutput: ^u32, views: [^]ViewConfigurationView) -> Result
ProcStringToPath ::                                    #type proc "system" (instance: Instance, pathString: cstring, path: ^Path) -> Result
ProcPathToString ::                                    #type proc "system" (instance: Instance, path: Path, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcCreateActionSet ::                                 #type proc "system" (instance: Instance, createInfo: ^ActionSetCreateInfo, actionSet: ^ActionSet) -> Result
ProcSuggestInteractionProfileBindings ::               #type proc "system" (instance: Instance, suggestedBindings: [^]InteractionProfileSuggestedBinding) -> Result
ProcStructureTypeToString2KHR ::                       #type proc "system" (instance: Instance, value: StructureType, buffer: [MAX_STRUCTURE_NAME_SIZE_EXTENDED_KHR]u8) -> Result
ProcSetDebugUtilsObjectNameEXT ::                      #type proc "system" (instance: Instance, nameInfo: ^DebugUtilsObjectNameInfoEXT) -> Result
ProcCreateDebugUtilsMessengerEXT ::                    #type proc "system" (instance: Instance, createInfo: ^DebugUtilsMessengerCreateInfoEXT, messenger: ^DebugUtilsMessengerEXT) -> Result
ProcSubmitDebugUtilsMessageEXT ::                      #type proc "system" (instance: Instance, messageSeverity: DebugUtilsMessageSeverityFlagsEXT, messageTypes: DebugUtilsMessageTypeFlagsEXT, callbackData: ^DebugUtilsMessengerCallbackDataEXT) -> Result
ProcEnumerateReprojectionModesMSFT ::                  #type proc "system" (instance: Instance, systemId: SystemId, viewConfigurationType: ViewConfigurationType, modeCapacityInput: u32, modeCountOutput: ^u32, modes: [^]ReprojectionModeMSFT) -> Result
ProcEnumerateSceneComputeFeaturesMSFT ::               #type proc "system" (instance: Instance, systemId: SystemId, featureCapacityInput: u32, featureCountOutput: ^u32, features: [^]SceneComputeFeatureMSFT) -> Result
ProcEnumerateViveTrackerPathsHTCX ::                   #type proc "system" (instance: Instance, pathCapacityInput: u32, pathCountOutput: ^u32, paths: [^]ViveTrackerPathsHTCX) -> Result
ProcEnumeratePerformanceMetricsCounterPathsMETA ::     #type proc "system" (instance: Instance, counterPathCapacityInput: u32, counterPathCountOutput: ^u32, counterPaths: [^]Path) -> Result
ProcEnumerateSupportedTrackableTypesANDROID ::         #type proc "system" (instance: Instance, systemId: SystemId, trackableTypeCapacityInput: u32, trackableTypeCountOutput: ^u32, trackableTypes: [^]TrackableTypeANDROID) -> Result
ProcEnumerateSupportedAnchorTrackableTypesANDROID ::   #type proc "system" (instance: Instance, systemId: SystemId, trackableTypeCapacityInput: u32, trackableTypeCountOutput: ^u32, trackableTypes: [^]TrackableTypeANDROID) -> Result
ProcEnumerateSupportedPersistenceAnchorTypesANDROID :: #type proc "system" (instance: Instance, systemId: SystemId, trackableTypeCapacityInput: u32, trackableTypeCountOutput: ^u32, trackableTypes: [^]TrackableTypeANDROID) -> Result
ProcEnumerateRaycastSupportedTrackableTypesANDROID ::  #type proc "system" (instance: Instance, systemId: SystemId, trackableTypeCapacityInput: u32, trackableTypeCountOutput: ^u32, trackableTypes: [^]TrackableTypeANDROID) -> Result
ProcPollFutureEXT ::                                   #type proc "system" (instance: Instance, pollInfo: ^FuturePollInfoEXT, pollResult: ^FuturePollResultEXT) -> Result
ProcCancelFutureEXT ::                                 #type proc "system" (instance: Instance, cancelInfo: ^FutureCancelInfoEXT) -> Result
ProcEnableUserCalibrationEventsML ::                   #type proc "system" (instance: Instance, enableInfo: ^UserCalibrationEnableEventsInfoML) -> Result
ProcSetSystemNotificationsML ::                        #type proc "system" (instance: Instance, info: ^SystemNotificationsSetInfoML) -> Result
ProcEnumerateSpatialCapabilitiesEXT ::                 #type proc "system" (instance: Instance, systemId: SystemId, capabilityCapacityInput: u32, capabilityCountOutput: ^u32, capabilities: [^]SpatialCapabilityEXT) -> Result
ProcEnumerateSpatialCapabilityComponentTypesEXT ::     #type proc "system" (instance: Instance, systemId: SystemId, capability: SpatialCapabilityEXT, capabilityComponents: [^]SpatialCapabilityComponentTypesEXT) -> Result
ProcEnumerateSpatialCapabilityFeaturesEXT ::           #type proc "system" (instance: Instance, systemId: SystemId, capability: SpatialCapabilityEXT, capabilityFeatureCapacityInput: u32, capabilityFeatureCountOutput: ^u32, capabilityFeatures: [^]SpatialCapabilityFeatureEXT) -> Result
ProcEnumerateSpatialPersistenceScopesEXT ::            #type proc "system" (instance: Instance, systemId: SystemId, persistenceScopeCapacityInput: u32, persistenceScopeCountOutput: ^u32, persistenceScopes: [^]SpatialPersistenceScopeEXT) -> Result

// Session level procedures

ProcDestroySession ::                                    #type proc "system" (session: Session) -> Result
ProcEnumerateReferenceSpaces ::                          #type proc "system" (session: Session, spaceCapacityInput: u32, spaceCountOutput: ^u32, spaces: [^]ReferenceSpaceType) -> Result
ProcCreateReferenceSpace ::                              #type proc "system" (session: Session, createInfo: ^ReferenceSpaceCreateInfo, space: ^Space) -> Result
ProcGetReferenceSpaceBoundsRect ::                       #type proc "system" (session: Session, referenceSpaceType: ReferenceSpaceType, bounds: [^]Extent2Df) -> Result
ProcCreateActionSpace ::                                 #type proc "system" (session: Session, createInfo: ^ActionSpaceCreateInfo, space: ^Space) -> Result
ProcEnumerateSwapchainFormats ::                         #type proc "system" (session: Session, formatCapacityInput: u32, formatCountOutput: ^u32, formats: [^]i64) -> Result
ProcCreateSwapchain ::                                   #type proc "system" (session: Session, createInfo: ^SwapchainCreateInfo, swapchain: ^Swapchain) -> Result
ProcBeginSession ::                                      #type proc "system" (session: Session, beginInfo: ^SessionBeginInfo) -> Result
ProcEndSession ::                                        #type proc "system" (session: Session) -> Result
ProcRequestExitSession ::                                #type proc "system" (session: Session) -> Result
ProcWaitFrame ::                                         #type proc "system" (session: Session, frameWaitInfo: ^FrameWaitInfo, frameState: ^FrameState) -> Result
ProcBeginFrame ::                                        #type proc "system" (session: Session, frameBeginInfo: ^FrameBeginInfo) -> Result
ProcEndFrame ::                                          #type proc "system" (session: Session, frameEndInfo: ^FrameEndInfo) -> Result
ProcLocateViews ::                                       #type proc "system" (session: Session, viewLocateInfo: ^ViewLocateInfo, viewState: ^ViewState, viewCapacityInput: u32, viewCountOutput: ^u32, views: [^]View) -> Result
ProcAttachSessionActionSets ::                           #type proc "system" (session: Session, attachInfo: ^SessionActionSetsAttachInfo) -> Result
ProcGetCurrentInteractionProfile ::                      #type proc "system" (session: Session, topLevelUserPath: Path, interactionProfile: ^InteractionProfileState) -> Result
ProcGetActionStateBoolean ::                             #type proc "system" (session: Session, getInfo: ^ActionStateGetInfo, state: ^ActionStateBoolean) -> Result
ProcGetActionStateFloat ::                               #type proc "system" (session: Session, getInfo: ^ActionStateGetInfo, state: ^ActionStateFloat) -> Result
ProcGetActionStateVector2f ::                            #type proc "system" (session: Session, getInfo: ^ActionStateGetInfo, state: ^ActionStateVector2f) -> Result
ProcGetActionStatePose ::                                #type proc "system" (session: Session, getInfo: ^ActionStateGetInfo, state: ^ActionStatePose) -> Result
ProcSyncActions ::                                       #type proc "system" (session: Session, syncInfo: ^ActionsSyncInfo) -> Result
ProcEnumerateBoundSourcesForAction ::                    #type proc "system" (session: Session, enumerateInfo: ^BoundSourcesForActionEnumerateInfo, sourceCapacityInput: u32, sourceCountOutput: ^u32, sources: [^]Path) -> Result
ProcGetInputSourceLocalizedName ::                       #type proc "system" (session: Session, getInfo: ^InputSourceLocalizedNameGetInfo, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcApplyHapticFeedback ::                               #type proc "system" (session: Session, hapticActionInfo: ^HapticActionInfo, hapticFeedback: ^HapticBaseHeader) -> Result
ProcStopHapticFeedback ::                                #type proc "system" (session: Session, hapticActionInfo: ^HapticActionInfo) -> Result
ProcLocateSpaces ::                                      #type proc "system" (session: Session, locateInfo: ^SpacesLocateInfo, spaceLocations: [^]SpaceLocations) -> Result
ProcGetVisibilityMaskKHR ::                              #type proc "system" (session: Session, viewConfigurationType: ViewConfigurationType, viewIndex: u32, visibilityMaskType: VisibilityMaskTypeKHR, visibilityMask: ^VisibilityMaskKHR) -> Result
ProcLocateSpacesKHR ::                                   #type proc "system" (session: Session, locateInfo: ^SpacesLocateInfo, spaceLocations: [^]SpaceLocations) -> Result
ProcPerfSettingsSetPerformanceLevelEXT ::                #type proc "system" (session: Session, domain: PerfSettingsDomainEXT, level: PerfSettingsLevelEXT) -> Result
ProcThermalGetTemperatureTrendEXT ::                     #type proc "system" (session: Session, domain: PerfSettingsDomainEXT, notificationLevel: ^PerfSettingsNotificationLevelEXT, tempHeadroom, tempSlope: ^f32) -> Result
ProcSessionBeginDebugUtilsLabelRegionEXT ::              #type proc "system" (session: Session, labelInfo: ^DebugUtilsLabelEXT) -> Result
ProcSessionEndDebugUtilsLabelRegionEXT ::                #type proc "system" (session: Session) -> Result
ProcSessionInsertDebugUtilsLabelEXT ::                   #type proc "system" (session: Session, labelInfo: ^DebugUtilsLabelEXT) -> Result
ProcCreateSpatialAnchorMSFT ::                           #type proc "system" (session: Session, createInfo: ^SpatialAnchorCreateInfoMSFT, anchor: ^SpatialAnchorMSFT) -> Result
ProcCreateSpatialAnchorSpaceMSFT ::                      #type proc "system" (session: Session, createInfo: ^SpatialAnchorSpaceCreateInfoMSFT, space: ^Space) -> Result
ProcSetInputDeviceActiveEXT ::                           #type proc "system" (session: Session, interactionProfile, topLevelPath: Path, isActive: b32) -> Result
ProcSetInputDeviceStateBoolEXT ::                        #type proc "system" (session: Session, topLevelPath, inputSourcePath: Path, state: b32) -> Result
ProcSetInputDeviceStateFloatEXT ::                       #type proc "system" (session: Session, topLevelPath, inputSourcePath: Path, state: f32) -> Result
ProcSetInputDeviceStateVector2fEXT ::                    #type proc "system" (session: Session, topLevelPath, inputSourcePath: Path, state: Vector2f) -> Result
ProcSetInputDeviceLocationEXT ::                         #type proc "system" (session: Session, topLevelPath, inputSourcePath: Path, space: Space, pose: Posef) -> Result
ProcCreateSpatialGraphNodeSpaceMSFT ::                   #type proc "system" (session: Session, createInfo: ^SpatialGraphNodeSpaceCreateInfoMSFT, space: ^Space) -> Result
ProcTryCreateSpatialGraphStaticNodeBindingMSFT ::        #type proc "system" (session: Session, createInfo: ^SpatialGraphStaticNodeBindingCreateInfoMSFT, nodeBinding: ^SpatialGraphNodeBindingMSFT) -> Result
ProcCreateHandTrackerEXT ::                              #type proc "system" (session: Session, createInfo: ^HandTrackerCreateInfoEXT, handTracker: ^HandTrackerEXT) -> Result
ProcGetControllerModelKeyMSFT ::                         #type proc "system" (session: Session, topLevelUserPath: Path, controllerModelKeyState: ^ControllerModelKeyStateMSFT) -> Result
ProcLoadControllerModelMSFT ::                           #type proc "system" (session: Session, modelKey: ControllerModelKeyMSFT, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcGetControllerModelPropertiesMSFT ::                  #type proc "system" (session: Session, modelKey: ControllerModelKeyMSFT, properties: [^]ControllerModelPropertiesMSFT) -> Result
ProcGetControllerModelStateMSFT ::                       #type proc "system" (session: Session, modelKey: ControllerModelKeyMSFT, state: ^ControllerModelStateMSFT) -> Result
ProcCreateBodyTrackerFB ::                               #type proc "system" (session: Session, createInfo: ^BodyTrackerCreateInfoFB, bodyTracker: ^BodyTrackerFB) -> Result
ProcCreateSceneObserverMSFT ::                           #type proc "system" (session: Session, createInfo: ^SceneObserverCreateInfoMSFT, sceneObserver: ^SceneObserverMSFT) -> Result
ProcEnumerateDisplayRefreshRatesFB ::                    #type proc "system" (session: Session, displayRefreshRateCapacityInput: u32, displayRefreshRateCountOutput: ^u32, displayRefreshRates: [^]f32) -> Result
ProcGetDisplayRefreshRateFB ::                           #type proc "system" (session: Session, displayRefreshRate: ^f32) -> Result
ProcRequestDisplayRefreshRateFB ::                       #type proc "system" (session: Session, displayRefreshRate: f32) -> Result
ProcCreateFacialTrackerHTC ::                            #type proc "system" (session: Session, createInfo: ^FacialTrackerCreateInfoHTC, facialTracker: ^FacialTrackerHTC) -> Result
ProcEnumerateColorSpacesFB ::                            #type proc "system" (session: Session, colorSpaceCapacityInput: u32, colorSpaceCountOutput: ^u32, colorSpaces: [^]ColorSpaceFB) -> Result
ProcSetColorSpaceFB ::                                   #type proc "system" (session: Session, colorSpace: ColorSpaceFB) -> Result
ProcCreateSpatialAnchorFB ::                             #type proc "system" (session: Session, info: ^SpatialAnchorCreateInfoFB, requestId: ^AsyncRequestIdFB) -> Result
ProcCreateFoveationProfileFB ::                          #type proc "system" (session: Session, createInfo: ^FoveationProfileCreateInfoFB, profile: ^FoveationProfileFB) -> Result
ProcQuerySystemTrackedKeyboardFB ::                      #type proc "system" (session: Session, queryInfo: ^KeyboardTrackingQueryFB, keyboard: ^KeyboardTrackingDescriptionFB) -> Result
ProcCreateKeyboardSpaceFB ::                             #type proc "system" (session: Session, createInfo: ^KeyboardSpaceCreateInfoFB, keyboardSpace: ^Space) -> Result
ProcCreateTriangleMeshFB ::                              #type proc "system" (session: Session, createInfo: ^TriangleMeshCreateInfoFB, outTriangleMesh: ^TriangleMeshFB) -> Result
ProcCreatePassthroughFB ::                               #type proc "system" (session: Session, createInfo: ^PassthroughCreateInfoFB, outPassthrough: ^PassthroughFB) -> Result
ProcCreatePassthroughLayerFB ::                          #type proc "system" (session: Session, createInfo: ^PassthroughLayerCreateInfoFB, outLayer: ^PassthroughLayerFB) -> Result
ProcCreateGeometryInstanceFB ::                          #type proc "system" (session: Session, createInfo: ^GeometryInstanceCreateInfoFB, outGeometryInstance: ^GeometryInstanceFB) -> Result
ProcEnumerateRenderModelPathsFB ::                       #type proc "system" (session: Session, pathCapacityInput: u32, pathCountOutput: ^u32, paths: [^]RenderModelPathInfoFB) -> Result
ProcGetRenderModelPropertiesFB ::                        #type proc "system" (session: Session, path: Path, properties: [^]RenderModelPropertiesFB) -> Result
ProcLoadRenderModelFB ::                                 #type proc "system" (session: Session, info: ^RenderModelLoadInfoFB, buffer: ^RenderModelBufferFB) -> Result
ProcSetEnvironmentDepthEstimationVARJO ::                #type proc "system" (session: Session, enabled: b32) -> Result
ProcSetMarkerTrackingVARJO ::                            #type proc "system" (session: Session, enabled: b32) -> Result
ProcSetMarkerTrackingTimeoutVARJO ::                     #type proc "system" (session: Session, markerId: u64, timeout: Duration) -> Result
ProcSetMarkerTrackingPredictionVARJO ::                  #type proc "system" (session: Session, markerId: u64, enable: b32) -> Result
ProcGetMarkerSizeVARJO ::                                #type proc "system" (session: Session, markerId: u64, size: ^Extent2Df) -> Result
ProcCreateMarkerSpaceVARJO ::                            #type proc "system" (session: Session, createInfo: ^MarkerSpaceCreateInfoVARJO, space: ^Space) -> Result
ProcSetViewOffsetVARJO ::                                #type proc "system" (session: Session, offset: f32) -> Result
ProcCreateMarkerDetectorML ::                            #type proc "system" (session: Session, createInfo: ^MarkerDetectorCreateInfoML, markerDetector: ^MarkerDetectorML) -> Result
ProcCreateMarkerSpaceML ::                               #type proc "system" (session: Session, createInfo: ^MarkerSpaceCreateInfoML, space: ^Space) -> Result
ProcEnableLocalizationEventsML ::                        #type proc "system" (session: Session, info: ^LocalizationEnableEventsInfoML) -> Result
ProcQueryLocalizationMapsML ::                           #type proc "system" (session: Session, queryInfo: ^LocalizationMapQueryInfoBaseHeaderML, mapCapacityInput: u32, mapCountOutput: ^u32, maps: [^]LocalizationMapML) -> Result
ProcRequestMapLocalizationML ::                          #type proc "system" (session: Session, requestInfo: ^MapLocalizationRequestInfoML) -> Result
ProcImportLocalizationMapML ::                           #type proc "system" (session: Session, importInfo: ^LocalizationMapImportInfoML, mapUuid: ^UuidEXT) -> Result
ProcCreateExportedLocalizationMapML ::                   #type proc "system" (session: Session, mapUuid: ^UuidEXT, map_: ^ExportedLocalizationMapML) -> Result
ProcCreateSpatialAnchorsAsyncML ::                       #type proc "system" (session: Session, createInfo: ^SpatialAnchorsCreateInfoBaseHeaderML, future: ^FutureEXT) -> Result
ProcCreateSpatialAnchorsCompleteML ::                    #type proc "system" (session: Session, future: FutureEXT, completion: ^CreateSpatialAnchorsCompletionML) -> Result
ProcCreateSpatialAnchorsStorageML ::                     #type proc "system" (session: Session, createInfo: ^SpatialAnchorsCreateStorageInfoML, storage: ^SpatialAnchorsStorageML) -> Result
ProcCreateSpatialAnchorStoreConnectionMSFT ::            #type proc "system" (session: Session, spatialAnchorStore: ^SpatialAnchorStoreConnectionMSFT) -> Result
ProcCreateSpatialAnchorFromPersistedNameMSFT ::          #type proc "system" (session: Session, spatialAnchorCreateInfo: ^SpatialAnchorFromPersistedAnchorCreateInfoMSFT, spatialAnchor: ^SpatialAnchorMSFT) -> Result
ProcQuerySpacesFB ::                                     #type proc "system" (session: Session, info: ^SpaceQueryInfoBaseHeaderFB, requestId: ^AsyncRequestIdFB) -> Result
ProcRetrieveSpaceQueryResultsFB ::                       #type proc "system" (session: Session, requestId: AsyncRequestIdFB, results: [^]SpaceQueryResultsFB) -> Result
ProcSaveSpaceFB ::                                       #type proc "system" (session: Session, info: ^SpaceSaveInfoFB, requestId: ^AsyncRequestIdFB) -> Result
ProcEraseSpaceFB ::                                      #type proc "system" (session: Session, info: ^SpaceEraseInfoFB, requestId: ^AsyncRequestIdFB) -> Result
ProcShareSpacesFB ::                                     #type proc "system" (session: Session, info: ^SpaceShareInfoFB, requestId: ^AsyncRequestIdFB) -> Result
ProcGetSpaceBoundingBox2DFB ::                           #type proc "system" (session: Session, space: Space, boundingBox2DOutput: ^Rect2Df) -> Result
ProcGetSpaceBoundingBox3DFB ::                           #type proc "system" (session: Session, space: Space, boundingBox3DOutput: ^Rect3DfFB) -> Result
ProcGetSpaceSemanticLabelsFB ::                          #type proc "system" (session: Session, space: Space, semanticLabelsOutput: ^SemanticLabelsFB) -> Result
ProcGetSpaceBoundary2DFB ::                              #type proc "system" (session: Session, space: Space, boundary2DOutput: ^Boundary2DFB) -> Result
ProcGetSpaceRoomLayoutFB ::                              #type proc "system" (session: Session, space: Space, roomLayoutOutput: ^RoomLayoutFB) -> Result
ProcSetDigitalLensControlALMALENCE ::                    #type proc "system" (session: Session, digitalLensControl: ^DigitalLensControlALMALENCE) -> Result
ProcRequestSceneCaptureFB ::                             #type proc "system" (session: Session, info: ^SceneCaptureRequestInfoFB, requestId: ^AsyncRequestIdFB) -> Result
ProcGetSpaceContainerFB ::                               #type proc "system" (session: Session, space: Space, spaceContainerOutput: ^SpaceContainerFB) -> Result
ProcGetFoveationEyeTrackedStateMETA ::                   #type proc "system" (session: Session, foveationState: ^FoveationEyeTrackedStateMETA) -> Result
ProcCreateFaceTrackerFB ::                               #type proc "system" (session: Session, createInfo: ^FaceTrackerCreateInfoFB, faceTracker: ^FaceTrackerFB) -> Result
ProcCreateEyeTrackerFB ::                                #type proc "system" (session: Session, createInfo: ^EyeTrackerCreateInfoFB, eyeTracker: ^EyeTrackerFB) -> Result
ProcGetDeviceSampleRateFB ::                             #type proc "system" (session: Session, hapticActionInfo: ^HapticActionInfo, deviceSampleRate: ^DevicePcmSampleRateGetInfoFB) -> Result
ProcGetPassthroughPreferencesMETA ::                     #type proc "system" (session: Session, preferences: [^]PassthroughPreferencesMETA) -> Result
ProcCreateVirtualKeyboardMETA ::                         #type proc "system" (session: Session, createInfo: ^VirtualKeyboardCreateInfoMETA, keyboard: ^VirtualKeyboardMETA) -> Result
ProcCreateVirtualKeyboardSpaceMETA ::                    #type proc "system" (session: Session, keyboard: VirtualKeyboardMETA, createInfo: ^VirtualKeyboardSpaceCreateInfoMETA, keyboardSpace: ^Space) -> Result
ProcEnumerateExternalCamerasOCULUS ::                    #type proc "system" (session: Session, cameraCapacityInput: u32, cameraCountOutput: ^u32, cameras: [^]ExternalCameraOCULUS) -> Result
ProcSetPerformanceMetricsStateMETA ::                    #type proc "system" (session: Session, state: ^PerformanceMetricsStateMETA) -> Result
ProcGetPerformanceMetricsStateMETA ::                    #type proc "system" (session: Session, state: ^PerformanceMetricsStateMETA) -> Result
ProcQueryPerformanceMetricsCounterMETA ::                #type proc "system" (session: Session, counterPath: Path, counter: ^PerformanceMetricsCounterMETA) -> Result
ProcSaveSpaceListFB ::                                   #type proc "system" (session: Session, info: ^SpaceListSaveInfoFB, requestId: ^AsyncRequestIdFB) -> Result
ProcCreateSpaceUserFB ::                                 #type proc "system" (session: Session, info: ^SpaceUserCreateInfoFB, user: ^SpaceUserFB) -> Result
ProcGetRecommendedLayerResolutionMETA ::                 #type proc "system" (session: Session, info: ^RecommendedLayerResolutionGetInfoMETA, resolution: ^RecommendedLayerResolutionMETA) -> Result
ProcSaveSpacesMETA ::                                    #type proc "system" (session: Session, info: ^SpacesSaveInfoMETA, requestId: ^AsyncRequestIdFB) -> Result
ProcEraseSpacesMETA ::                                   #type proc "system" (session: Session, info: ^SpacesEraseInfoMETA, requestId: ^AsyncRequestIdFB) -> Result
ProcCreateFaceTracker2FB ::                              #type proc "system" (session: Session, createInfo: ^FaceTrackerCreateInfo2FB, faceTracker: ^FaceTracker2FB) -> Result
ProcShareSpacesMETA ::                                   #type proc "system" (session: Session, info: ^ShareSpacesInfoMETA, requestId: ^AsyncRequestIdFB) -> Result
ProcCreateEnvironmentDepthProviderMETA ::                #type proc "system" (session: Session, createInfo: ^EnvironmentDepthProviderCreateInfoMETA, environmentDepthProvider: ^EnvironmentDepthProviderMETA) -> Result
ProcCreateRenderModelEXT ::                              #type proc "system" (session: Session, createInfo: ^RenderModelCreateInfoEXT, renderModel: ^RenderModelEXT) -> Result
ProcCreateRenderModelSpaceEXT ::                         #type proc "system" (session: Session, createInfo: ^RenderModelSpaceCreateInfoEXT, space: ^Space) -> Result
ProcCreateRenderModelAssetEXT ::                         #type proc "system" (session: Session, createInfo: ^RenderModelAssetCreateInfoEXT, asset: ^RenderModelAssetEXT) -> Result
ProcEnumerateInteractionRenderModelIdsEXT ::             #type proc "system" (session: Session, getInfo: ^InteractionRenderModelIdsEnumerateInfoEXT, renderModelIdCapacityInput: u32, renderModelIdCountOutput: ^u32, renderModelIds: [^]RenderModelIdEXT) -> Result
ProcSetTrackingOptimizationSettingsHintQCOM ::           #type proc "system" (session: Session, domain: TrackingOptimizationSettingsDomainQCOM, hint: TrackingOptimizationSettingsHintQCOM) -> Result
ProcCreatePassthroughHTC ::                              #type proc "system" (session: Session, createInfo: ^PassthroughCreateInfoHTC, passthrough: ^PassthroughHTC) -> Result
ProcApplyFoveationHTC ::                                 #type proc "system" (session: Session, applyInfo: ^FoveationApplyInfoHTC) -> Result
ProcCreateSpatialAnchorHTC ::                            #type proc "system" (session: Session, createInfo: ^SpatialAnchorCreateInfoHTC, anchor: ^Space) -> Result
ProcCreateBodyTrackerHTC ::                              #type proc "system" (session: Session, createInfo: ^BodyTrackerCreateInfoHTC, bodyTracker: ^BodyTrackerHTC) -> Result
ProcCreateBodyTrackerBD ::                               #type proc "system" (session: Session, createInfo: ^BodyTrackerCreateInfoBD, bodyTracker: ^BodyTrackerBD) -> Result
ProcCreateSenseDataProviderBD ::                         #type proc "system" (session: Session, createInfo: ^SenseDataProviderCreateInfoBD, provider: ^SenseDataProviderBD) -> Result
ProcStartSenseDataProviderCompleteBD ::                  #type proc "system" (session: Session, future: FutureEXT, completion: ^FutureCompletionEXT) -> Result
ProcCreateAnchorSpaceBD ::                               #type proc "system" (session: Session, createInfo: ^AnchorSpaceCreateInfoBD, space: ^Space) -> Result
ProcCreatePlaneDetectorEXT ::                            #type proc "system" (session: Session, createInfo: ^PlaneDetectorCreateInfoEXT, planeDetector: ^PlaneDetectorEXT) -> Result
ProcCreateTrackableTrackerANDROID ::                     #type proc "system" (session: Session, createInfo: ^TrackableTrackerCreateInfoANDROID, trackableTracker: ^TrackableTrackerANDROID) -> Result
ProcCreateAnchorSpaceANDROID ::                          #type proc "system" (session: Session, createInfo: ^AnchorSpaceCreateInfoANDROID, anchorOutput: ^Space) -> Result
ProcCreateDeviceAnchorPersistenceANDROID ::              #type proc "system" (session: Session, createInfo: ^DeviceAnchorPersistenceCreateInfoANDROID, outHandle: ^DeviceAnchorPersistenceANDROID) -> Result
ProcGetPassthroughCameraStateANDROID ::                  #type proc "system" (session: Session, getInfo: ^PassthroughCameraStateGetInfoANDROID, cameraStateOutput: ^PassthroughCameraStateANDROID) -> Result
ProcRaycastANDROID ::                                    #type proc "system" (session: Session, rayInfo: ^RaycastInfoANDROID, results: [^]RaycastHitResultsANDROID) -> Result
ProcCreateWorldMeshDetectorML ::                         #type proc "system" (session: Session, createInfo: ^WorldMeshDetectorCreateInfoML, detector: ^WorldMeshDetectorML) -> Result
ProcCreateFacialExpressionClientML ::                    #type proc "system" (session: Session, createInfo: ^FacialExpressionClientCreateInfoML, facialExpressionClient: ^FacialExpressionClientML) -> Result
ProcResumeSimultaneousHandsAndControllersTrackingMETA :: #type proc "system" (session: Session, resumeInfo: ^SimultaneousHandsAndControllersTrackingResumeInfoMETA) -> Result
ProcPauseSimultaneousHandsAndControllersTrackingMETA ::  #type proc "system" (session: Session, pauseInfo: ^SimultaneousHandsAndControllersTrackingPauseInfoMETA) -> Result
ProcStartColocationDiscoveryMETA ::                      #type proc "system" (session: Session, info: ^ColocationDiscoveryStartInfoMETA, discoveryRequestId: ^AsyncRequestIdFB) -> Result
ProcStopColocationDiscoveryMETA ::                       #type proc "system" (session: Session, info: ^ColocationDiscoveryStopInfoMETA, requestId: ^AsyncRequestIdFB) -> Result
ProcStartColocationAdvertisementMETA ::                  #type proc "system" (session: Session, info: ^ColocationAdvertisementStartInfoMETA, advertisementRequestId: ^AsyncRequestIdFB) -> Result
ProcStopColocationAdvertisementMETA ::                   #type proc "system" (session: Session, info: ^ColocationAdvertisementStopInfoMETA, requestId: ^AsyncRequestIdFB) -> Result
ProcCreateSpatialContextAsyncEXT ::                      #type proc "system" (session: Session, createInfo: ^SpatialContextCreateInfoEXT, future: ^FutureEXT) -> Result
ProcCreateSpatialContextCompleteEXT ::                   #type proc "system" (session: Session, future: FutureEXT, completion: ^CreateSpatialContextCompletionEXT) -> Result
ProcCreateSpatialPersistenceContextAsyncEXT ::           #type proc "system" (session: Session, createInfo: ^SpatialPersistenceContextCreateInfoEXT, future: ^FutureEXT) -> Result
ProcCreateSpatialPersistenceContextCompleteEXT ::        #type proc "system" (session: Session, future: FutureEXT, completion: ^CreateSpatialPersistenceContextCompletionEXT) -> Result
ProcSetAndroidApplicationThreadKHR ::                    #type proc "system" (session: Session, threadType: AndroidThreadTypeKHR, threadId: u32) -> Result
ProcCreateSwapchainAndroidSurfaceKHR ::                  #type proc "system" (session: Session, info: ^SwapchainCreateInfo, swapchain: ^Swapchain, surface: ^jobject) -> Result

// Other procedures

ProcLocateSpace ::                                  #type proc "system" (space, baseSpace: Space, time: Time, location: ^SpaceLocation) -> Result
ProcDestroySpace ::                                 #type proc "system" (space: Space) -> Result
ProcDestroySwapchain ::                             #type proc "system" (swapchain: Swapchain) -> Result
ProcEnumerateSwapchainImages ::                     #type proc "system" (swapchain: Swapchain, imageCapacityInput: u32, imageCountOutput: ^u32, images: [^]SwapchainImageBaseHeader) -> Result
ProcAcquireSwapchainImage ::                        #type proc "system" (swapchain: Swapchain, acquireInfo: ^SwapchainImageAcquireInfo, index: ^u32) -> Result
ProcWaitSwapchainImage ::                           #type proc "system" (swapchain: Swapchain, waitInfo: ^SwapchainImageWaitInfo) -> Result
ProcReleaseSwapchainImage ::                        #type proc "system" (swapchain: Swapchain, releaseInfo: ^SwapchainImageReleaseInfo) -> Result
ProcDestroyActionSet ::                             #type proc "system" (actionSet: ActionSet) -> Result
ProcCreateAction ::                                 #type proc "system" (actionSet: ActionSet, createInfo: ^ActionCreateInfo, action: ^Action) -> Result
ProcDestroyAction ::                                #type proc "system" (action: Action) -> Result
ProcInitializeLoaderKHR ::                          #type proc "system" (loaderInitInfo: ^LoaderInitInfoBaseHeaderKHR) -> Result
ProcDebugUtilsMessengerCallbackEXT ::               #type proc "system" (messageSeverity: DebugUtilsMessageSeverityFlagsEXT, messageTypes: DebugUtilsMessageTypeFlagsEXT, callbackData: ^DebugUtilsMessengerCallbackDataEXT, userData: rawptr) -> b32
ProcDestroyDebugUtilsMessengerEXT ::                #type proc "system" (messenger: DebugUtilsMessengerEXT) -> Result
ProcDestroySpatialAnchorMSFT ::                     #type proc "system" (anchor: SpatialAnchorMSFT) -> Result
ProcDestroySpatialGraphNodeBindingMSFT ::           #type proc "system" (nodeBinding: SpatialGraphNodeBindingMSFT) -> Result
ProcGetSpatialGraphNodeBindingPropertiesMSFT ::     #type proc "system" (nodeBinding: SpatialGraphNodeBindingMSFT, getInfo: ^SpatialGraphNodeBindingPropertiesGetInfoMSFT, properties: [^]SpatialGraphNodeBindingPropertiesMSFT) -> Result
ProcDestroyHandTrackerEXT ::                        #type proc "system" (handTracker: HandTrackerEXT) -> Result
ProcLocateHandJointsEXT ::                          #type proc "system" (handTracker: HandTrackerEXT, locateInfo: ^HandJointsLocateInfoEXT, locations: [^]HandJointLocationsEXT) -> Result
ProcCreateHandMeshSpaceMSFT ::                      #type proc "system" (handTracker: HandTrackerEXT, createInfo: ^HandMeshSpaceCreateInfoMSFT, space: ^Space) -> Result
ProcUpdateHandMeshMSFT ::                           #type proc "system" (handTracker: HandTrackerEXT, updateInfo: ^HandMeshUpdateInfoMSFT, handMesh: ^HandMeshMSFT) -> Result
ProcUpdateSwapchainFB ::                            #type proc "system" (swapchain: Swapchain, state: ^SwapchainStateBaseHeaderFB) -> Result
ProcGetSwapchainStateFB ::                          #type proc "system" (swapchain: Swapchain, state: ^SwapchainStateBaseHeaderFB) -> Result
ProcDestroyBodyTrackerFB ::                         #type proc "system" (bodyTracker: BodyTrackerFB) -> Result
ProcLocateBodyJointsFB ::                           #type proc "system" (bodyTracker: BodyTrackerFB, locateInfo: ^BodyJointsLocateInfoFB, locations: [^]BodyJointLocationsFB) -> Result
ProcGetBodySkeletonFB ::                            #type proc "system" (bodyTracker: BodyTrackerFB, skeleton: ^BodySkeletonFB) -> Result
ProcDestroySceneObserverMSFT ::                     #type proc "system" (sceneObserver: SceneObserverMSFT) -> Result
ProcCreateSceneMSFT ::                              #type proc "system" (sceneObserver: SceneObserverMSFT, createInfo: ^SceneCreateInfoMSFT, scene: ^SceneMSFT) -> Result
ProcDestroySceneMSFT ::                             #type proc "system" (scene: SceneMSFT) -> Result
ProcComputeNewSceneMSFT ::                          #type proc "system" (sceneObserver: SceneObserverMSFT, computeInfo: ^NewSceneComputeInfoMSFT) -> Result
ProcGetSceneComputeStateMSFT ::                     #type proc "system" (sceneObserver: SceneObserverMSFT, state: ^SceneComputeStateMSFT) -> Result
ProcGetSceneComponentsMSFT ::                       #type proc "system" (scene: SceneMSFT, getInfo: ^SceneComponentsGetInfoMSFT, components: [^]SceneComponentsMSFT) -> Result
ProcLocateSceneComponentsMSFT ::                    #type proc "system" (scene: SceneMSFT, locateInfo: ^SceneComponentsLocateInfoMSFT, locations: [^]SceneComponentLocationsMSFT) -> Result
ProcGetSceneMeshBuffersMSFT ::                      #type proc "system" (scene: SceneMSFT, getInfo: ^SceneMeshBuffersGetInfoMSFT, buffers: [^]SceneMeshBuffersMSFT) -> Result
ProcDeserializeSceneMSFT ::                         #type proc "system" (sceneObserver: SceneObserverMSFT, deserializeInfo: ^SceneDeserializeInfoMSFT) -> Result
ProcGetSerializedSceneFragmentDataMSFT ::           #type proc "system" (scene: SceneMSFT, getInfo: ^SerializedSceneFragmentDataGetInfoMSFT, countInput: u32, readOutput: ^u32, buffer: ^u8) -> Result
ProcDestroyFacialTrackerHTC ::                      #type proc "system" (facialTracker: FacialTrackerHTC) -> Result
ProcGetFacialExpressionsHTC ::                      #type proc "system" (facialTracker: FacialTrackerHTC, facialExpressions: [^]FacialExpressionsHTC) -> Result
ProcGetHandMeshFB ::                                #type proc "system" (handTracker: HandTrackerEXT, mesh: ^HandTrackingMeshFB) -> Result
ProcGetSpaceUuidFB ::                               #type proc "system" (space: Space, uuid: ^UuidEXT) -> Result
ProcEnumerateSpaceSupportedComponentsFB ::          #type proc "system" (space: Space, componentTypeCapacityInput: u32, componentTypeCountOutput: ^u32, componentTypes: [^]SpaceComponentTypeFB) -> Result
ProcSetSpaceComponentStatusFB ::                    #type proc "system" (space: Space, info: ^SpaceComponentStatusSetInfoFB, requestId: ^AsyncRequestIdFB) -> Result
ProcGetSpaceComponentStatusFB ::                    #type proc "system" (space: Space, componentType: SpaceComponentTypeFB, status: [^]SpaceComponentStatusFB) -> Result
ProcDestroyFoveationProfileFB ::                    #type proc "system" (profile: FoveationProfileFB) -> Result
ProcDestroyTriangleMeshFB ::                        #type proc "system" (mesh: TriangleMeshFB) -> Result
ProcTriangleMeshGetVertexBufferFB ::                #type proc "system" (mesh: TriangleMeshFB, outVertexBuffer: ^^Vector3f) -> Result
ProcTriangleMeshGetIndexBufferFB ::                 #type proc "system" (mesh: TriangleMeshFB, outIndexBuffer: ^^u32) -> Result
ProcTriangleMeshBeginUpdateFB ::                    #type proc "system" (mesh: TriangleMeshFB) -> Result
ProcTriangleMeshEndUpdateFB ::                      #type proc "system" (mesh: TriangleMeshFB, vertexCount, triangleCount: u32) -> Result
ProcTriangleMeshBeginVertexBufferUpdateFB ::        #type proc "system" (mesh: TriangleMeshFB, outVertexCount: ^u32) -> Result
ProcTriangleMeshEndVertexBufferUpdateFB ::          #type proc "system" (mesh: TriangleMeshFB) -> Result
ProcDestroyPassthroughFB ::                         #type proc "system" (passthrough: PassthroughFB) -> Result
ProcPassthroughStartFB ::                           #type proc "system" (passthrough: PassthroughFB) -> Result
ProcPassthroughPauseFB ::                           #type proc "system" (passthrough: PassthroughFB) -> Result
ProcDestroyPassthroughLayerFB ::                    #type proc "system" (layer: PassthroughLayerFB) -> Result
ProcPassthroughLayerPauseFB ::                      #type proc "system" (layer: PassthroughLayerFB) -> Result
ProcPassthroughLayerResumeFB ::                     #type proc "system" (layer: PassthroughLayerFB) -> Result
ProcPassthroughLayerSetStyleFB ::                   #type proc "system" (layer: PassthroughLayerFB, style: ^PassthroughStyleFB) -> Result
ProcDestroyGeometryInstanceFB ::                    #type proc "system" (instance: GeometryInstanceFB) -> Result
ProcGeometryInstanceSetTransformFB ::               #type proc "system" (instance: GeometryInstanceFB, transformation: ^GeometryInstanceTransformFB) -> Result
ProcDestroyMarkerDetectorML ::                      #type proc "system" (markerDetector: MarkerDetectorML) -> Result
ProcSnapshotMarkerDetectorML ::                     #type proc "system" (markerDetector: MarkerDetectorML, snapshotInfo: ^MarkerDetectorSnapshotInfoML) -> Result
ProcGetMarkerDetectorStateML ::                     #type proc "system" (markerDetector: MarkerDetectorML, state: ^MarkerDetectorStateML) -> Result
ProcGetMarkersML ::                                 #type proc "system" (markerDetector: MarkerDetectorML, markerCapacityInput: u32, markerCountOutput: ^u32, markers: [^]MarkerML) -> Result
ProcGetMarkerReprojectionErrorML ::                 #type proc "system" (markerDetector: MarkerDetectorML, marker: MarkerML, reprojectionErrorMeters: [^]f32) -> Result
ProcGetMarkerLengthML ::                            #type proc "system" (markerDetector: MarkerDetectorML, marker: MarkerML, meters: [^]f32) -> Result
ProcGetMarkerNumberML ::                            #type proc "system" (markerDetector: MarkerDetectorML, marker: MarkerML, number: ^u64) -> Result
ProcGetMarkerStringML ::                            #type proc "system" (markerDetector: MarkerDetectorML, marker: MarkerML, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcDestroyExportedLocalizationMapML ::             #type proc "system" (map_: ExportedLocalizationMapML) -> Result
ProcGetExportedLocalizationMapDataML ::             #type proc "system" (map_: ExportedLocalizationMapML, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcGetSpatialAnchorStateML ::                      #type proc "system" (anchor: Space, state: ^SpatialAnchorStateML) -> Result
ProcDestroySpatialAnchorsStorageML ::               #type proc "system" (storage: SpatialAnchorsStorageML) -> Result
ProcQuerySpatialAnchorsAsyncML ::                   #type proc "system" (storage: SpatialAnchorsStorageML, queryInfo: ^SpatialAnchorsQueryInfoBaseHeaderML, future: ^FutureEXT) -> Result
ProcQuerySpatialAnchorsCompleteML ::                #type proc "system" (storage: SpatialAnchorsStorageML, future: FutureEXT, completion: ^SpatialAnchorsQueryCompletionML) -> Result
ProcPublishSpatialAnchorsAsyncML ::                 #type proc "system" (storage: SpatialAnchorsStorageML, publishInfo: ^SpatialAnchorsPublishInfoML, future: ^FutureEXT) -> Result
ProcPublishSpatialAnchorsCompleteML ::              #type proc "system" (storage: SpatialAnchorsStorageML, future: FutureEXT, completion: ^SpatialAnchorsPublishCompletionML) -> Result
ProcDeleteSpatialAnchorsAsyncML ::                  #type proc "system" (storage: SpatialAnchorsStorageML, deleteInfo: ^SpatialAnchorsDeleteInfoML, future: ^FutureEXT) -> Result
ProcDeleteSpatialAnchorsCompleteML ::               #type proc "system" (storage: SpatialAnchorsStorageML, future: FutureEXT, completion: ^SpatialAnchorsDeleteCompletionML) -> Result
ProcUpdateSpatialAnchorsExpirationAsyncML ::        #type proc "system" (storage: SpatialAnchorsStorageML, updateInfo: ^SpatialAnchorsUpdateExpirationInfoML, future: ^FutureEXT) -> Result
ProcUpdateSpatialAnchorsExpirationCompleteML ::     #type proc "system" (storage: SpatialAnchorsStorageML, future: FutureEXT, completion: ^SpatialAnchorsUpdateExpirationCompletionML) -> Result
ProcDestroySpatialAnchorStoreConnectionMSFT ::      #type proc "system" (spatialAnchorStore: SpatialAnchorStoreConnectionMSFT) -> Result
ProcPersistSpatialAnchorMSFT ::                     #type proc "system" (spatialAnchorStore: SpatialAnchorStoreConnectionMSFT, spatialAnchorPersistenceInfo: ^SpatialAnchorPersistenceInfoMSFT) -> Result
ProcEnumeratePersistedSpatialAnchorNamesMSFT ::     #type proc "system" (spatialAnchorStore: SpatialAnchorStoreConnectionMSFT, spatialAnchorNameCapacityInput: u32, spatialAnchorNameCountOutput: ^u32, spatialAnchorNames: [^]SpatialAnchorPersistenceNameMSFT) -> Result
ProcUnpersistSpatialAnchorMSFT ::                   #type proc "system" (spatialAnchorStore: SpatialAnchorStoreConnectionMSFT, spatialAnchorPersistenceName: ^SpatialAnchorPersistenceNameMSFT) -> Result
ProcClearSpatialAnchorStoreMSFT ::                  #type proc "system" (spatialAnchorStore: SpatialAnchorStoreConnectionMSFT) -> Result
ProcGetSceneMarkerRawDataMSFT ::                    #type proc "system" (scene: SceneMSFT, markerId: ^UuidMSFT, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcGetSceneMarkerDecodedStringMSFT ::              #type proc "system" (scene: SceneMSFT, markerId: ^UuidMSFT, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcDestroyFaceTrackerFB ::                         #type proc "system" (faceTracker: FaceTrackerFB) -> Result
ProcGetFaceExpressionWeightsFB ::                   #type proc "system" (faceTracker: FaceTrackerFB, expressionInfo: ^FaceExpressionInfoFB, expressionWeights: [^]FaceExpressionWeightsFB) -> Result
ProcDestroyEyeTrackerFB ::                          #type proc "system" (eyeTracker: EyeTrackerFB) -> Result
ProcGetEyeGazesFB ::                                #type proc "system" (eyeTracker: EyeTrackerFB, gazeInfo: ^EyeGazesInfoFB, eyeGazes: [^]EyeGazesFB) -> Result
ProcPassthroughLayerSetKeyboardHandsIntensityFB ::  #type proc "system" (layer: PassthroughLayerFB, intensity: ^PassthroughKeyboardHandsIntensityFB) -> Result
ProcDestroyVirtualKeyboardMETA ::                   #type proc "system" (keyboard: VirtualKeyboardMETA) -> Result
ProcSuggestVirtualKeyboardLocationMETA ::           #type proc "system" (keyboard: VirtualKeyboardMETA, locationInfo: ^VirtualKeyboardLocationInfoMETA) -> Result
ProcGetVirtualKeyboardScaleMETA ::                  #type proc "system" (keyboard: VirtualKeyboardMETA, scale: ^f32) -> Result
ProcSetVirtualKeyboardModelVisibilityMETA ::        #type proc "system" (keyboard: VirtualKeyboardMETA, modelVisibility: ^VirtualKeyboardModelVisibilitySetInfoMETA) -> Result
ProcGetVirtualKeyboardModelAnimationStatesMETA ::   #type proc "system" (keyboard: VirtualKeyboardMETA, animationStates: [^]VirtualKeyboardModelAnimationStatesMETA) -> Result
ProcGetVirtualKeyboardDirtyTexturesMETA ::          #type proc "system" (keyboard: VirtualKeyboardMETA, textureIdCapacityInput: u32, textureIdCountOutput: ^u32, textureIds: [^]u64) -> Result
ProcGetVirtualKeyboardTextureDataMETA ::            #type proc "system" (keyboard: VirtualKeyboardMETA, textureId: u64, textureData: ^VirtualKeyboardTextureDataMETA) -> Result
ProcSendVirtualKeyboardInputMETA ::                 #type proc "system" (keyboard: VirtualKeyboardMETA, info: ^VirtualKeyboardInputInfoMETA, interactorRootPose: ^Posef) -> Result
ProcChangeVirtualKeyboardTextContextMETA ::         #type proc "system" (keyboard: VirtualKeyboardMETA, changeInfo: ^VirtualKeyboardTextContextChangeInfoMETA) -> Result
ProcGetSpaceUserIdFB ::                             #type proc "system" (user: SpaceUserFB, userId: ^SpaceUserIdFB) -> Result
ProcDestroySpaceUserFB ::                           #type proc "system" (user: SpaceUserFB) -> Result
ProcCreatePassthroughColorLutMETA ::                #type proc "system" (passthrough: PassthroughFB, createInfo: ^PassthroughColorLutCreateInfoMETA, colorLut: ^PassthroughColorLutMETA) -> Result
ProcDestroyPassthroughColorLutMETA ::               #type proc "system" (colorLut: PassthroughColorLutMETA) -> Result
ProcUpdatePassthroughColorLutMETA ::                #type proc "system" (colorLut: PassthroughColorLutMETA, updateInfo: ^PassthroughColorLutUpdateInfoMETA) -> Result
ProcGetSpaceTriangleMeshMETA ::                     #type proc "system" (space: Space, getInfo: ^SpaceTriangleMeshGetInfoMETA, triangleMeshOutput: ^SpaceTriangleMeshMETA) -> Result
ProcSuggestBodyTrackingCalibrationOverrideMETA ::   #type proc "system" (bodyTracker: BodyTrackerFB, calibrationInfo: ^BodyTrackingCalibrationInfoMETA) -> Result
ProcResetBodyTrackingCalibrationMETA ::             #type proc "system" (bodyTracker: BodyTrackerFB) -> Result
ProcDestroyFaceTracker2FB ::                        #type proc "system" (faceTracker: FaceTracker2FB) -> Result
ProcGetFaceExpressionWeights2FB ::                  #type proc "system" (faceTracker: FaceTracker2FB, expressionInfo: ^FaceExpressionInfo2FB, expressionWeights: [^]FaceExpressionWeights2FB) -> Result
ProcDestroyEnvironmentDepthProviderMETA ::          #type proc "system" (environmentDepthProvider: EnvironmentDepthProviderMETA) -> Result
ProcStartEnvironmentDepthProviderMETA ::            #type proc "system" (environmentDepthProvider: EnvironmentDepthProviderMETA) -> Result
ProcStopEnvironmentDepthProviderMETA ::             #type proc "system" (environmentDepthProvider: EnvironmentDepthProviderMETA) -> Result
ProcCreateEnvironmentDepthSwapchainMETA ::          #type proc "system" (environmentDepthProvider: EnvironmentDepthProviderMETA, createInfo: ^EnvironmentDepthSwapchainCreateInfoMETA, swapchain: ^EnvironmentDepthSwapchainMETA) -> Result
ProcDestroyEnvironmentDepthSwapchainMETA ::         #type proc "system" (swapchain: EnvironmentDepthSwapchainMETA) -> Result
ProcEnumerateEnvironmentDepthSwapchainImagesMETA :: #type proc "system" (swapchain: EnvironmentDepthSwapchainMETA, imageCapacityInput: u32, imageCountOutput: ^u32, images: [^]SwapchainImageBaseHeader) -> Result
ProcGetEnvironmentDepthSwapchainStateMETA ::        #type proc "system" (swapchain: EnvironmentDepthSwapchainMETA, state: ^EnvironmentDepthSwapchainStateMETA) -> Result
ProcAcquireEnvironmentDepthImageMETA ::             #type proc "system" (environmentDepthProvider: EnvironmentDepthProviderMETA, acquireInfo: ^EnvironmentDepthImageAcquireInfoMETA, environmentDepthImage: ^EnvironmentDepthImageMETA) -> Result
ProcSetEnvironmentDepthHandRemovalMETA ::           #type proc "system" (environmentDepthProvider: EnvironmentDepthProviderMETA, setInfo: ^EnvironmentDepthHandRemovalSetInfoMETA) -> Result
ProcDestroyRenderModelEXT ::                        #type proc "system" (renderModel: RenderModelEXT) -> Result
ProcGetRenderModelPropertiesEXT ::                  #type proc "system" (renderModel: RenderModelEXT, getInfo: ^RenderModelPropertiesGetInfoEXT, properties: [^]RenderModelPropertiesEXT) -> Result
ProcDestroyRenderModelAssetEXT ::                   #type proc "system" (asset: RenderModelAssetEXT) -> Result
ProcGetRenderModelAssetDataEXT ::                   #type proc "system" (asset: RenderModelAssetEXT, getInfo: ^RenderModelAssetDataGetInfoEXT, buffer: ^RenderModelAssetDataEXT) -> Result
ProcGetRenderModelAssetPropertiesEXT ::             #type proc "system" (asset: RenderModelAssetEXT, getInfo: ^RenderModelAssetPropertiesGetInfoEXT, properties: [^]RenderModelAssetPropertiesEXT) -> Result
ProcGetRenderModelStateEXT ::                       #type proc "system" (renderModel: RenderModelEXT, getInfo: ^RenderModelStateGetInfoEXT, state: ^RenderModelStateEXT) -> Result
ProcEnumerateRenderModelSubactionPathsEXT ::        #type proc "system" (renderModel: RenderModelEXT, info: ^InteractionRenderModelSubactionPathInfoEXT, pathCapacityInput: u32, pathCountOutput: ^u32, paths: [^]Path) -> Result
ProcGetRenderModelPoseTopLevelUserPathEXT ::        #type proc "system" (renderModel: RenderModelEXT, info: ^InteractionRenderModelTopLevelUserPathGetInfoEXT, topLevelUserPath: ^Path) -> Result
ProcDestroyPassthroughHTC ::                        #type proc "system" (passthrough: PassthroughHTC) -> Result
ProcGetSpatialAnchorNameHTC ::                      #type proc "system" (anchor: Space, name: ^SpatialAnchorNameHTC) -> Result
ProcDestroyBodyTrackerHTC ::                        #type proc "system" (bodyTracker: BodyTrackerHTC) -> Result
ProcLocateBodyJointsHTC ::                          #type proc "system" (bodyTracker: BodyTrackerHTC, locateInfo: ^BodyJointsLocateInfoHTC, locations: [^]BodyJointLocationsHTC) -> Result
ProcGetBodySkeletonHTC ::                           #type proc "system" (bodyTracker: BodyTrackerHTC, baseSpace: Space, skeletonGenerationId: u32, skeleton: ^BodySkeletonHTC) -> Result
ProcApplyForceFeedbackCurlMNDX ::                   #type proc "system" (handTracker: HandTrackerEXT, locations: [^]ForceFeedbackCurlApplyLocationsMNDX) -> Result
ProcDestroyBodyTrackerBD ::                         #type proc "system" (bodyTracker: BodyTrackerBD) -> Result
ProcLocateBodyJointsBD ::                           #type proc "system" (bodyTracker: BodyTrackerBD, locateInfo: ^BodyJointsLocateInfoBD, locations: [^]BodyJointLocationsBD) -> Result
ProcEnumerateSpatialEntityComponentTypesBD ::       #type proc "system" (snapshot: SenseDataSnapshotBD, entityId: SpatialEntityIdBD, componentTypeCapacityInput: u32, componentTypeCountOutput: ^u32, componentTypes: [^]SpatialEntityComponentTypeBD) -> Result
ProcGetSpatialEntityUuidBD ::                       #type proc "system" (snapshot: SenseDataSnapshotBD, entityId: SpatialEntityIdBD, uuid: ^UuidEXT) -> Result
ProcGetSpatialEntityComponentDataBD ::              #type proc "system" (snapshot: SenseDataSnapshotBD, getInfo: ^SpatialEntityComponentGetInfoBD, componentData: ^SpatialEntityComponentDataBaseHeaderBD) -> Result
ProcStartSenseDataProviderAsyncBD ::                #type proc "system" (provider: SenseDataProviderBD, startInfo: ^SenseDataProviderStartInfoBD, future: ^FutureEXT) -> Result
ProcGetSenseDataProviderStateBD ::                  #type proc "system" (provider: SenseDataProviderBD, state: ^SenseDataProviderStateBD) -> Result
ProcQuerySenseDataAsyncBD ::                        #type proc "system" (provider: SenseDataProviderBD, queryInfo: ^SenseDataQueryInfoBD, future: ^FutureEXT) -> Result
ProcQuerySenseDataCompleteBD ::                     #type proc "system" (provider: SenseDataProviderBD, future: FutureEXT, completion: ^SenseDataQueryCompletionBD) -> Result
ProcDestroySenseDataSnapshotBD ::                   #type proc "system" (snapshot: SenseDataSnapshotBD) -> Result
ProcGetQueriedSenseDataBD ::                        #type proc "system" (snapshot: SenseDataSnapshotBD, getInfo: ^QueriedSenseDataGetInfoBD, queriedSenseData: ^QueriedSenseDataBD) -> Result
ProcStopSenseDataProviderBD ::                      #type proc "system" (provider: SenseDataProviderBD) -> Result
ProcDestroySenseDataProviderBD ::                   #type proc "system" (provider: SenseDataProviderBD) -> Result
ProcCreateSpatialEntityAnchorBD ::                  #type proc "system" (provider: SenseDataProviderBD, createInfo: ^SpatialEntityAnchorCreateInfoBD, anchor: ^AnchorBD) -> Result
ProcDestroyAnchorBD ::                              #type proc "system" (anchor: AnchorBD) -> Result
ProcGetAnchorUuidBD ::                              #type proc "system" (anchor: AnchorBD, uuid: ^UuidEXT) -> Result
ProcCreateSpatialAnchorAsyncBD ::                   #type proc "system" (provider: SenseDataProviderBD, info: ^SpatialAnchorCreateInfoBD, future: ^FutureEXT) -> Result
ProcCreateSpatialAnchorCompleteBD ::                #type proc "system" (provider: SenseDataProviderBD, future: FutureEXT, completion: ^SpatialAnchorCreateCompletionBD) -> Result
ProcPersistSpatialAnchorAsyncBD ::                  #type proc "system" (provider: SenseDataProviderBD, info: ^SpatialAnchorPersistInfoBD, future: ^FutureEXT) -> Result
ProcPersistSpatialAnchorCompleteBD ::               #type proc "system" (provider: SenseDataProviderBD, future: FutureEXT, completion: ^FutureCompletionEXT) -> Result
ProcUnpersistSpatialAnchorAsyncBD ::                #type proc "system" (provider: SenseDataProviderBD, info: ^SpatialAnchorUnpersistInfoBD, future: ^FutureEXT) -> Result
ProcUnpersistSpatialAnchorCompleteBD ::             #type proc "system" (provider: SenseDataProviderBD, future: FutureEXT, completion: ^FutureCompletionEXT) -> Result
ProcShareSpatialAnchorAsyncBD ::                    #type proc "system" (provider: SenseDataProviderBD, info: ^SpatialAnchorShareInfoBD, future: ^FutureEXT) -> Result
ProcShareSpatialAnchorCompleteBD ::                 #type proc "system" (provider: SenseDataProviderBD, future: FutureEXT, completion: ^FutureCompletionEXT) -> Result
ProcDownloadSharedSpatialAnchorAsyncBD ::           #type proc "system" (provider: SenseDataProviderBD, info: ^SharedSpatialAnchorDownloadInfoBD, future: ^FutureEXT) -> Result
ProcDownloadSharedSpatialAnchorCompleteBD ::        #type proc "system" (provider: SenseDataProviderBD, future: FutureEXT, completion: ^FutureCompletionEXT) -> Result
ProcCaptureSceneAsyncBD ::                          #type proc "system" (provider: SenseDataProviderBD, info: ^SceneCaptureInfoBD, future: ^FutureEXT) -> Result
ProcCaptureSceneCompleteBD ::                       #type proc "system" (provider: SenseDataProviderBD, future: FutureEXT, completion: ^FutureCompletionEXT) -> Result
ProcDestroyPlaneDetectorEXT ::                      #type proc "system" (planeDetector: PlaneDetectorEXT) -> Result
ProcBeginPlaneDetectionEXT ::                       #type proc "system" (planeDetector: PlaneDetectorEXT, beginInfo: ^PlaneDetectorBeginInfoEXT) -> Result
ProcGetPlaneDetectionStateEXT ::                    #type proc "system" (planeDetector: PlaneDetectorEXT, state: ^PlaneDetectionStateEXT) -> Result
ProcGetPlaneDetectionsEXT ::                        #type proc "system" (planeDetector: PlaneDetectorEXT, info: ^PlaneDetectorGetInfoEXT, locations: [^]PlaneDetectorLocationsEXT) -> Result
ProcGetPlanePolygonBufferEXT ::                     #type proc "system" (planeDetector: PlaneDetectorEXT, planeId: u64, polygonBufferIndex: u32, polygonBuffer: ^PlaneDetectorPolygonBufferEXT) -> Result
ProcDestroyTrackableTrackerANDROID ::               #type proc "system" (trackableTracker: TrackableTrackerANDROID) -> Result
ProcGetAllTrackablesANDROID ::                      #type proc "system" (trackableTracker: TrackableTrackerANDROID, trackableCapacityInput: u32, trackableCountOutput: ^u32, trackables: [^]TrackableANDROID) -> Result
ProcGetTrackablePlaneANDROID ::                     #type proc "system" (trackableTracker: TrackableTrackerANDROID, getInfo: ^TrackableGetInfoANDROID, planeOutput: ^TrackablePlaneANDROID) -> Result
ProcDestroyDeviceAnchorPersistenceANDROID ::        #type proc "system" (handle: DeviceAnchorPersistenceANDROID) -> Result
ProcPersistAnchorANDROID ::                         #type proc "system" (handle: DeviceAnchorPersistenceANDROID, persistedInfo: ^PersistedAnchorSpaceInfoANDROID, anchorIdOutput: ^UuidEXT) -> Result
ProcGetAnchorPersistStateANDROID ::                 #type proc "system" (handle: DeviceAnchorPersistenceANDROID, anchorId: ^UuidEXT, persistState: ^AnchorPersistStateANDROID) -> Result
ProcCreatePersistedAnchorSpaceANDROID ::            #type proc "system" (handle: DeviceAnchorPersistenceANDROID, createInfo: ^PersistedAnchorSpaceCreateInfoANDROID, anchorOutput: ^Space) -> Result
ProcEnumeratePersistedAnchorsANDROID ::             #type proc "system" (handle: DeviceAnchorPersistenceANDROID, anchorIdCapacityInput: u32, anchorIdCountOutput: ^u32, anchorIds: [^]UuidEXT) -> Result
ProcUnpersistAnchorANDROID ::                       #type proc "system" (handle: DeviceAnchorPersistenceANDROID, anchorId: ^UuidEXT) -> Result
ProcGetTrackableObjectANDROID ::                    #type proc "system" (tracker: TrackableTrackerANDROID, getInfo: ^TrackableGetInfoANDROID, objectOutput: ^TrackableObjectANDROID) -> Result
ProcDestroyWorldMeshDetectorML ::                   #type proc "system" (detector: WorldMeshDetectorML) -> Result
ProcRequestWorldMeshStateAsyncML ::                 #type proc "system" (detector: WorldMeshDetectorML, stateRequest: ^WorldMeshStateRequestInfoML, future: ^FutureEXT) -> Result
ProcRequestWorldMeshStateCompleteML ::              #type proc "system" (detector: WorldMeshDetectorML, future: FutureEXT, completion: ^WorldMeshStateRequestCompletionML) -> Result
ProcGetWorldMeshBufferRecommendSizeML ::            #type proc "system" (detector: WorldMeshDetectorML, sizeInfo: ^WorldMeshBufferRecommendedSizeInfoML, size: ^WorldMeshBufferSizeML) -> Result
ProcAllocateWorldMeshBufferML ::                    #type proc "system" (detector: WorldMeshDetectorML, size: ^WorldMeshBufferSizeML, buffer: ^WorldMeshBufferML) -> Result
ProcFreeWorldMeshBufferML ::                        #type proc "system" (detector: WorldMeshDetectorML, buffer: ^WorldMeshBufferML) -> Result
ProcRequestWorldMeshAsyncML ::                      #type proc "system" (detector: WorldMeshDetectorML, getInfo: ^WorldMeshGetInfoML, buffer: ^WorldMeshBufferML, future: ^FutureEXT) -> Result
ProcRequestWorldMeshCompleteML ::                   #type proc "system" (detector: WorldMeshDetectorML, completionInfo: ^WorldMeshRequestCompletionInfoML, future: FutureEXT, completion: ^WorldMeshRequestCompletionML) -> Result
ProcDestroyFacialExpressionClientML ::              #type proc "system" (facialExpressionClient: FacialExpressionClientML) -> Result
ProcGetFacialExpressionBlendShapePropertiesML ::    #type proc "system" (facialExpressionClient: FacialExpressionClientML, blendShapeGetInfo: ^FacialExpressionBlendShapeGetInfoML, blendShapeCount: u32, blendShapes: [^]FacialExpressionBlendShapePropertiesML) -> Result
ProcGetTrackableMarkerANDROID ::                    #type proc "system" (tracker: TrackableTrackerANDROID, getInfo: ^TrackableGetInfoANDROID, markerOutput: ^TrackableMarkerANDROID) -> Result
ProcDestroySpatialContextEXT ::                     #type proc "system" (spatialContext: SpatialContextEXT) -> Result
ProcCreateSpatialDiscoverySnapshotAsyncEXT ::       #type proc "system" (spatialContext: SpatialContextEXT, createInfo: ^SpatialDiscoverySnapshotCreateInfoEXT, future: ^FutureEXT) -> Result
ProcCreateSpatialDiscoverySnapshotCompleteEXT ::    #type proc "system" (spatialContext: SpatialContextEXT, createSnapshotCompletionInfo: ^CreateSpatialDiscoverySnapshotCompletionInfoEXT, completion: ^CreateSpatialDiscoverySnapshotCompletionEXT) -> Result
ProcQuerySpatialComponentDataEXT ::                 #type proc "system" (snapshot: SpatialSnapshotEXT, queryCondition: ^SpatialComponentDataQueryConditionEXT, queryResult: ^SpatialComponentDataQueryResultEXT) -> Result
ProcDestroySpatialSnapshotEXT ::                    #type proc "system" (snapshot: SpatialSnapshotEXT) -> Result
ProcCreateSpatialEntityFromIdEXT ::                 #type proc "system" (spatialContext: SpatialContextEXT, createInfo: ^SpatialEntityFromIdCreateInfoEXT, spatialEntity: ^SpatialEntityEXT) -> Result
ProcDestroySpatialEntityEXT ::                      #type proc "system" (spatialEntity: SpatialEntityEXT) -> Result
ProcCreateSpatialUpdateSnapshotEXT ::               #type proc "system" (spatialContext: SpatialContextEXT, createInfo: ^SpatialUpdateSnapshotCreateInfoEXT, snapshot: ^SpatialSnapshotEXT) -> Result
ProcGetSpatialBufferStringEXT ::                    #type proc "system" (snapshot: SpatialSnapshotEXT, info: ^SpatialBufferGetInfoEXT, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcGetSpatialBufferUint8EXT ::                     #type proc "system" (snapshot: SpatialSnapshotEXT, info: ^SpatialBufferGetInfoEXT, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u8) -> Result
ProcGetSpatialBufferUint16EXT ::                    #type proc "system" (snapshot: SpatialSnapshotEXT, info: ^SpatialBufferGetInfoEXT, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^u16) -> Result
ProcGetSpatialBufferUint32EXT ::                    #type proc "system" (snapshot: SpatialSnapshotEXT, info: ^SpatialBufferGetInfoEXT, bufferCapacityInput: u32, bufferCountOutput, buffer: ^u32) -> Result
ProcGetSpatialBufferFloatEXT ::                     #type proc "system" (snapshot: SpatialSnapshotEXT, info: ^SpatialBufferGetInfoEXT, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^f32) -> Result
ProcGetSpatialBufferVector2fEXT ::                  #type proc "system" (snapshot: SpatialSnapshotEXT, info: ^SpatialBufferGetInfoEXT, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^Vector2f) -> Result
ProcGetSpatialBufferVector3fEXT ::                  #type proc "system" (snapshot: SpatialSnapshotEXT, info: ^SpatialBufferGetInfoEXT, bufferCapacityInput: u32, bufferCountOutput: ^u32, buffer: ^Vector3f) -> Result
ProcCreateSpatialAnchorEXT ::                       #type proc "system" (spatialContext: SpatialContextEXT, createInfo: ^SpatialAnchorCreateInfoEXT, anchorEntityId: ^SpatialEntityIdEXT, anchorEntity: ^SpatialEntityEXT) -> Result
ProcDestroySpatialPersistenceContextEXT ::          #type proc "system" (persistenceContext: SpatialPersistenceContextEXT) -> Result
ProcPersistSpatialEntityAsyncEXT ::                 #type proc "system" (persistenceContext: SpatialPersistenceContextEXT, persistInfo: ^SpatialEntityPersistInfoEXT, future: ^FutureEXT) -> Result
ProcPersistSpatialEntityCompleteEXT ::              #type proc "system" (persistenceContext: SpatialPersistenceContextEXT, future: FutureEXT, completion: ^PersistSpatialEntityCompletionEXT) -> Result
ProcUnpersistSpatialEntityAsyncEXT ::               #type proc "system" (persistenceContext: SpatialPersistenceContextEXT, unpersistInfo: ^SpatialEntityUnpersistInfoEXT, future: ^FutureEXT) -> Result
ProcUnpersistSpatialEntityCompleteEXT ::            #type proc "system" (persistenceContext: SpatialPersistenceContextEXT, future: FutureEXT, completion: ^UnpersistSpatialEntityCompletionEXT) -> Result

// Global level procedures

EnumerateApiLayerProperties:          ProcEnumerateApiLayerProperties
EnumerateInstanceExtensionProperties: ProcEnumerateInstanceExtensionProperties
CreateInstance:                       ProcCreateInstance

// Instance level procedures

GetInstanceProcAddr:                             ProcGetInstanceProcAddr
DestroyInstance:                                 ProcDestroyInstance
GetInstanceProperties:                           ProcGetInstanceProperties
PollEvent:                                       ProcPollEvent
ResultToString:                                  ProcResultToString
StructureTypeToString:                           ProcStructureTypeToString
GetSystem:                                       ProcGetSystem
GetSystemProperties:                             ProcGetSystemProperties
EnumerateEnvironmentBlendModes:                  ProcEnumerateEnvironmentBlendModes
CreateSession:                                   ProcCreateSession
EnumerateViewConfigurations:                     ProcEnumerateViewConfigurations
GetViewConfigurationProperties:                  ProcGetViewConfigurationProperties
EnumerateViewConfigurationViews:                 ProcEnumerateViewConfigurationViews
StringToPath:                                    ProcStringToPath
PathToString:                                    ProcPathToString
CreateActionSet:                                 ProcCreateActionSet
SuggestInteractionProfileBindings:               ProcSuggestInteractionProfileBindings
StructureTypeToString2KHR:                       ProcStructureTypeToString2KHR
SetDebugUtilsObjectNameEXT:                      ProcSetDebugUtilsObjectNameEXT
CreateDebugUtilsMessengerEXT:                    ProcCreateDebugUtilsMessengerEXT
SubmitDebugUtilsMessageEXT:                      ProcSubmitDebugUtilsMessageEXT
EnumerateReprojectionModesMSFT:                  ProcEnumerateReprojectionModesMSFT
EnumerateSceneComputeFeaturesMSFT:               ProcEnumerateSceneComputeFeaturesMSFT
EnumerateViveTrackerPathsHTCX:                   ProcEnumerateViveTrackerPathsHTCX
EnumeratePerformanceMetricsCounterPathsMETA:     ProcEnumeratePerformanceMetricsCounterPathsMETA
EnumerateSupportedTrackableTypesANDROID:         ProcEnumerateSupportedTrackableTypesANDROID
EnumerateSupportedAnchorTrackableTypesANDROID:   ProcEnumerateSupportedAnchorTrackableTypesANDROID
EnumerateSupportedPersistenceAnchorTypesANDROID: ProcEnumerateSupportedPersistenceAnchorTypesANDROID
EnumerateRaycastSupportedTrackableTypesANDROID:  ProcEnumerateRaycastSupportedTrackableTypesANDROID
PollFutureEXT:                                   ProcPollFutureEXT
CancelFutureEXT:                                 ProcCancelFutureEXT
EnableUserCalibrationEventsML:                   ProcEnableUserCalibrationEventsML
SetSystemNotificationsML:                        ProcSetSystemNotificationsML
EnumerateSpatialCapabilitiesEXT:                 ProcEnumerateSpatialCapabilitiesEXT
EnumerateSpatialCapabilityComponentTypesEXT:     ProcEnumerateSpatialCapabilityComponentTypesEXT
EnumerateSpatialCapabilityFeaturesEXT:           ProcEnumerateSpatialCapabilityFeaturesEXT
EnumerateSpatialPersistenceScopesEXT:            ProcEnumerateSpatialPersistenceScopesEXT

// Session level procedures

DestroySession:                                    ProcDestroySession
EnumerateReferenceSpaces:                          ProcEnumerateReferenceSpaces
CreateReferenceSpace:                              ProcCreateReferenceSpace
GetReferenceSpaceBoundsRect:                       ProcGetReferenceSpaceBoundsRect
CreateActionSpace:                                 ProcCreateActionSpace
EnumerateSwapchainFormats:                         ProcEnumerateSwapchainFormats
CreateSwapchain:                                   ProcCreateSwapchain
BeginSession:                                      ProcBeginSession
EndSession:                                        ProcEndSession
RequestExitSession:                                ProcRequestExitSession
WaitFrame:                                         ProcWaitFrame
BeginFrame:                                        ProcBeginFrame
EndFrame:                                          ProcEndFrame
LocateViews:                                       ProcLocateViews
AttachSessionActionSets:                           ProcAttachSessionActionSets
GetCurrentInteractionProfile:                      ProcGetCurrentInteractionProfile
GetActionStateBoolean:                             ProcGetActionStateBoolean
GetActionStateFloat:                               ProcGetActionStateFloat
GetActionStateVector2f:                            ProcGetActionStateVector2f
GetActionStatePose:                                ProcGetActionStatePose
SyncActions:                                       ProcSyncActions
EnumerateBoundSourcesForAction:                    ProcEnumerateBoundSourcesForAction
GetInputSourceLocalizedName:                       ProcGetInputSourceLocalizedName
ApplyHapticFeedback:                               ProcApplyHapticFeedback
StopHapticFeedback:                                ProcStopHapticFeedback
LocateSpaces:                                      ProcLocateSpaces
GetVisibilityMaskKHR:                              ProcGetVisibilityMaskKHR
LocateSpacesKHR:                                   ProcLocateSpacesKHR
PerfSettingsSetPerformanceLevelEXT:                ProcPerfSettingsSetPerformanceLevelEXT
ThermalGetTemperatureTrendEXT:                     ProcThermalGetTemperatureTrendEXT
SessionBeginDebugUtilsLabelRegionEXT:              ProcSessionBeginDebugUtilsLabelRegionEXT
SessionEndDebugUtilsLabelRegionEXT:                ProcSessionEndDebugUtilsLabelRegionEXT
SessionInsertDebugUtilsLabelEXT:                   ProcSessionInsertDebugUtilsLabelEXT
CreateSpatialAnchorMSFT:                           ProcCreateSpatialAnchorMSFT
CreateSpatialAnchorSpaceMSFT:                      ProcCreateSpatialAnchorSpaceMSFT
SetInputDeviceActiveEXT:                           ProcSetInputDeviceActiveEXT
SetInputDeviceStateBoolEXT:                        ProcSetInputDeviceStateBoolEXT
SetInputDeviceStateFloatEXT:                       ProcSetInputDeviceStateFloatEXT
SetInputDeviceStateVector2fEXT:                    ProcSetInputDeviceStateVector2fEXT
SetInputDeviceLocationEXT:                         ProcSetInputDeviceLocationEXT
CreateSpatialGraphNodeSpaceMSFT:                   ProcCreateSpatialGraphNodeSpaceMSFT
TryCreateSpatialGraphStaticNodeBindingMSFT:        ProcTryCreateSpatialGraphStaticNodeBindingMSFT
CreateHandTrackerEXT:                              ProcCreateHandTrackerEXT
GetControllerModelKeyMSFT:                         ProcGetControllerModelKeyMSFT
LoadControllerModelMSFT:                           ProcLoadControllerModelMSFT
GetControllerModelPropertiesMSFT:                  ProcGetControllerModelPropertiesMSFT
GetControllerModelStateMSFT:                       ProcGetControllerModelStateMSFT
CreateBodyTrackerFB:                               ProcCreateBodyTrackerFB
CreateSceneObserverMSFT:                           ProcCreateSceneObserverMSFT
EnumerateDisplayRefreshRatesFB:                    ProcEnumerateDisplayRefreshRatesFB
GetDisplayRefreshRateFB:                           ProcGetDisplayRefreshRateFB
RequestDisplayRefreshRateFB:                       ProcRequestDisplayRefreshRateFB
CreateFacialTrackerHTC:                            ProcCreateFacialTrackerHTC
EnumerateColorSpacesFB:                            ProcEnumerateColorSpacesFB
SetColorSpaceFB:                                   ProcSetColorSpaceFB
CreateSpatialAnchorFB:                             ProcCreateSpatialAnchorFB
CreateFoveationProfileFB:                          ProcCreateFoveationProfileFB
QuerySystemTrackedKeyboardFB:                      ProcQuerySystemTrackedKeyboardFB
CreateKeyboardSpaceFB:                             ProcCreateKeyboardSpaceFB
CreateTriangleMeshFB:                              ProcCreateTriangleMeshFB
CreatePassthroughFB:                               ProcCreatePassthroughFB
CreatePassthroughLayerFB:                          ProcCreatePassthroughLayerFB
CreateGeometryInstanceFB:                          ProcCreateGeometryInstanceFB
EnumerateRenderModelPathsFB:                       ProcEnumerateRenderModelPathsFB
GetRenderModelPropertiesFB:                        ProcGetRenderModelPropertiesFB
LoadRenderModelFB:                                 ProcLoadRenderModelFB
SetEnvironmentDepthEstimationVARJO:                ProcSetEnvironmentDepthEstimationVARJO
SetMarkerTrackingVARJO:                            ProcSetMarkerTrackingVARJO
SetMarkerTrackingTimeoutVARJO:                     ProcSetMarkerTrackingTimeoutVARJO
SetMarkerTrackingPredictionVARJO:                  ProcSetMarkerTrackingPredictionVARJO
GetMarkerSizeVARJO:                                ProcGetMarkerSizeVARJO
CreateMarkerSpaceVARJO:                            ProcCreateMarkerSpaceVARJO
SetViewOffsetVARJO:                                ProcSetViewOffsetVARJO
CreateMarkerDetectorML:                            ProcCreateMarkerDetectorML
CreateMarkerSpaceML:                               ProcCreateMarkerSpaceML
EnableLocalizationEventsML:                        ProcEnableLocalizationEventsML
QueryLocalizationMapsML:                           ProcQueryLocalizationMapsML
RequestMapLocalizationML:                          ProcRequestMapLocalizationML
ImportLocalizationMapML:                           ProcImportLocalizationMapML
CreateExportedLocalizationMapML:                   ProcCreateExportedLocalizationMapML
CreateSpatialAnchorsAsyncML:                       ProcCreateSpatialAnchorsAsyncML
CreateSpatialAnchorsCompleteML:                    ProcCreateSpatialAnchorsCompleteML
CreateSpatialAnchorsStorageML:                     ProcCreateSpatialAnchorsStorageML
CreateSpatialAnchorStoreConnectionMSFT:            ProcCreateSpatialAnchorStoreConnectionMSFT
CreateSpatialAnchorFromPersistedNameMSFT:          ProcCreateSpatialAnchorFromPersistedNameMSFT
QuerySpacesFB:                                     ProcQuerySpacesFB
RetrieveSpaceQueryResultsFB:                       ProcRetrieveSpaceQueryResultsFB
SaveSpaceFB:                                       ProcSaveSpaceFB
EraseSpaceFB:                                      ProcEraseSpaceFB
ShareSpacesFB:                                     ProcShareSpacesFB
GetSpaceBoundingBox2DFB:                           ProcGetSpaceBoundingBox2DFB
GetSpaceBoundingBox3DFB:                           ProcGetSpaceBoundingBox3DFB
GetSpaceSemanticLabelsFB:                          ProcGetSpaceSemanticLabelsFB
GetSpaceBoundary2DFB:                              ProcGetSpaceBoundary2DFB
GetSpaceRoomLayoutFB:                              ProcGetSpaceRoomLayoutFB
SetDigitalLensControlALMALENCE:                    ProcSetDigitalLensControlALMALENCE
RequestSceneCaptureFB:                             ProcRequestSceneCaptureFB
GetSpaceContainerFB:                               ProcGetSpaceContainerFB
GetFoveationEyeTrackedStateMETA:                   ProcGetFoveationEyeTrackedStateMETA
CreateFaceTrackerFB:                               ProcCreateFaceTrackerFB
CreateEyeTrackerFB:                                ProcCreateEyeTrackerFB
GetDeviceSampleRateFB:                             ProcGetDeviceSampleRateFB
GetPassthroughPreferencesMETA:                     ProcGetPassthroughPreferencesMETA
CreateVirtualKeyboardMETA:                         ProcCreateVirtualKeyboardMETA
CreateVirtualKeyboardSpaceMETA:                    ProcCreateVirtualKeyboardSpaceMETA
EnumerateExternalCamerasOCULUS:                    ProcEnumerateExternalCamerasOCULUS
SetPerformanceMetricsStateMETA:                    ProcSetPerformanceMetricsStateMETA
GetPerformanceMetricsStateMETA:                    ProcGetPerformanceMetricsStateMETA
QueryPerformanceMetricsCounterMETA:                ProcQueryPerformanceMetricsCounterMETA
SaveSpaceListFB:                                   ProcSaveSpaceListFB
CreateSpaceUserFB:                                 ProcCreateSpaceUserFB
GetRecommendedLayerResolutionMETA:                 ProcGetRecommendedLayerResolutionMETA
SaveSpacesMETA:                                    ProcSaveSpacesMETA
EraseSpacesMETA:                                   ProcEraseSpacesMETA
CreateFaceTracker2FB:                              ProcCreateFaceTracker2FB
ShareSpacesMETA:                                   ProcShareSpacesMETA
CreateEnvironmentDepthProviderMETA:                ProcCreateEnvironmentDepthProviderMETA
CreateRenderModelEXT:                              ProcCreateRenderModelEXT
CreateRenderModelSpaceEXT:                         ProcCreateRenderModelSpaceEXT
CreateRenderModelAssetEXT:                         ProcCreateRenderModelAssetEXT
EnumerateInteractionRenderModelIdsEXT:             ProcEnumerateInteractionRenderModelIdsEXT
SetTrackingOptimizationSettingsHintQCOM:           ProcSetTrackingOptimizationSettingsHintQCOM
CreatePassthroughHTC:                              ProcCreatePassthroughHTC
ApplyFoveationHTC:                                 ProcApplyFoveationHTC
CreateSpatialAnchorHTC:                            ProcCreateSpatialAnchorHTC
CreateBodyTrackerHTC:                              ProcCreateBodyTrackerHTC
CreateBodyTrackerBD:                               ProcCreateBodyTrackerBD
CreateSenseDataProviderBD:                         ProcCreateSenseDataProviderBD
StartSenseDataProviderCompleteBD:                  ProcStartSenseDataProviderCompleteBD
CreateAnchorSpaceBD:                               ProcCreateAnchorSpaceBD
CreatePlaneDetectorEXT:                            ProcCreatePlaneDetectorEXT
CreateTrackableTrackerANDROID:                     ProcCreateTrackableTrackerANDROID
CreateAnchorSpaceANDROID:                          ProcCreateAnchorSpaceANDROID
CreateDeviceAnchorPersistenceANDROID:              ProcCreateDeviceAnchorPersistenceANDROID
GetPassthroughCameraStateANDROID:                  ProcGetPassthroughCameraStateANDROID
RaycastANDROID:                                    ProcRaycastANDROID
CreateWorldMeshDetectorML:                         ProcCreateWorldMeshDetectorML
CreateFacialExpressionClientML:                    ProcCreateFacialExpressionClientML
ResumeSimultaneousHandsAndControllersTrackingMETA: ProcResumeSimultaneousHandsAndControllersTrackingMETA
PauseSimultaneousHandsAndControllersTrackingMETA:  ProcPauseSimultaneousHandsAndControllersTrackingMETA
StartColocationDiscoveryMETA:                      ProcStartColocationDiscoveryMETA
StopColocationDiscoveryMETA:                       ProcStopColocationDiscoveryMETA
StartColocationAdvertisementMETA:                  ProcStartColocationAdvertisementMETA
StopColocationAdvertisementMETA:                   ProcStopColocationAdvertisementMETA
CreateSpatialContextAsyncEXT:                      ProcCreateSpatialContextAsyncEXT
CreateSpatialContextCompleteEXT:                   ProcCreateSpatialContextCompleteEXT
CreateSpatialPersistenceContextAsyncEXT:           ProcCreateSpatialPersistenceContextAsyncEXT
CreateSpatialPersistenceContextCompleteEXT:        ProcCreateSpatialPersistenceContextCompleteEXT
SetAndroidApplicationThreadKHR:                    ProcSetAndroidApplicationThreadKHR
CreateSwapchainAndroidSurfaceKHR:                  ProcCreateSwapchainAndroidSurfaceKHR

// Other procedures

LocateSpace:                                  ProcLocateSpace
DestroySpace:                                 ProcDestroySpace
DestroySwapchain:                             ProcDestroySwapchain
EnumerateSwapchainImages:                     ProcEnumerateSwapchainImages
AcquireSwapchainImage:                        ProcAcquireSwapchainImage
WaitSwapchainImage:                           ProcWaitSwapchainImage
ReleaseSwapchainImage:                        ProcReleaseSwapchainImage
DestroyActionSet:                             ProcDestroyActionSet
CreateAction:                                 ProcCreateAction
DestroyAction:                                ProcDestroyAction
InitializeLoaderKHR:                          ProcInitializeLoaderKHR
DebugUtilsMessengerCallbackEXT:               ProcDebugUtilsMessengerCallbackEXT
DestroyDebugUtilsMessengerEXT:                ProcDestroyDebugUtilsMessengerEXT
DestroySpatialAnchorMSFT:                     ProcDestroySpatialAnchorMSFT
DestroySpatialGraphNodeBindingMSFT:           ProcDestroySpatialGraphNodeBindingMSFT
GetSpatialGraphNodeBindingPropertiesMSFT:     ProcGetSpatialGraphNodeBindingPropertiesMSFT
DestroyHandTrackerEXT:                        ProcDestroyHandTrackerEXT
LocateHandJointsEXT:                          ProcLocateHandJointsEXT
CreateHandMeshSpaceMSFT:                      ProcCreateHandMeshSpaceMSFT
UpdateHandMeshMSFT:                           ProcUpdateHandMeshMSFT
UpdateSwapchainFB:                            ProcUpdateSwapchainFB
GetSwapchainStateFB:                          ProcGetSwapchainStateFB
DestroyBodyTrackerFB:                         ProcDestroyBodyTrackerFB
LocateBodyJointsFB:                           ProcLocateBodyJointsFB
GetBodySkeletonFB:                            ProcGetBodySkeletonFB
DestroySceneObserverMSFT:                     ProcDestroySceneObserverMSFT
CreateSceneMSFT:                              ProcCreateSceneMSFT
DestroySceneMSFT:                             ProcDestroySceneMSFT
ComputeNewSceneMSFT:                          ProcComputeNewSceneMSFT
GetSceneComputeStateMSFT:                     ProcGetSceneComputeStateMSFT
GetSceneComponentsMSFT:                       ProcGetSceneComponentsMSFT
LocateSceneComponentsMSFT:                    ProcLocateSceneComponentsMSFT
GetSceneMeshBuffersMSFT:                      ProcGetSceneMeshBuffersMSFT
DeserializeSceneMSFT:                         ProcDeserializeSceneMSFT
GetSerializedSceneFragmentDataMSFT:           ProcGetSerializedSceneFragmentDataMSFT
DestroyFacialTrackerHTC:                      ProcDestroyFacialTrackerHTC
GetFacialExpressionsHTC:                      ProcGetFacialExpressionsHTC
GetHandMeshFB:                                ProcGetHandMeshFB
GetSpaceUuidFB:                               ProcGetSpaceUuidFB
EnumerateSpaceSupportedComponentsFB:          ProcEnumerateSpaceSupportedComponentsFB
SetSpaceComponentStatusFB:                    ProcSetSpaceComponentStatusFB
GetSpaceComponentStatusFB:                    ProcGetSpaceComponentStatusFB
DestroyFoveationProfileFB:                    ProcDestroyFoveationProfileFB
DestroyTriangleMeshFB:                        ProcDestroyTriangleMeshFB
TriangleMeshGetVertexBufferFB:                ProcTriangleMeshGetVertexBufferFB
TriangleMeshGetIndexBufferFB:                 ProcTriangleMeshGetIndexBufferFB
TriangleMeshBeginUpdateFB:                    ProcTriangleMeshBeginUpdateFB
TriangleMeshEndUpdateFB:                      ProcTriangleMeshEndUpdateFB
TriangleMeshBeginVertexBufferUpdateFB:        ProcTriangleMeshBeginVertexBufferUpdateFB
TriangleMeshEndVertexBufferUpdateFB:          ProcTriangleMeshEndVertexBufferUpdateFB
DestroyPassthroughFB:                         ProcDestroyPassthroughFB
PassthroughStartFB:                           ProcPassthroughStartFB
PassthroughPauseFB:                           ProcPassthroughPauseFB
DestroyPassthroughLayerFB:                    ProcDestroyPassthroughLayerFB
PassthroughLayerPauseFB:                      ProcPassthroughLayerPauseFB
PassthroughLayerResumeFB:                     ProcPassthroughLayerResumeFB
PassthroughLayerSetStyleFB:                   ProcPassthroughLayerSetStyleFB
DestroyGeometryInstanceFB:                    ProcDestroyGeometryInstanceFB
GeometryInstanceSetTransformFB:               ProcGeometryInstanceSetTransformFB
DestroyMarkerDetectorML:                      ProcDestroyMarkerDetectorML
SnapshotMarkerDetectorML:                     ProcSnapshotMarkerDetectorML
GetMarkerDetectorStateML:                     ProcGetMarkerDetectorStateML
GetMarkersML:                                 ProcGetMarkersML
GetMarkerReprojectionErrorML:                 ProcGetMarkerReprojectionErrorML
GetMarkerLengthML:                            ProcGetMarkerLengthML
GetMarkerNumberML:                            ProcGetMarkerNumberML
GetMarkerStringML:                            ProcGetMarkerStringML
DestroyExportedLocalizationMapML:             ProcDestroyExportedLocalizationMapML
GetExportedLocalizationMapDataML:             ProcGetExportedLocalizationMapDataML
GetSpatialAnchorStateML:                      ProcGetSpatialAnchorStateML
DestroySpatialAnchorsStorageML:               ProcDestroySpatialAnchorsStorageML
QuerySpatialAnchorsAsyncML:                   ProcQuerySpatialAnchorsAsyncML
QuerySpatialAnchorsCompleteML:                ProcQuerySpatialAnchorsCompleteML
PublishSpatialAnchorsAsyncML:                 ProcPublishSpatialAnchorsAsyncML
PublishSpatialAnchorsCompleteML:              ProcPublishSpatialAnchorsCompleteML
DeleteSpatialAnchorsAsyncML:                  ProcDeleteSpatialAnchorsAsyncML
DeleteSpatialAnchorsCompleteML:               ProcDeleteSpatialAnchorsCompleteML
UpdateSpatialAnchorsExpirationAsyncML:        ProcUpdateSpatialAnchorsExpirationAsyncML
UpdateSpatialAnchorsExpirationCompleteML:     ProcUpdateSpatialAnchorsExpirationCompleteML
DestroySpatialAnchorStoreConnectionMSFT:      ProcDestroySpatialAnchorStoreConnectionMSFT
PersistSpatialAnchorMSFT:                     ProcPersistSpatialAnchorMSFT
EnumeratePersistedSpatialAnchorNamesMSFT:     ProcEnumeratePersistedSpatialAnchorNamesMSFT
UnpersistSpatialAnchorMSFT:                   ProcUnpersistSpatialAnchorMSFT
ClearSpatialAnchorStoreMSFT:                  ProcClearSpatialAnchorStoreMSFT
GetSceneMarkerRawDataMSFT:                    ProcGetSceneMarkerRawDataMSFT
GetSceneMarkerDecodedStringMSFT:              ProcGetSceneMarkerDecodedStringMSFT
DestroyFaceTrackerFB:                         ProcDestroyFaceTrackerFB
GetFaceExpressionWeightsFB:                   ProcGetFaceExpressionWeightsFB
DestroyEyeTrackerFB:                          ProcDestroyEyeTrackerFB
GetEyeGazesFB:                                ProcGetEyeGazesFB
PassthroughLayerSetKeyboardHandsIntensityFB:  ProcPassthroughLayerSetKeyboardHandsIntensityFB
DestroyVirtualKeyboardMETA:                   ProcDestroyVirtualKeyboardMETA
SuggestVirtualKeyboardLocationMETA:           ProcSuggestVirtualKeyboardLocationMETA
GetVirtualKeyboardScaleMETA:                  ProcGetVirtualKeyboardScaleMETA
SetVirtualKeyboardModelVisibilityMETA:        ProcSetVirtualKeyboardModelVisibilityMETA
GetVirtualKeyboardModelAnimationStatesMETA:   ProcGetVirtualKeyboardModelAnimationStatesMETA
GetVirtualKeyboardDirtyTexturesMETA:          ProcGetVirtualKeyboardDirtyTexturesMETA
GetVirtualKeyboardTextureDataMETA:            ProcGetVirtualKeyboardTextureDataMETA
SendVirtualKeyboardInputMETA:                 ProcSendVirtualKeyboardInputMETA
ChangeVirtualKeyboardTextContextMETA:         ProcChangeVirtualKeyboardTextContextMETA
GetSpaceUserIdFB:                             ProcGetSpaceUserIdFB
DestroySpaceUserFB:                           ProcDestroySpaceUserFB
CreatePassthroughColorLutMETA:                ProcCreatePassthroughColorLutMETA
DestroyPassthroughColorLutMETA:               ProcDestroyPassthroughColorLutMETA
UpdatePassthroughColorLutMETA:                ProcUpdatePassthroughColorLutMETA
GetSpaceTriangleMeshMETA:                     ProcGetSpaceTriangleMeshMETA
SuggestBodyTrackingCalibrationOverrideMETA:   ProcSuggestBodyTrackingCalibrationOverrideMETA
ResetBodyTrackingCalibrationMETA:             ProcResetBodyTrackingCalibrationMETA
DestroyFaceTracker2FB:                        ProcDestroyFaceTracker2FB
GetFaceExpressionWeights2FB:                  ProcGetFaceExpressionWeights2FB
DestroyEnvironmentDepthProviderMETA:          ProcDestroyEnvironmentDepthProviderMETA
StartEnvironmentDepthProviderMETA:            ProcStartEnvironmentDepthProviderMETA
StopEnvironmentDepthProviderMETA:             ProcStopEnvironmentDepthProviderMETA
CreateEnvironmentDepthSwapchainMETA:          ProcCreateEnvironmentDepthSwapchainMETA
DestroyEnvironmentDepthSwapchainMETA:         ProcDestroyEnvironmentDepthSwapchainMETA
EnumerateEnvironmentDepthSwapchainImagesMETA: ProcEnumerateEnvironmentDepthSwapchainImagesMETA
GetEnvironmentDepthSwapchainStateMETA:        ProcGetEnvironmentDepthSwapchainStateMETA
AcquireEnvironmentDepthImageMETA:             ProcAcquireEnvironmentDepthImageMETA
SetEnvironmentDepthHandRemovalMETA:           ProcSetEnvironmentDepthHandRemovalMETA
DestroyRenderModelEXT:                        ProcDestroyRenderModelEXT
GetRenderModelPropertiesEXT:                  ProcGetRenderModelPropertiesEXT
DestroyRenderModelAssetEXT:                   ProcDestroyRenderModelAssetEXT
GetRenderModelAssetDataEXT:                   ProcGetRenderModelAssetDataEXT
GetRenderModelAssetPropertiesEXT:             ProcGetRenderModelAssetPropertiesEXT
GetRenderModelStateEXT:                       ProcGetRenderModelStateEXT
EnumerateRenderModelSubactionPathsEXT:        ProcEnumerateRenderModelSubactionPathsEXT
GetRenderModelPoseTopLevelUserPathEXT:        ProcGetRenderModelPoseTopLevelUserPathEXT
DestroyPassthroughHTC:                        ProcDestroyPassthroughHTC
GetSpatialAnchorNameHTC:                      ProcGetSpatialAnchorNameHTC
DestroyBodyTrackerHTC:                        ProcDestroyBodyTrackerHTC
LocateBodyJointsHTC:                          ProcLocateBodyJointsHTC
GetBodySkeletonHTC:                           ProcGetBodySkeletonHTC
ApplyForceFeedbackCurlMNDX:                   ProcApplyForceFeedbackCurlMNDX
DestroyBodyTrackerBD:                         ProcDestroyBodyTrackerBD
LocateBodyJointsBD:                           ProcLocateBodyJointsBD
EnumerateSpatialEntityComponentTypesBD:       ProcEnumerateSpatialEntityComponentTypesBD
GetSpatialEntityUuidBD:                       ProcGetSpatialEntityUuidBD
GetSpatialEntityComponentDataBD:              ProcGetSpatialEntityComponentDataBD
StartSenseDataProviderAsyncBD:                ProcStartSenseDataProviderAsyncBD
GetSenseDataProviderStateBD:                  ProcGetSenseDataProviderStateBD
QuerySenseDataAsyncBD:                        ProcQuerySenseDataAsyncBD
QuerySenseDataCompleteBD:                     ProcQuerySenseDataCompleteBD
DestroySenseDataSnapshotBD:                   ProcDestroySenseDataSnapshotBD
GetQueriedSenseDataBD:                        ProcGetQueriedSenseDataBD
StopSenseDataProviderBD:                      ProcStopSenseDataProviderBD
DestroySenseDataProviderBD:                   ProcDestroySenseDataProviderBD
CreateSpatialEntityAnchorBD:                  ProcCreateSpatialEntityAnchorBD
DestroyAnchorBD:                              ProcDestroyAnchorBD
GetAnchorUuidBD:                              ProcGetAnchorUuidBD
CreateSpatialAnchorAsyncBD:                   ProcCreateSpatialAnchorAsyncBD
CreateSpatialAnchorCompleteBD:                ProcCreateSpatialAnchorCompleteBD
PersistSpatialAnchorAsyncBD:                  ProcPersistSpatialAnchorAsyncBD
PersistSpatialAnchorCompleteBD:               ProcPersistSpatialAnchorCompleteBD
UnpersistSpatialAnchorAsyncBD:                ProcUnpersistSpatialAnchorAsyncBD
UnpersistSpatialAnchorCompleteBD:             ProcUnpersistSpatialAnchorCompleteBD
ShareSpatialAnchorAsyncBD:                    ProcShareSpatialAnchorAsyncBD
ShareSpatialAnchorCompleteBD:                 ProcShareSpatialAnchorCompleteBD
DownloadSharedSpatialAnchorAsyncBD:           ProcDownloadSharedSpatialAnchorAsyncBD
DownloadSharedSpatialAnchorCompleteBD:        ProcDownloadSharedSpatialAnchorCompleteBD
CaptureSceneAsyncBD:                          ProcCaptureSceneAsyncBD
CaptureSceneCompleteBD:                       ProcCaptureSceneCompleteBD
DestroyPlaneDetectorEXT:                      ProcDestroyPlaneDetectorEXT
BeginPlaneDetectionEXT:                       ProcBeginPlaneDetectionEXT
GetPlaneDetectionStateEXT:                    ProcGetPlaneDetectionStateEXT
GetPlaneDetectionsEXT:                        ProcGetPlaneDetectionsEXT
GetPlanePolygonBufferEXT:                     ProcGetPlanePolygonBufferEXT
DestroyTrackableTrackerANDROID:               ProcDestroyTrackableTrackerANDROID
GetAllTrackablesANDROID:                      ProcGetAllTrackablesANDROID
GetTrackablePlaneANDROID:                     ProcGetTrackablePlaneANDROID
DestroyDeviceAnchorPersistenceANDROID:        ProcDestroyDeviceAnchorPersistenceANDROID
PersistAnchorANDROID:                         ProcPersistAnchorANDROID
GetAnchorPersistStateANDROID:                 ProcGetAnchorPersistStateANDROID
CreatePersistedAnchorSpaceANDROID:            ProcCreatePersistedAnchorSpaceANDROID
EnumeratePersistedAnchorsANDROID:             ProcEnumeratePersistedAnchorsANDROID
UnpersistAnchorANDROID:                       ProcUnpersistAnchorANDROID
GetTrackableObjectANDROID:                    ProcGetTrackableObjectANDROID
DestroyWorldMeshDetectorML:                   ProcDestroyWorldMeshDetectorML
RequestWorldMeshStateAsyncML:                 ProcRequestWorldMeshStateAsyncML
RequestWorldMeshStateCompleteML:              ProcRequestWorldMeshStateCompleteML
GetWorldMeshBufferRecommendSizeML:            ProcGetWorldMeshBufferRecommendSizeML
AllocateWorldMeshBufferML:                    ProcAllocateWorldMeshBufferML
FreeWorldMeshBufferML:                        ProcFreeWorldMeshBufferML
RequestWorldMeshAsyncML:                      ProcRequestWorldMeshAsyncML
RequestWorldMeshCompleteML:                   ProcRequestWorldMeshCompleteML
DestroyFacialExpressionClientML:              ProcDestroyFacialExpressionClientML
GetFacialExpressionBlendShapePropertiesML:    ProcGetFacialExpressionBlendShapePropertiesML
GetTrackableMarkerANDROID:                    ProcGetTrackableMarkerANDROID
DestroySpatialContextEXT:                     ProcDestroySpatialContextEXT
CreateSpatialDiscoverySnapshotAsyncEXT:       ProcCreateSpatialDiscoverySnapshotAsyncEXT
CreateSpatialDiscoverySnapshotCompleteEXT:    ProcCreateSpatialDiscoverySnapshotCompleteEXT
QuerySpatialComponentDataEXT:                 ProcQuerySpatialComponentDataEXT
DestroySpatialSnapshotEXT:                    ProcDestroySpatialSnapshotEXT
CreateSpatialEntityFromIdEXT:                 ProcCreateSpatialEntityFromIdEXT
DestroySpatialEntityEXT:                      ProcDestroySpatialEntityEXT
CreateSpatialUpdateSnapshotEXT:               ProcCreateSpatialUpdateSnapshotEXT
GetSpatialBufferStringEXT:                    ProcGetSpatialBufferStringEXT
GetSpatialBufferUint8EXT:                     ProcGetSpatialBufferUint8EXT
GetSpatialBufferUint16EXT:                    ProcGetSpatialBufferUint16EXT
GetSpatialBufferUint32EXT:                    ProcGetSpatialBufferUint32EXT
GetSpatialBufferFloatEXT:                     ProcGetSpatialBufferFloatEXT
GetSpatialBufferVector2fEXT:                  ProcGetSpatialBufferVector2fEXT
GetSpatialBufferVector3fEXT:                  ProcGetSpatialBufferVector3fEXT
CreateSpatialAnchorEXT:                       ProcCreateSpatialAnchorEXT
DestroySpatialPersistenceContextEXT:          ProcDestroySpatialPersistenceContextEXT
PersistSpatialEntityAsyncEXT:                 ProcPersistSpatialEntityAsyncEXT
PersistSpatialEntityCompleteEXT:              ProcPersistSpatialEntityCompleteEXT
UnpersistSpatialEntityAsyncEXT:               ProcUnpersistSpatialEntityAsyncEXT
UnpersistSpatialEntityCompleteEXT:            ProcUnpersistSpatialEntityCompleteEXT

load_proc_addresses_global :: proc(get_instance_proc_addr: ProcGetInstanceProcAddr) {
    GetInstanceProcAddr = get_instance_proc_addr

    _ = GetInstanceProcAddr(nil, "xrEnumerateApiLayerProperties", auto_cast &EnumerateApiLayerProperties)
    _ = GetInstanceProcAddr(nil, "xrEnumerateInstanceExtensionProperties", auto_cast &EnumerateInstanceExtensionProperties)
    _ = GetInstanceProcAddr(nil, "xrCreateInstance", auto_cast &CreateInstance)
}

load_proc_addresses_instance :: proc(instance: Instance) {
    _ = GetInstanceProcAddr(instance, "xrGetInstanceProcAddr", auto_cast &GetInstanceProcAddr)
    _ = GetInstanceProcAddr(instance, "xrDestroyInstance", auto_cast &DestroyInstance)
    _ = GetInstanceProcAddr(instance, "xrGetInstanceProperties", auto_cast &GetInstanceProperties)
    _ = GetInstanceProcAddr(instance, "xrPollEvent", auto_cast &PollEvent)
    _ = GetInstanceProcAddr(instance, "xrResultToString", auto_cast &ResultToString)
    _ = GetInstanceProcAddr(instance, "xrStructureTypeToString", auto_cast &StructureTypeToString)
    _ = GetInstanceProcAddr(instance, "xrGetSystem", auto_cast &GetSystem)
    _ = GetInstanceProcAddr(instance, "xrGetSystemProperties", auto_cast &GetSystemProperties)
    _ = GetInstanceProcAddr(instance, "xrEnumerateEnvironmentBlendModes", auto_cast &EnumerateEnvironmentBlendModes)
    _ = GetInstanceProcAddr(instance, "xrCreateSession", auto_cast &CreateSession)
    _ = GetInstanceProcAddr(instance, "xrEnumerateViewConfigurations", auto_cast &EnumerateViewConfigurations)
    _ = GetInstanceProcAddr(instance, "xrGetViewConfigurationProperties", auto_cast &GetViewConfigurationProperties)
    _ = GetInstanceProcAddr(instance, "xrEnumerateViewConfigurationViews", auto_cast &EnumerateViewConfigurationViews)
    _ = GetInstanceProcAddr(instance, "xrStringToPath", auto_cast &StringToPath)
    _ = GetInstanceProcAddr(instance, "xrPathToString", auto_cast &PathToString)
    _ = GetInstanceProcAddr(instance, "xrCreateActionSet", auto_cast &CreateActionSet)
    _ = GetInstanceProcAddr(instance, "xrSuggestInteractionProfileBindings", auto_cast &SuggestInteractionProfileBindings)
    _ = GetInstanceProcAddr(instance, "xrStructureTypeToString2KHR", auto_cast &StructureTypeToString2KHR)
    _ = GetInstanceProcAddr(instance, "xrSetDebugUtilsObjectNameEXT", auto_cast &SetDebugUtilsObjectNameEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateDebugUtilsMessengerEXT", auto_cast &CreateDebugUtilsMessengerEXT)
    _ = GetInstanceProcAddr(instance, "xrSubmitDebugUtilsMessageEXT", auto_cast &SubmitDebugUtilsMessageEXT)
    _ = GetInstanceProcAddr(instance, "xrEnumerateReprojectionModesMSFT", auto_cast &EnumerateReprojectionModesMSFT)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSceneComputeFeaturesMSFT", auto_cast &EnumerateSceneComputeFeaturesMSFT)
    _ = GetInstanceProcAddr(instance, "xrEnumerateViveTrackerPathsHTCX", auto_cast &EnumerateViveTrackerPathsHTCX)
    _ = GetInstanceProcAddr(instance, "xrEnumeratePerformanceMetricsCounterPathsMETA", auto_cast &EnumeratePerformanceMetricsCounterPathsMETA)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSupportedTrackableTypesANDROID", auto_cast &EnumerateSupportedTrackableTypesANDROID)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSupportedAnchorTrackableTypesANDROID", auto_cast &EnumerateSupportedAnchorTrackableTypesANDROID)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSupportedPersistenceAnchorTypesANDROID", auto_cast &EnumerateSupportedPersistenceAnchorTypesANDROID)
    _ = GetInstanceProcAddr(instance, "xrEnumerateRaycastSupportedTrackableTypesANDROID", auto_cast &EnumerateRaycastSupportedTrackableTypesANDROID)
    _ = GetInstanceProcAddr(instance, "xrPollFutureEXT", auto_cast &PollFutureEXT)
    _ = GetInstanceProcAddr(instance, "xrCancelFutureEXT", auto_cast &CancelFutureEXT)
    _ = GetInstanceProcAddr(instance, "xrEnableUserCalibrationEventsML", auto_cast &EnableUserCalibrationEventsML)
    _ = GetInstanceProcAddr(instance, "xrSetSystemNotificationsML", auto_cast &SetSystemNotificationsML)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSpatialCapabilitiesEXT", auto_cast &EnumerateSpatialCapabilitiesEXT)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSpatialCapabilityComponentTypesEXT", auto_cast &EnumerateSpatialCapabilityComponentTypesEXT)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSpatialCapabilityFeaturesEXT", auto_cast &EnumerateSpatialCapabilityFeaturesEXT)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSpatialPersistenceScopesEXT", auto_cast &EnumerateSpatialPersistenceScopesEXT)
    _ = GetInstanceProcAddr(instance, "xrDestroySession", auto_cast &DestroySession)
    _ = GetInstanceProcAddr(instance, "xrEnumerateReferenceSpaces", auto_cast &EnumerateReferenceSpaces)
    _ = GetInstanceProcAddr(instance, "xrCreateReferenceSpace", auto_cast &CreateReferenceSpace)
    _ = GetInstanceProcAddr(instance, "xrGetReferenceSpaceBoundsRect", auto_cast &GetReferenceSpaceBoundsRect)
    _ = GetInstanceProcAddr(instance, "xrCreateActionSpace", auto_cast &CreateActionSpace)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSwapchainFormats", auto_cast &EnumerateSwapchainFormats)
    _ = GetInstanceProcAddr(instance, "xrCreateSwapchain", auto_cast &CreateSwapchain)
    _ = GetInstanceProcAddr(instance, "xrBeginSession", auto_cast &BeginSession)
    _ = GetInstanceProcAddr(instance, "xrEndSession", auto_cast &EndSession)
    _ = GetInstanceProcAddr(instance, "xrRequestExitSession", auto_cast &RequestExitSession)
    _ = GetInstanceProcAddr(instance, "xrWaitFrame", auto_cast &WaitFrame)
    _ = GetInstanceProcAddr(instance, "xrBeginFrame", auto_cast &BeginFrame)
    _ = GetInstanceProcAddr(instance, "xrEndFrame", auto_cast &EndFrame)
    _ = GetInstanceProcAddr(instance, "xrLocateViews", auto_cast &LocateViews)
    _ = GetInstanceProcAddr(instance, "xrAttachSessionActionSets", auto_cast &AttachSessionActionSets)
    _ = GetInstanceProcAddr(instance, "xrGetCurrentInteractionProfile", auto_cast &GetCurrentInteractionProfile)
    _ = GetInstanceProcAddr(instance, "xrGetActionStateBoolean", auto_cast &GetActionStateBoolean)
    _ = GetInstanceProcAddr(instance, "xrGetActionStateFloat", auto_cast &GetActionStateFloat)
    _ = GetInstanceProcAddr(instance, "xrGetActionStateVector2f", auto_cast &GetActionStateVector2f)
    _ = GetInstanceProcAddr(instance, "xrGetActionStatePose", auto_cast &GetActionStatePose)
    _ = GetInstanceProcAddr(instance, "xrSyncActions", auto_cast &SyncActions)
    _ = GetInstanceProcAddr(instance, "xrEnumerateBoundSourcesForAction", auto_cast &EnumerateBoundSourcesForAction)
    _ = GetInstanceProcAddr(instance, "xrGetInputSourceLocalizedName", auto_cast &GetInputSourceLocalizedName)
    _ = GetInstanceProcAddr(instance, "xrApplyHapticFeedback", auto_cast &ApplyHapticFeedback)
    _ = GetInstanceProcAddr(instance, "xrStopHapticFeedback", auto_cast &StopHapticFeedback)
    _ = GetInstanceProcAddr(instance, "xrLocateSpaces", auto_cast &LocateSpaces)
    _ = GetInstanceProcAddr(instance, "xrGetVisibilityMaskKHR", auto_cast &GetVisibilityMaskKHR)
    _ = GetInstanceProcAddr(instance, "xrLocateSpacesKHR", auto_cast &LocateSpacesKHR)
    _ = GetInstanceProcAddr(instance, "xrPerfSettingsSetPerformanceLevelEXT", auto_cast &PerfSettingsSetPerformanceLevelEXT)
    _ = GetInstanceProcAddr(instance, "xrThermalGetTemperatureTrendEXT", auto_cast &ThermalGetTemperatureTrendEXT)
    _ = GetInstanceProcAddr(instance, "xrSessionBeginDebugUtilsLabelRegionEXT", auto_cast &SessionBeginDebugUtilsLabelRegionEXT)
    _ = GetInstanceProcAddr(instance, "xrSessionEndDebugUtilsLabelRegionEXT", auto_cast &SessionEndDebugUtilsLabelRegionEXT)
    _ = GetInstanceProcAddr(instance, "xrSessionInsertDebugUtilsLabelEXT", auto_cast &SessionInsertDebugUtilsLabelEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorMSFT", auto_cast &CreateSpatialAnchorMSFT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorSpaceMSFT", auto_cast &CreateSpatialAnchorSpaceMSFT)
    _ = GetInstanceProcAddr(instance, "xrSetInputDeviceActiveEXT", auto_cast &SetInputDeviceActiveEXT)
    _ = GetInstanceProcAddr(instance, "xrSetInputDeviceStateBoolEXT", auto_cast &SetInputDeviceStateBoolEXT)
    _ = GetInstanceProcAddr(instance, "xrSetInputDeviceStateFloatEXT", auto_cast &SetInputDeviceStateFloatEXT)
    _ = GetInstanceProcAddr(instance, "xrSetInputDeviceStateVector2fEXT", auto_cast &SetInputDeviceStateVector2fEXT)
    _ = GetInstanceProcAddr(instance, "xrSetInputDeviceLocationEXT", auto_cast &SetInputDeviceLocationEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialGraphNodeSpaceMSFT", auto_cast &CreateSpatialGraphNodeSpaceMSFT)
    _ = GetInstanceProcAddr(instance, "xrTryCreateSpatialGraphStaticNodeBindingMSFT", auto_cast &TryCreateSpatialGraphStaticNodeBindingMSFT)
    _ = GetInstanceProcAddr(instance, "xrCreateHandTrackerEXT", auto_cast &CreateHandTrackerEXT)
    _ = GetInstanceProcAddr(instance, "xrGetControllerModelKeyMSFT", auto_cast &GetControllerModelKeyMSFT)
    _ = GetInstanceProcAddr(instance, "xrLoadControllerModelMSFT", auto_cast &LoadControllerModelMSFT)
    _ = GetInstanceProcAddr(instance, "xrGetControllerModelPropertiesMSFT", auto_cast &GetControllerModelPropertiesMSFT)
    _ = GetInstanceProcAddr(instance, "xrGetControllerModelStateMSFT", auto_cast &GetControllerModelStateMSFT)
    _ = GetInstanceProcAddr(instance, "xrCreateBodyTrackerFB", auto_cast &CreateBodyTrackerFB)
    _ = GetInstanceProcAddr(instance, "xrCreateSceneObserverMSFT", auto_cast &CreateSceneObserverMSFT)
    _ = GetInstanceProcAddr(instance, "xrEnumerateDisplayRefreshRatesFB", auto_cast &EnumerateDisplayRefreshRatesFB)
    _ = GetInstanceProcAddr(instance, "xrGetDisplayRefreshRateFB", auto_cast &GetDisplayRefreshRateFB)
    _ = GetInstanceProcAddr(instance, "xrRequestDisplayRefreshRateFB", auto_cast &RequestDisplayRefreshRateFB)
    _ = GetInstanceProcAddr(instance, "xrCreateFacialTrackerHTC", auto_cast &CreateFacialTrackerHTC)
    _ = GetInstanceProcAddr(instance, "xrEnumerateColorSpacesFB", auto_cast &EnumerateColorSpacesFB)
    _ = GetInstanceProcAddr(instance, "xrSetColorSpaceFB", auto_cast &SetColorSpaceFB)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorFB", auto_cast &CreateSpatialAnchorFB)
    _ = GetInstanceProcAddr(instance, "xrCreateFoveationProfileFB", auto_cast &CreateFoveationProfileFB)
    _ = GetInstanceProcAddr(instance, "xrQuerySystemTrackedKeyboardFB", auto_cast &QuerySystemTrackedKeyboardFB)
    _ = GetInstanceProcAddr(instance, "xrCreateKeyboardSpaceFB", auto_cast &CreateKeyboardSpaceFB)
    _ = GetInstanceProcAddr(instance, "xrCreateTriangleMeshFB", auto_cast &CreateTriangleMeshFB)
    _ = GetInstanceProcAddr(instance, "xrCreatePassthroughFB", auto_cast &CreatePassthroughFB)
    _ = GetInstanceProcAddr(instance, "xrCreatePassthroughLayerFB", auto_cast &CreatePassthroughLayerFB)
    _ = GetInstanceProcAddr(instance, "xrCreateGeometryInstanceFB", auto_cast &CreateGeometryInstanceFB)
    _ = GetInstanceProcAddr(instance, "xrEnumerateRenderModelPathsFB", auto_cast &EnumerateRenderModelPathsFB)
    _ = GetInstanceProcAddr(instance, "xrGetRenderModelPropertiesFB", auto_cast &GetRenderModelPropertiesFB)
    _ = GetInstanceProcAddr(instance, "xrLoadRenderModelFB", auto_cast &LoadRenderModelFB)
    _ = GetInstanceProcAddr(instance, "xrSetEnvironmentDepthEstimationVARJO", auto_cast &SetEnvironmentDepthEstimationVARJO)
    _ = GetInstanceProcAddr(instance, "xrSetMarkerTrackingVARJO", auto_cast &SetMarkerTrackingVARJO)
    _ = GetInstanceProcAddr(instance, "xrSetMarkerTrackingTimeoutVARJO", auto_cast &SetMarkerTrackingTimeoutVARJO)
    _ = GetInstanceProcAddr(instance, "xrSetMarkerTrackingPredictionVARJO", auto_cast &SetMarkerTrackingPredictionVARJO)
    _ = GetInstanceProcAddr(instance, "xrGetMarkerSizeVARJO", auto_cast &GetMarkerSizeVARJO)
    _ = GetInstanceProcAddr(instance, "xrCreateMarkerSpaceVARJO", auto_cast &CreateMarkerSpaceVARJO)
    _ = GetInstanceProcAddr(instance, "xrSetViewOffsetVARJO", auto_cast &SetViewOffsetVARJO)
    _ = GetInstanceProcAddr(instance, "xrCreateMarkerDetectorML", auto_cast &CreateMarkerDetectorML)
    _ = GetInstanceProcAddr(instance, "xrCreateMarkerSpaceML", auto_cast &CreateMarkerSpaceML)
    _ = GetInstanceProcAddr(instance, "xrEnableLocalizationEventsML", auto_cast &EnableLocalizationEventsML)
    _ = GetInstanceProcAddr(instance, "xrQueryLocalizationMapsML", auto_cast &QueryLocalizationMapsML)
    _ = GetInstanceProcAddr(instance, "xrRequestMapLocalizationML", auto_cast &RequestMapLocalizationML)
    _ = GetInstanceProcAddr(instance, "xrImportLocalizationMapML", auto_cast &ImportLocalizationMapML)
    _ = GetInstanceProcAddr(instance, "xrCreateExportedLocalizationMapML", auto_cast &CreateExportedLocalizationMapML)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorsAsyncML", auto_cast &CreateSpatialAnchorsAsyncML)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorsCompleteML", auto_cast &CreateSpatialAnchorsCompleteML)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorsStorageML", auto_cast &CreateSpatialAnchorsStorageML)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorStoreConnectionMSFT", auto_cast &CreateSpatialAnchorStoreConnectionMSFT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorFromPersistedNameMSFT", auto_cast &CreateSpatialAnchorFromPersistedNameMSFT)
    _ = GetInstanceProcAddr(instance, "xrQuerySpacesFB", auto_cast &QuerySpacesFB)
    _ = GetInstanceProcAddr(instance, "xrRetrieveSpaceQueryResultsFB", auto_cast &RetrieveSpaceQueryResultsFB)
    _ = GetInstanceProcAddr(instance, "xrSaveSpaceFB", auto_cast &SaveSpaceFB)
    _ = GetInstanceProcAddr(instance, "xrEraseSpaceFB", auto_cast &EraseSpaceFB)
    _ = GetInstanceProcAddr(instance, "xrShareSpacesFB", auto_cast &ShareSpacesFB)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceBoundingBox2DFB", auto_cast &GetSpaceBoundingBox2DFB)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceBoundingBox3DFB", auto_cast &GetSpaceBoundingBox3DFB)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceSemanticLabelsFB", auto_cast &GetSpaceSemanticLabelsFB)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceBoundary2DFB", auto_cast &GetSpaceBoundary2DFB)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceRoomLayoutFB", auto_cast &GetSpaceRoomLayoutFB)
    _ = GetInstanceProcAddr(instance, "xrSetDigitalLensControlALMALENCE", auto_cast &SetDigitalLensControlALMALENCE)
    _ = GetInstanceProcAddr(instance, "xrRequestSceneCaptureFB", auto_cast &RequestSceneCaptureFB)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceContainerFB", auto_cast &GetSpaceContainerFB)
    _ = GetInstanceProcAddr(instance, "xrGetFoveationEyeTrackedStateMETA", auto_cast &GetFoveationEyeTrackedStateMETA)
    _ = GetInstanceProcAddr(instance, "xrCreateFaceTrackerFB", auto_cast &CreateFaceTrackerFB)
    _ = GetInstanceProcAddr(instance, "xrCreateEyeTrackerFB", auto_cast &CreateEyeTrackerFB)
    _ = GetInstanceProcAddr(instance, "xrGetDeviceSampleRateFB", auto_cast &GetDeviceSampleRateFB)
    _ = GetInstanceProcAddr(instance, "xrGetPassthroughPreferencesMETA", auto_cast &GetPassthroughPreferencesMETA)
    _ = GetInstanceProcAddr(instance, "xrCreateVirtualKeyboardMETA", auto_cast &CreateVirtualKeyboardMETA)
    _ = GetInstanceProcAddr(instance, "xrCreateVirtualKeyboardSpaceMETA", auto_cast &CreateVirtualKeyboardSpaceMETA)
    _ = GetInstanceProcAddr(instance, "xrEnumerateExternalCamerasOCULUS", auto_cast &EnumerateExternalCamerasOCULUS)
    _ = GetInstanceProcAddr(instance, "xrSetPerformanceMetricsStateMETA", auto_cast &SetPerformanceMetricsStateMETA)
    _ = GetInstanceProcAddr(instance, "xrGetPerformanceMetricsStateMETA", auto_cast &GetPerformanceMetricsStateMETA)
    _ = GetInstanceProcAddr(instance, "xrQueryPerformanceMetricsCounterMETA", auto_cast &QueryPerformanceMetricsCounterMETA)
    _ = GetInstanceProcAddr(instance, "xrSaveSpaceListFB", auto_cast &SaveSpaceListFB)
    _ = GetInstanceProcAddr(instance, "xrCreateSpaceUserFB", auto_cast &CreateSpaceUserFB)
    _ = GetInstanceProcAddr(instance, "xrGetRecommendedLayerResolutionMETA", auto_cast &GetRecommendedLayerResolutionMETA)
    _ = GetInstanceProcAddr(instance, "xrSaveSpacesMETA", auto_cast &SaveSpacesMETA)
    _ = GetInstanceProcAddr(instance, "xrEraseSpacesMETA", auto_cast &EraseSpacesMETA)
    _ = GetInstanceProcAddr(instance, "xrCreateFaceTracker2FB", auto_cast &CreateFaceTracker2FB)
    _ = GetInstanceProcAddr(instance, "xrShareSpacesMETA", auto_cast &ShareSpacesMETA)
    _ = GetInstanceProcAddr(instance, "xrCreateEnvironmentDepthProviderMETA", auto_cast &CreateEnvironmentDepthProviderMETA)
    _ = GetInstanceProcAddr(instance, "xrCreateRenderModelEXT", auto_cast &CreateRenderModelEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateRenderModelSpaceEXT", auto_cast &CreateRenderModelSpaceEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateRenderModelAssetEXT", auto_cast &CreateRenderModelAssetEXT)
    _ = GetInstanceProcAddr(instance, "xrEnumerateInteractionRenderModelIdsEXT", auto_cast &EnumerateInteractionRenderModelIdsEXT)
    _ = GetInstanceProcAddr(instance, "xrSetTrackingOptimizationSettingsHintQCOM", auto_cast &SetTrackingOptimizationSettingsHintQCOM)
    _ = GetInstanceProcAddr(instance, "xrCreatePassthroughHTC", auto_cast &CreatePassthroughHTC)
    _ = GetInstanceProcAddr(instance, "xrApplyFoveationHTC", auto_cast &ApplyFoveationHTC)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorHTC", auto_cast &CreateSpatialAnchorHTC)
    _ = GetInstanceProcAddr(instance, "xrCreateBodyTrackerHTC", auto_cast &CreateBodyTrackerHTC)
    _ = GetInstanceProcAddr(instance, "xrCreateBodyTrackerBD", auto_cast &CreateBodyTrackerBD)
    _ = GetInstanceProcAddr(instance, "xrCreateSenseDataProviderBD", auto_cast &CreateSenseDataProviderBD)
    _ = GetInstanceProcAddr(instance, "xrStartSenseDataProviderCompleteBD", auto_cast &StartSenseDataProviderCompleteBD)
    _ = GetInstanceProcAddr(instance, "xrCreateAnchorSpaceBD", auto_cast &CreateAnchorSpaceBD)
    _ = GetInstanceProcAddr(instance, "xrCreatePlaneDetectorEXT", auto_cast &CreatePlaneDetectorEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateTrackableTrackerANDROID", auto_cast &CreateTrackableTrackerANDROID)
    _ = GetInstanceProcAddr(instance, "xrCreateAnchorSpaceANDROID", auto_cast &CreateAnchorSpaceANDROID)
    _ = GetInstanceProcAddr(instance, "xrCreateDeviceAnchorPersistenceANDROID", auto_cast &CreateDeviceAnchorPersistenceANDROID)
    _ = GetInstanceProcAddr(instance, "xrGetPassthroughCameraStateANDROID", auto_cast &GetPassthroughCameraStateANDROID)
    _ = GetInstanceProcAddr(instance, "xrRaycastANDROID", auto_cast &RaycastANDROID)
    _ = GetInstanceProcAddr(instance, "xrCreateWorldMeshDetectorML", auto_cast &CreateWorldMeshDetectorML)
    _ = GetInstanceProcAddr(instance, "xrCreateFacialExpressionClientML", auto_cast &CreateFacialExpressionClientML)
    _ = GetInstanceProcAddr(instance, "xrResumeSimultaneousHandsAndControllersTrackingMETA", auto_cast &ResumeSimultaneousHandsAndControllersTrackingMETA)
    _ = GetInstanceProcAddr(instance, "xrPauseSimultaneousHandsAndControllersTrackingMETA", auto_cast &PauseSimultaneousHandsAndControllersTrackingMETA)
    _ = GetInstanceProcAddr(instance, "xrStartColocationDiscoveryMETA", auto_cast &StartColocationDiscoveryMETA)
    _ = GetInstanceProcAddr(instance, "xrStopColocationDiscoveryMETA", auto_cast &StopColocationDiscoveryMETA)
    _ = GetInstanceProcAddr(instance, "xrStartColocationAdvertisementMETA", auto_cast &StartColocationAdvertisementMETA)
    _ = GetInstanceProcAddr(instance, "xrStopColocationAdvertisementMETA", auto_cast &StopColocationAdvertisementMETA)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialContextAsyncEXT", auto_cast &CreateSpatialContextAsyncEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialContextCompleteEXT", auto_cast &CreateSpatialContextCompleteEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialPersistenceContextAsyncEXT", auto_cast &CreateSpatialPersistenceContextAsyncEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialPersistenceContextCompleteEXT", auto_cast &CreateSpatialPersistenceContextCompleteEXT)
    _ = GetInstanceProcAddr(instance, "xrSetAndroidApplicationThreadKHR", auto_cast &SetAndroidApplicationThreadKHR)
    _ = GetInstanceProcAddr(instance, "xrCreateSwapchainAndroidSurfaceKHR", auto_cast &CreateSwapchainAndroidSurfaceKHR)
    _ = GetInstanceProcAddr(instance, "xrLocateSpace", auto_cast &LocateSpace)
    _ = GetInstanceProcAddr(instance, "xrDestroySpace", auto_cast &DestroySpace)
    _ = GetInstanceProcAddr(instance, "xrDestroySwapchain", auto_cast &DestroySwapchain)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSwapchainImages", auto_cast &EnumerateSwapchainImages)
    _ = GetInstanceProcAddr(instance, "xrAcquireSwapchainImage", auto_cast &AcquireSwapchainImage)
    _ = GetInstanceProcAddr(instance, "xrWaitSwapchainImage", auto_cast &WaitSwapchainImage)
    _ = GetInstanceProcAddr(instance, "xrReleaseSwapchainImage", auto_cast &ReleaseSwapchainImage)
    _ = GetInstanceProcAddr(instance, "xrDestroyActionSet", auto_cast &DestroyActionSet)
    _ = GetInstanceProcAddr(instance, "xrCreateAction", auto_cast &CreateAction)
    _ = GetInstanceProcAddr(instance, "xrDestroyAction", auto_cast &DestroyAction)
    _ = GetInstanceProcAddr(instance, "xrInitializeLoaderKHR", auto_cast &InitializeLoaderKHR)
    _ = GetInstanceProcAddr(instance, "xrDebugUtilsMessengerCallbackEXT", auto_cast &DebugUtilsMessengerCallbackEXT)
    _ = GetInstanceProcAddr(instance, "xrDestroyDebugUtilsMessengerEXT", auto_cast &DestroyDebugUtilsMessengerEXT)
    _ = GetInstanceProcAddr(instance, "xrDestroySpatialAnchorMSFT", auto_cast &DestroySpatialAnchorMSFT)
    _ = GetInstanceProcAddr(instance, "xrDestroySpatialGraphNodeBindingMSFT", auto_cast &DestroySpatialGraphNodeBindingMSFT)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialGraphNodeBindingPropertiesMSFT", auto_cast &GetSpatialGraphNodeBindingPropertiesMSFT)
    _ = GetInstanceProcAddr(instance, "xrDestroyHandTrackerEXT", auto_cast &DestroyHandTrackerEXT)
    _ = GetInstanceProcAddr(instance, "xrLocateHandJointsEXT", auto_cast &LocateHandJointsEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateHandMeshSpaceMSFT", auto_cast &CreateHandMeshSpaceMSFT)
    _ = GetInstanceProcAddr(instance, "xrUpdateHandMeshMSFT", auto_cast &UpdateHandMeshMSFT)
    _ = GetInstanceProcAddr(instance, "xrUpdateSwapchainFB", auto_cast &UpdateSwapchainFB)
    _ = GetInstanceProcAddr(instance, "xrGetSwapchainStateFB", auto_cast &GetSwapchainStateFB)
    _ = GetInstanceProcAddr(instance, "xrDestroyBodyTrackerFB", auto_cast &DestroyBodyTrackerFB)
    _ = GetInstanceProcAddr(instance, "xrLocateBodyJointsFB", auto_cast &LocateBodyJointsFB)
    _ = GetInstanceProcAddr(instance, "xrGetBodySkeletonFB", auto_cast &GetBodySkeletonFB)
    _ = GetInstanceProcAddr(instance, "xrDestroySceneObserverMSFT", auto_cast &DestroySceneObserverMSFT)
    _ = GetInstanceProcAddr(instance, "xrCreateSceneMSFT", auto_cast &CreateSceneMSFT)
    _ = GetInstanceProcAddr(instance, "xrDestroySceneMSFT", auto_cast &DestroySceneMSFT)
    _ = GetInstanceProcAddr(instance, "xrComputeNewSceneMSFT", auto_cast &ComputeNewSceneMSFT)
    _ = GetInstanceProcAddr(instance, "xrGetSceneComputeStateMSFT", auto_cast &GetSceneComputeStateMSFT)
    _ = GetInstanceProcAddr(instance, "xrGetSceneComponentsMSFT", auto_cast &GetSceneComponentsMSFT)
    _ = GetInstanceProcAddr(instance, "xrLocateSceneComponentsMSFT", auto_cast &LocateSceneComponentsMSFT)
    _ = GetInstanceProcAddr(instance, "xrGetSceneMeshBuffersMSFT", auto_cast &GetSceneMeshBuffersMSFT)
    _ = GetInstanceProcAddr(instance, "xrDeserializeSceneMSFT", auto_cast &DeserializeSceneMSFT)
    _ = GetInstanceProcAddr(instance, "xrGetSerializedSceneFragmentDataMSFT", auto_cast &GetSerializedSceneFragmentDataMSFT)
    _ = GetInstanceProcAddr(instance, "xrDestroyFacialTrackerHTC", auto_cast &DestroyFacialTrackerHTC)
    _ = GetInstanceProcAddr(instance, "xrGetFacialExpressionsHTC", auto_cast &GetFacialExpressionsHTC)
    _ = GetInstanceProcAddr(instance, "xrGetHandMeshFB", auto_cast &GetHandMeshFB)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceUuidFB", auto_cast &GetSpaceUuidFB)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSpaceSupportedComponentsFB", auto_cast &EnumerateSpaceSupportedComponentsFB)
    _ = GetInstanceProcAddr(instance, "xrSetSpaceComponentStatusFB", auto_cast &SetSpaceComponentStatusFB)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceComponentStatusFB", auto_cast &GetSpaceComponentStatusFB)
    _ = GetInstanceProcAddr(instance, "xrDestroyFoveationProfileFB", auto_cast &DestroyFoveationProfileFB)
    _ = GetInstanceProcAddr(instance, "xrDestroyTriangleMeshFB", auto_cast &DestroyTriangleMeshFB)
    _ = GetInstanceProcAddr(instance, "xrTriangleMeshGetVertexBufferFB", auto_cast &TriangleMeshGetVertexBufferFB)
    _ = GetInstanceProcAddr(instance, "xrTriangleMeshGetIndexBufferFB", auto_cast &TriangleMeshGetIndexBufferFB)
    _ = GetInstanceProcAddr(instance, "xrTriangleMeshBeginUpdateFB", auto_cast &TriangleMeshBeginUpdateFB)
    _ = GetInstanceProcAddr(instance, "xrTriangleMeshEndUpdateFB", auto_cast &TriangleMeshEndUpdateFB)
    _ = GetInstanceProcAddr(instance, "xrTriangleMeshBeginVertexBufferUpdateFB", auto_cast &TriangleMeshBeginVertexBufferUpdateFB)
    _ = GetInstanceProcAddr(instance, "xrTriangleMeshEndVertexBufferUpdateFB", auto_cast &TriangleMeshEndVertexBufferUpdateFB)
    _ = GetInstanceProcAddr(instance, "xrDestroyPassthroughFB", auto_cast &DestroyPassthroughFB)
    _ = GetInstanceProcAddr(instance, "xrPassthroughStartFB", auto_cast &PassthroughStartFB)
    _ = GetInstanceProcAddr(instance, "xrPassthroughPauseFB", auto_cast &PassthroughPauseFB)
    _ = GetInstanceProcAddr(instance, "xrDestroyPassthroughLayerFB", auto_cast &DestroyPassthroughLayerFB)
    _ = GetInstanceProcAddr(instance, "xrPassthroughLayerPauseFB", auto_cast &PassthroughLayerPauseFB)
    _ = GetInstanceProcAddr(instance, "xrPassthroughLayerResumeFB", auto_cast &PassthroughLayerResumeFB)
    _ = GetInstanceProcAddr(instance, "xrPassthroughLayerSetStyleFB", auto_cast &PassthroughLayerSetStyleFB)
    _ = GetInstanceProcAddr(instance, "xrDestroyGeometryInstanceFB", auto_cast &DestroyGeometryInstanceFB)
    _ = GetInstanceProcAddr(instance, "xrGeometryInstanceSetTransformFB", auto_cast &GeometryInstanceSetTransformFB)
    _ = GetInstanceProcAddr(instance, "xrDestroyMarkerDetectorML", auto_cast &DestroyMarkerDetectorML)
    _ = GetInstanceProcAddr(instance, "xrSnapshotMarkerDetectorML", auto_cast &SnapshotMarkerDetectorML)
    _ = GetInstanceProcAddr(instance, "xrGetMarkerDetectorStateML", auto_cast &GetMarkerDetectorStateML)
    _ = GetInstanceProcAddr(instance, "xrGetMarkersML", auto_cast &GetMarkersML)
    _ = GetInstanceProcAddr(instance, "xrGetMarkerReprojectionErrorML", auto_cast &GetMarkerReprojectionErrorML)
    _ = GetInstanceProcAddr(instance, "xrGetMarkerLengthML", auto_cast &GetMarkerLengthML)
    _ = GetInstanceProcAddr(instance, "xrGetMarkerNumberML", auto_cast &GetMarkerNumberML)
    _ = GetInstanceProcAddr(instance, "xrGetMarkerStringML", auto_cast &GetMarkerStringML)
    _ = GetInstanceProcAddr(instance, "xrDestroyExportedLocalizationMapML", auto_cast &DestroyExportedLocalizationMapML)
    _ = GetInstanceProcAddr(instance, "xrGetExportedLocalizationMapDataML", auto_cast &GetExportedLocalizationMapDataML)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialAnchorStateML", auto_cast &GetSpatialAnchorStateML)
    _ = GetInstanceProcAddr(instance, "xrDestroySpatialAnchorsStorageML", auto_cast &DestroySpatialAnchorsStorageML)
    _ = GetInstanceProcAddr(instance, "xrQuerySpatialAnchorsAsyncML", auto_cast &QuerySpatialAnchorsAsyncML)
    _ = GetInstanceProcAddr(instance, "xrQuerySpatialAnchorsCompleteML", auto_cast &QuerySpatialAnchorsCompleteML)
    _ = GetInstanceProcAddr(instance, "xrPublishSpatialAnchorsAsyncML", auto_cast &PublishSpatialAnchorsAsyncML)
    _ = GetInstanceProcAddr(instance, "xrPublishSpatialAnchorsCompleteML", auto_cast &PublishSpatialAnchorsCompleteML)
    _ = GetInstanceProcAddr(instance, "xrDeleteSpatialAnchorsAsyncML", auto_cast &DeleteSpatialAnchorsAsyncML)
    _ = GetInstanceProcAddr(instance, "xrDeleteSpatialAnchorsCompleteML", auto_cast &DeleteSpatialAnchorsCompleteML)
    _ = GetInstanceProcAddr(instance, "xrUpdateSpatialAnchorsExpirationAsyncML", auto_cast &UpdateSpatialAnchorsExpirationAsyncML)
    _ = GetInstanceProcAddr(instance, "xrUpdateSpatialAnchorsExpirationCompleteML", auto_cast &UpdateSpatialAnchorsExpirationCompleteML)
    _ = GetInstanceProcAddr(instance, "xrDestroySpatialAnchorStoreConnectionMSFT", auto_cast &DestroySpatialAnchorStoreConnectionMSFT)
    _ = GetInstanceProcAddr(instance, "xrPersistSpatialAnchorMSFT", auto_cast &PersistSpatialAnchorMSFT)
    _ = GetInstanceProcAddr(instance, "xrEnumeratePersistedSpatialAnchorNamesMSFT", auto_cast &EnumeratePersistedSpatialAnchorNamesMSFT)
    _ = GetInstanceProcAddr(instance, "xrUnpersistSpatialAnchorMSFT", auto_cast &UnpersistSpatialAnchorMSFT)
    _ = GetInstanceProcAddr(instance, "xrClearSpatialAnchorStoreMSFT", auto_cast &ClearSpatialAnchorStoreMSFT)
    _ = GetInstanceProcAddr(instance, "xrGetSceneMarkerRawDataMSFT", auto_cast &GetSceneMarkerRawDataMSFT)
    _ = GetInstanceProcAddr(instance, "xrGetSceneMarkerDecodedStringMSFT", auto_cast &GetSceneMarkerDecodedStringMSFT)
    _ = GetInstanceProcAddr(instance, "xrDestroyFaceTrackerFB", auto_cast &DestroyFaceTrackerFB)
    _ = GetInstanceProcAddr(instance, "xrGetFaceExpressionWeightsFB", auto_cast &GetFaceExpressionWeightsFB)
    _ = GetInstanceProcAddr(instance, "xrDestroyEyeTrackerFB", auto_cast &DestroyEyeTrackerFB)
    _ = GetInstanceProcAddr(instance, "xrGetEyeGazesFB", auto_cast &GetEyeGazesFB)
    _ = GetInstanceProcAddr(instance, "xrPassthroughLayerSetKeyboardHandsIntensityFB", auto_cast &PassthroughLayerSetKeyboardHandsIntensityFB)
    _ = GetInstanceProcAddr(instance, "xrDestroyVirtualKeyboardMETA", auto_cast &DestroyVirtualKeyboardMETA)
    _ = GetInstanceProcAddr(instance, "xrSuggestVirtualKeyboardLocationMETA", auto_cast &SuggestVirtualKeyboardLocationMETA)
    _ = GetInstanceProcAddr(instance, "xrGetVirtualKeyboardScaleMETA", auto_cast &GetVirtualKeyboardScaleMETA)
    _ = GetInstanceProcAddr(instance, "xrSetVirtualKeyboardModelVisibilityMETA", auto_cast &SetVirtualKeyboardModelVisibilityMETA)
    _ = GetInstanceProcAddr(instance, "xrGetVirtualKeyboardModelAnimationStatesMETA", auto_cast &GetVirtualKeyboardModelAnimationStatesMETA)
    _ = GetInstanceProcAddr(instance, "xrGetVirtualKeyboardDirtyTexturesMETA", auto_cast &GetVirtualKeyboardDirtyTexturesMETA)
    _ = GetInstanceProcAddr(instance, "xrGetVirtualKeyboardTextureDataMETA", auto_cast &GetVirtualKeyboardTextureDataMETA)
    _ = GetInstanceProcAddr(instance, "xrSendVirtualKeyboardInputMETA", auto_cast &SendVirtualKeyboardInputMETA)
    _ = GetInstanceProcAddr(instance, "xrChangeVirtualKeyboardTextContextMETA", auto_cast &ChangeVirtualKeyboardTextContextMETA)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceUserIdFB", auto_cast &GetSpaceUserIdFB)
    _ = GetInstanceProcAddr(instance, "xrDestroySpaceUserFB", auto_cast &DestroySpaceUserFB)
    _ = GetInstanceProcAddr(instance, "xrCreatePassthroughColorLutMETA", auto_cast &CreatePassthroughColorLutMETA)
    _ = GetInstanceProcAddr(instance, "xrDestroyPassthroughColorLutMETA", auto_cast &DestroyPassthroughColorLutMETA)
    _ = GetInstanceProcAddr(instance, "xrUpdatePassthroughColorLutMETA", auto_cast &UpdatePassthroughColorLutMETA)
    _ = GetInstanceProcAddr(instance, "xrGetSpaceTriangleMeshMETA", auto_cast &GetSpaceTriangleMeshMETA)
    _ = GetInstanceProcAddr(instance, "xrSuggestBodyTrackingCalibrationOverrideMETA", auto_cast &SuggestBodyTrackingCalibrationOverrideMETA)
    _ = GetInstanceProcAddr(instance, "xrResetBodyTrackingCalibrationMETA", auto_cast &ResetBodyTrackingCalibrationMETA)
    _ = GetInstanceProcAddr(instance, "xrDestroyFaceTracker2FB", auto_cast &DestroyFaceTracker2FB)
    _ = GetInstanceProcAddr(instance, "xrGetFaceExpressionWeights2FB", auto_cast &GetFaceExpressionWeights2FB)
    _ = GetInstanceProcAddr(instance, "xrDestroyEnvironmentDepthProviderMETA", auto_cast &DestroyEnvironmentDepthProviderMETA)
    _ = GetInstanceProcAddr(instance, "xrStartEnvironmentDepthProviderMETA", auto_cast &StartEnvironmentDepthProviderMETA)
    _ = GetInstanceProcAddr(instance, "xrStopEnvironmentDepthProviderMETA", auto_cast &StopEnvironmentDepthProviderMETA)
    _ = GetInstanceProcAddr(instance, "xrCreateEnvironmentDepthSwapchainMETA", auto_cast &CreateEnvironmentDepthSwapchainMETA)
    _ = GetInstanceProcAddr(instance, "xrDestroyEnvironmentDepthSwapchainMETA", auto_cast &DestroyEnvironmentDepthSwapchainMETA)
    _ = GetInstanceProcAddr(instance, "xrEnumerateEnvironmentDepthSwapchainImagesMETA", auto_cast &EnumerateEnvironmentDepthSwapchainImagesMETA)
    _ = GetInstanceProcAddr(instance, "xrGetEnvironmentDepthSwapchainStateMETA", auto_cast &GetEnvironmentDepthSwapchainStateMETA)
    _ = GetInstanceProcAddr(instance, "xrAcquireEnvironmentDepthImageMETA", auto_cast &AcquireEnvironmentDepthImageMETA)
    _ = GetInstanceProcAddr(instance, "xrSetEnvironmentDepthHandRemovalMETA", auto_cast &SetEnvironmentDepthHandRemovalMETA)
    _ = GetInstanceProcAddr(instance, "xrDestroyRenderModelEXT", auto_cast &DestroyRenderModelEXT)
    _ = GetInstanceProcAddr(instance, "xrGetRenderModelPropertiesEXT", auto_cast &GetRenderModelPropertiesEXT)
    _ = GetInstanceProcAddr(instance, "xrDestroyRenderModelAssetEXT", auto_cast &DestroyRenderModelAssetEXT)
    _ = GetInstanceProcAddr(instance, "xrGetRenderModelAssetDataEXT", auto_cast &GetRenderModelAssetDataEXT)
    _ = GetInstanceProcAddr(instance, "xrGetRenderModelAssetPropertiesEXT", auto_cast &GetRenderModelAssetPropertiesEXT)
    _ = GetInstanceProcAddr(instance, "xrGetRenderModelStateEXT", auto_cast &GetRenderModelStateEXT)
    _ = GetInstanceProcAddr(instance, "xrEnumerateRenderModelSubactionPathsEXT", auto_cast &EnumerateRenderModelSubactionPathsEXT)
    _ = GetInstanceProcAddr(instance, "xrGetRenderModelPoseTopLevelUserPathEXT", auto_cast &GetRenderModelPoseTopLevelUserPathEXT)
    _ = GetInstanceProcAddr(instance, "xrDestroyPassthroughHTC", auto_cast &DestroyPassthroughHTC)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialAnchorNameHTC", auto_cast &GetSpatialAnchorNameHTC)
    _ = GetInstanceProcAddr(instance, "xrDestroyBodyTrackerHTC", auto_cast &DestroyBodyTrackerHTC)
    _ = GetInstanceProcAddr(instance, "xrLocateBodyJointsHTC", auto_cast &LocateBodyJointsHTC)
    _ = GetInstanceProcAddr(instance, "xrGetBodySkeletonHTC", auto_cast &GetBodySkeletonHTC)
    _ = GetInstanceProcAddr(instance, "xrApplyForceFeedbackCurlMNDX", auto_cast &ApplyForceFeedbackCurlMNDX)
    _ = GetInstanceProcAddr(instance, "xrDestroyBodyTrackerBD", auto_cast &DestroyBodyTrackerBD)
    _ = GetInstanceProcAddr(instance, "xrLocateBodyJointsBD", auto_cast &LocateBodyJointsBD)
    _ = GetInstanceProcAddr(instance, "xrEnumerateSpatialEntityComponentTypesBD", auto_cast &EnumerateSpatialEntityComponentTypesBD)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialEntityUuidBD", auto_cast &GetSpatialEntityUuidBD)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialEntityComponentDataBD", auto_cast &GetSpatialEntityComponentDataBD)
    _ = GetInstanceProcAddr(instance, "xrStartSenseDataProviderAsyncBD", auto_cast &StartSenseDataProviderAsyncBD)
    _ = GetInstanceProcAddr(instance, "xrGetSenseDataProviderStateBD", auto_cast &GetSenseDataProviderStateBD)
    _ = GetInstanceProcAddr(instance, "xrQuerySenseDataAsyncBD", auto_cast &QuerySenseDataAsyncBD)
    _ = GetInstanceProcAddr(instance, "xrQuerySenseDataCompleteBD", auto_cast &QuerySenseDataCompleteBD)
    _ = GetInstanceProcAddr(instance, "xrDestroySenseDataSnapshotBD", auto_cast &DestroySenseDataSnapshotBD)
    _ = GetInstanceProcAddr(instance, "xrGetQueriedSenseDataBD", auto_cast &GetQueriedSenseDataBD)
    _ = GetInstanceProcAddr(instance, "xrStopSenseDataProviderBD", auto_cast &StopSenseDataProviderBD)
    _ = GetInstanceProcAddr(instance, "xrDestroySenseDataProviderBD", auto_cast &DestroySenseDataProviderBD)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialEntityAnchorBD", auto_cast &CreateSpatialEntityAnchorBD)
    _ = GetInstanceProcAddr(instance, "xrDestroyAnchorBD", auto_cast &DestroyAnchorBD)
    _ = GetInstanceProcAddr(instance, "xrGetAnchorUuidBD", auto_cast &GetAnchorUuidBD)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorAsyncBD", auto_cast &CreateSpatialAnchorAsyncBD)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorCompleteBD", auto_cast &CreateSpatialAnchorCompleteBD)
    _ = GetInstanceProcAddr(instance, "xrPersistSpatialAnchorAsyncBD", auto_cast &PersistSpatialAnchorAsyncBD)
    _ = GetInstanceProcAddr(instance, "xrPersistSpatialAnchorCompleteBD", auto_cast &PersistSpatialAnchorCompleteBD)
    _ = GetInstanceProcAddr(instance, "xrUnpersistSpatialAnchorAsyncBD", auto_cast &UnpersistSpatialAnchorAsyncBD)
    _ = GetInstanceProcAddr(instance, "xrUnpersistSpatialAnchorCompleteBD", auto_cast &UnpersistSpatialAnchorCompleteBD)
    _ = GetInstanceProcAddr(instance, "xrShareSpatialAnchorAsyncBD", auto_cast &ShareSpatialAnchorAsyncBD)
    _ = GetInstanceProcAddr(instance, "xrShareSpatialAnchorCompleteBD", auto_cast &ShareSpatialAnchorCompleteBD)
    _ = GetInstanceProcAddr(instance, "xrDownloadSharedSpatialAnchorAsyncBD", auto_cast &DownloadSharedSpatialAnchorAsyncBD)
    _ = GetInstanceProcAddr(instance, "xrDownloadSharedSpatialAnchorCompleteBD", auto_cast &DownloadSharedSpatialAnchorCompleteBD)
    _ = GetInstanceProcAddr(instance, "xrCaptureSceneAsyncBD", auto_cast &CaptureSceneAsyncBD)
    _ = GetInstanceProcAddr(instance, "xrCaptureSceneCompleteBD", auto_cast &CaptureSceneCompleteBD)
    _ = GetInstanceProcAddr(instance, "xrDestroyPlaneDetectorEXT", auto_cast &DestroyPlaneDetectorEXT)
    _ = GetInstanceProcAddr(instance, "xrBeginPlaneDetectionEXT", auto_cast &BeginPlaneDetectionEXT)
    _ = GetInstanceProcAddr(instance, "xrGetPlaneDetectionStateEXT", auto_cast &GetPlaneDetectionStateEXT)
    _ = GetInstanceProcAddr(instance, "xrGetPlaneDetectionsEXT", auto_cast &GetPlaneDetectionsEXT)
    _ = GetInstanceProcAddr(instance, "xrGetPlanePolygonBufferEXT", auto_cast &GetPlanePolygonBufferEXT)
    _ = GetInstanceProcAddr(instance, "xrDestroyTrackableTrackerANDROID", auto_cast &DestroyTrackableTrackerANDROID)
    _ = GetInstanceProcAddr(instance, "xrGetAllTrackablesANDROID", auto_cast &GetAllTrackablesANDROID)
    _ = GetInstanceProcAddr(instance, "xrGetTrackablePlaneANDROID", auto_cast &GetTrackablePlaneANDROID)
    _ = GetInstanceProcAddr(instance, "xrDestroyDeviceAnchorPersistenceANDROID", auto_cast &DestroyDeviceAnchorPersistenceANDROID)
    _ = GetInstanceProcAddr(instance, "xrPersistAnchorANDROID", auto_cast &PersistAnchorANDROID)
    _ = GetInstanceProcAddr(instance, "xrGetAnchorPersistStateANDROID", auto_cast &GetAnchorPersistStateANDROID)
    _ = GetInstanceProcAddr(instance, "xrCreatePersistedAnchorSpaceANDROID", auto_cast &CreatePersistedAnchorSpaceANDROID)
    _ = GetInstanceProcAddr(instance, "xrEnumeratePersistedAnchorsANDROID", auto_cast &EnumeratePersistedAnchorsANDROID)
    _ = GetInstanceProcAddr(instance, "xrUnpersistAnchorANDROID", auto_cast &UnpersistAnchorANDROID)
    _ = GetInstanceProcAddr(instance, "xrGetTrackableObjectANDROID", auto_cast &GetTrackableObjectANDROID)
    _ = GetInstanceProcAddr(instance, "xrDestroyWorldMeshDetectorML", auto_cast &DestroyWorldMeshDetectorML)
    _ = GetInstanceProcAddr(instance, "xrRequestWorldMeshStateAsyncML", auto_cast &RequestWorldMeshStateAsyncML)
    _ = GetInstanceProcAddr(instance, "xrRequestWorldMeshStateCompleteML", auto_cast &RequestWorldMeshStateCompleteML)
    _ = GetInstanceProcAddr(instance, "xrGetWorldMeshBufferRecommendSizeML", auto_cast &GetWorldMeshBufferRecommendSizeML)
    _ = GetInstanceProcAddr(instance, "xrAllocateWorldMeshBufferML", auto_cast &AllocateWorldMeshBufferML)
    _ = GetInstanceProcAddr(instance, "xrFreeWorldMeshBufferML", auto_cast &FreeWorldMeshBufferML)
    _ = GetInstanceProcAddr(instance, "xrRequestWorldMeshAsyncML", auto_cast &RequestWorldMeshAsyncML)
    _ = GetInstanceProcAddr(instance, "xrRequestWorldMeshCompleteML", auto_cast &RequestWorldMeshCompleteML)
    _ = GetInstanceProcAddr(instance, "xrDestroyFacialExpressionClientML", auto_cast &DestroyFacialExpressionClientML)
    _ = GetInstanceProcAddr(instance, "xrGetFacialExpressionBlendShapePropertiesML", auto_cast &GetFacialExpressionBlendShapePropertiesML)
    _ = GetInstanceProcAddr(instance, "xrGetTrackableMarkerANDROID", auto_cast &GetTrackableMarkerANDROID)
    _ = GetInstanceProcAddr(instance, "xrDestroySpatialContextEXT", auto_cast &DestroySpatialContextEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialDiscoverySnapshotAsyncEXT", auto_cast &CreateSpatialDiscoverySnapshotAsyncEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialDiscoverySnapshotCompleteEXT", auto_cast &CreateSpatialDiscoverySnapshotCompleteEXT)
    _ = GetInstanceProcAddr(instance, "xrQuerySpatialComponentDataEXT", auto_cast &QuerySpatialComponentDataEXT)
    _ = GetInstanceProcAddr(instance, "xrDestroySpatialSnapshotEXT", auto_cast &DestroySpatialSnapshotEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialEntityFromIdEXT", auto_cast &CreateSpatialEntityFromIdEXT)
    _ = GetInstanceProcAddr(instance, "xrDestroySpatialEntityEXT", auto_cast &DestroySpatialEntityEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialUpdateSnapshotEXT", auto_cast &CreateSpatialUpdateSnapshotEXT)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialBufferStringEXT", auto_cast &GetSpatialBufferStringEXT)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialBufferUint8EXT", auto_cast &GetSpatialBufferUint8EXT)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialBufferUint16EXT", auto_cast &GetSpatialBufferUint16EXT)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialBufferUint32EXT", auto_cast &GetSpatialBufferUint32EXT)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialBufferFloatEXT", auto_cast &GetSpatialBufferFloatEXT)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialBufferVector2fEXT", auto_cast &GetSpatialBufferVector2fEXT)
    _ = GetInstanceProcAddr(instance, "xrGetSpatialBufferVector3fEXT", auto_cast &GetSpatialBufferVector3fEXT)
    _ = GetInstanceProcAddr(instance, "xrCreateSpatialAnchorEXT", auto_cast &CreateSpatialAnchorEXT)
    _ = GetInstanceProcAddr(instance, "xrDestroySpatialPersistenceContextEXT", auto_cast &DestroySpatialPersistenceContextEXT)
    _ = GetInstanceProcAddr(instance, "xrPersistSpatialEntityAsyncEXT", auto_cast &PersistSpatialEntityAsyncEXT)
    _ = GetInstanceProcAddr(instance, "xrPersistSpatialEntityCompleteEXT", auto_cast &PersistSpatialEntityCompleteEXT)
    _ = GetInstanceProcAddr(instance, "xrUnpersistSpatialEntityAsyncEXT", auto_cast &UnpersistSpatialEntityAsyncEXT)
    _ = GetInstanceProcAddr(instance, "xrUnpersistSpatialEntityCompleteEXT", auto_cast &UnpersistSpatialEntityCompleteEXT)
}

load_proc_addresses_custom :: proc(set_proc_address: SetProcAddressType) {
    // Global level procedures
    set_proc_address(&EnumerateApiLayerProperties, "xrEnumerateApiLayerProperties")
    set_proc_address(&EnumerateInstanceExtensionProperties, "xrEnumerateInstanceExtensionProperties")
    set_proc_address(&CreateInstance, "xrCreateInstance")

    // Instance level procedures
    set_proc_address(&GetInstanceProcAddr, "xrGetInstanceProcAddr")
    set_proc_address(&DestroyInstance, "xrDestroyInstance")
    set_proc_address(&GetInstanceProperties, "xrGetInstanceProperties")
    set_proc_address(&PollEvent, "xrPollEvent")
    set_proc_address(&ResultToString, "xrResultToString")
    set_proc_address(&StructureTypeToString, "xrStructureTypeToString")
    set_proc_address(&GetSystem, "xrGetSystem")
    set_proc_address(&GetSystemProperties, "xrGetSystemProperties")
    set_proc_address(&EnumerateEnvironmentBlendModes, "xrEnumerateEnvironmentBlendModes")
    set_proc_address(&CreateSession, "xrCreateSession")
    set_proc_address(&EnumerateViewConfigurations, "xrEnumerateViewConfigurations")
    set_proc_address(&GetViewConfigurationProperties, "xrGetViewConfigurationProperties")
    set_proc_address(&EnumerateViewConfigurationViews, "xrEnumerateViewConfigurationViews")
    set_proc_address(&StringToPath, "xrStringToPath")
    set_proc_address(&PathToString, "xrPathToString")
    set_proc_address(&CreateActionSet, "xrCreateActionSet")
    set_proc_address(&SuggestInteractionProfileBindings, "xrSuggestInteractionProfileBindings")
    set_proc_address(&StructureTypeToString2KHR, "xrStructureTypeToString2KHR")
    set_proc_address(&SetDebugUtilsObjectNameEXT, "xrSetDebugUtilsObjectNameEXT")
    set_proc_address(&CreateDebugUtilsMessengerEXT, "xrCreateDebugUtilsMessengerEXT")
    set_proc_address(&SubmitDebugUtilsMessageEXT, "xrSubmitDebugUtilsMessageEXT")
    set_proc_address(&EnumerateReprojectionModesMSFT, "xrEnumerateReprojectionModesMSFT")
    set_proc_address(&EnumerateSceneComputeFeaturesMSFT, "xrEnumerateSceneComputeFeaturesMSFT")
    set_proc_address(&EnumerateViveTrackerPathsHTCX, "xrEnumerateViveTrackerPathsHTCX")
    set_proc_address(&EnumeratePerformanceMetricsCounterPathsMETA, "xrEnumeratePerformanceMetricsCounterPathsMETA")
    set_proc_address(&EnumerateSupportedTrackableTypesANDROID, "xrEnumerateSupportedTrackableTypesANDROID")
    set_proc_address(&EnumerateSupportedAnchorTrackableTypesANDROID, "xrEnumerateSupportedAnchorTrackableTypesANDROID")
    set_proc_address(&EnumerateSupportedPersistenceAnchorTypesANDROID, "xrEnumerateSupportedPersistenceAnchorTypesANDROID")
    set_proc_address(&EnumerateRaycastSupportedTrackableTypesANDROID, "xrEnumerateRaycastSupportedTrackableTypesANDROID")
    set_proc_address(&PollFutureEXT, "xrPollFutureEXT")
    set_proc_address(&CancelFutureEXT, "xrCancelFutureEXT")
    set_proc_address(&EnableUserCalibrationEventsML, "xrEnableUserCalibrationEventsML")
    set_proc_address(&SetSystemNotificationsML, "xrSetSystemNotificationsML")
    set_proc_address(&EnumerateSpatialCapabilitiesEXT, "xrEnumerateSpatialCapabilitiesEXT")
    set_proc_address(&EnumerateSpatialCapabilityComponentTypesEXT, "xrEnumerateSpatialCapabilityComponentTypesEXT")
    set_proc_address(&EnumerateSpatialCapabilityFeaturesEXT, "xrEnumerateSpatialCapabilityFeaturesEXT")
    set_proc_address(&EnumerateSpatialPersistenceScopesEXT, "xrEnumerateSpatialPersistenceScopesEXT")

    // Session level procedures
    set_proc_address(&DestroySession, "xrDestroySession")
    set_proc_address(&EnumerateReferenceSpaces, "xrEnumerateReferenceSpaces")
    set_proc_address(&CreateReferenceSpace, "xrCreateReferenceSpace")
    set_proc_address(&GetReferenceSpaceBoundsRect, "xrGetReferenceSpaceBoundsRect")
    set_proc_address(&CreateActionSpace, "xrCreateActionSpace")
    set_proc_address(&EnumerateSwapchainFormats, "xrEnumerateSwapchainFormats")
    set_proc_address(&CreateSwapchain, "xrCreateSwapchain")
    set_proc_address(&BeginSession, "xrBeginSession")
    set_proc_address(&EndSession, "xrEndSession")
    set_proc_address(&RequestExitSession, "xrRequestExitSession")
    set_proc_address(&WaitFrame, "xrWaitFrame")
    set_proc_address(&BeginFrame, "xrBeginFrame")
    set_proc_address(&EndFrame, "xrEndFrame")
    set_proc_address(&LocateViews, "xrLocateViews")
    set_proc_address(&AttachSessionActionSets, "xrAttachSessionActionSets")
    set_proc_address(&GetCurrentInteractionProfile, "xrGetCurrentInteractionProfile")
    set_proc_address(&GetActionStateBoolean, "xrGetActionStateBoolean")
    set_proc_address(&GetActionStateFloat, "xrGetActionStateFloat")
    set_proc_address(&GetActionStateVector2f, "xrGetActionStateVector2f")
    set_proc_address(&GetActionStatePose, "xrGetActionStatePose")
    set_proc_address(&SyncActions, "xrSyncActions")
    set_proc_address(&EnumerateBoundSourcesForAction, "xrEnumerateBoundSourcesForAction")
    set_proc_address(&GetInputSourceLocalizedName, "xrGetInputSourceLocalizedName")
    set_proc_address(&ApplyHapticFeedback, "xrApplyHapticFeedback")
    set_proc_address(&StopHapticFeedback, "xrStopHapticFeedback")
    set_proc_address(&LocateSpaces, "xrLocateSpaces")
    set_proc_address(&GetVisibilityMaskKHR, "xrGetVisibilityMaskKHR")
    set_proc_address(&LocateSpacesKHR, "xrLocateSpacesKHR")
    set_proc_address(&PerfSettingsSetPerformanceLevelEXT, "xrPerfSettingsSetPerformanceLevelEXT")
    set_proc_address(&ThermalGetTemperatureTrendEXT, "xrThermalGetTemperatureTrendEXT")
    set_proc_address(&SessionBeginDebugUtilsLabelRegionEXT, "xrSessionBeginDebugUtilsLabelRegionEXT")
    set_proc_address(&SessionEndDebugUtilsLabelRegionEXT, "xrSessionEndDebugUtilsLabelRegionEXT")
    set_proc_address(&SessionInsertDebugUtilsLabelEXT, "xrSessionInsertDebugUtilsLabelEXT")
    set_proc_address(&CreateSpatialAnchorMSFT, "xrCreateSpatialAnchorMSFT")
    set_proc_address(&CreateSpatialAnchorSpaceMSFT, "xrCreateSpatialAnchorSpaceMSFT")
    set_proc_address(&SetInputDeviceActiveEXT, "xrSetInputDeviceActiveEXT")
    set_proc_address(&SetInputDeviceStateBoolEXT, "xrSetInputDeviceStateBoolEXT")
    set_proc_address(&SetInputDeviceStateFloatEXT, "xrSetInputDeviceStateFloatEXT")
    set_proc_address(&SetInputDeviceStateVector2fEXT, "xrSetInputDeviceStateVector2fEXT")
    set_proc_address(&SetInputDeviceLocationEXT, "xrSetInputDeviceLocationEXT")
    set_proc_address(&CreateSpatialGraphNodeSpaceMSFT, "xrCreateSpatialGraphNodeSpaceMSFT")
    set_proc_address(&TryCreateSpatialGraphStaticNodeBindingMSFT, "xrTryCreateSpatialGraphStaticNodeBindingMSFT")
    set_proc_address(&CreateHandTrackerEXT, "xrCreateHandTrackerEXT")
    set_proc_address(&GetControllerModelKeyMSFT, "xrGetControllerModelKeyMSFT")
    set_proc_address(&LoadControllerModelMSFT, "xrLoadControllerModelMSFT")
    set_proc_address(&GetControllerModelPropertiesMSFT, "xrGetControllerModelPropertiesMSFT")
    set_proc_address(&GetControllerModelStateMSFT, "xrGetControllerModelStateMSFT")
    set_proc_address(&CreateBodyTrackerFB, "xrCreateBodyTrackerFB")
    set_proc_address(&CreateSceneObserverMSFT, "xrCreateSceneObserverMSFT")
    set_proc_address(&EnumerateDisplayRefreshRatesFB, "xrEnumerateDisplayRefreshRatesFB")
    set_proc_address(&GetDisplayRefreshRateFB, "xrGetDisplayRefreshRateFB")
    set_proc_address(&RequestDisplayRefreshRateFB, "xrRequestDisplayRefreshRateFB")
    set_proc_address(&CreateFacialTrackerHTC, "xrCreateFacialTrackerHTC")
    set_proc_address(&EnumerateColorSpacesFB, "xrEnumerateColorSpacesFB")
    set_proc_address(&SetColorSpaceFB, "xrSetColorSpaceFB")
    set_proc_address(&CreateSpatialAnchorFB, "xrCreateSpatialAnchorFB")
    set_proc_address(&CreateFoveationProfileFB, "xrCreateFoveationProfileFB")
    set_proc_address(&QuerySystemTrackedKeyboardFB, "xrQuerySystemTrackedKeyboardFB")
    set_proc_address(&CreateKeyboardSpaceFB, "xrCreateKeyboardSpaceFB")
    set_proc_address(&CreateTriangleMeshFB, "xrCreateTriangleMeshFB")
    set_proc_address(&CreatePassthroughFB, "xrCreatePassthroughFB")
    set_proc_address(&CreatePassthroughLayerFB, "xrCreatePassthroughLayerFB")
    set_proc_address(&CreateGeometryInstanceFB, "xrCreateGeometryInstanceFB")
    set_proc_address(&EnumerateRenderModelPathsFB, "xrEnumerateRenderModelPathsFB")
    set_proc_address(&GetRenderModelPropertiesFB, "xrGetRenderModelPropertiesFB")
    set_proc_address(&LoadRenderModelFB, "xrLoadRenderModelFB")
    set_proc_address(&SetEnvironmentDepthEstimationVARJO, "xrSetEnvironmentDepthEstimationVARJO")
    set_proc_address(&SetMarkerTrackingVARJO, "xrSetMarkerTrackingVARJO")
    set_proc_address(&SetMarkerTrackingTimeoutVARJO, "xrSetMarkerTrackingTimeoutVARJO")
    set_proc_address(&SetMarkerTrackingPredictionVARJO, "xrSetMarkerTrackingPredictionVARJO")
    set_proc_address(&GetMarkerSizeVARJO, "xrGetMarkerSizeVARJO")
    set_proc_address(&CreateMarkerSpaceVARJO, "xrCreateMarkerSpaceVARJO")
    set_proc_address(&SetViewOffsetVARJO, "xrSetViewOffsetVARJO")
    set_proc_address(&CreateMarkerDetectorML, "xrCreateMarkerDetectorML")
    set_proc_address(&CreateMarkerSpaceML, "xrCreateMarkerSpaceML")
    set_proc_address(&EnableLocalizationEventsML, "xrEnableLocalizationEventsML")
    set_proc_address(&QueryLocalizationMapsML, "xrQueryLocalizationMapsML")
    set_proc_address(&RequestMapLocalizationML, "xrRequestMapLocalizationML")
    set_proc_address(&ImportLocalizationMapML, "xrImportLocalizationMapML")
    set_proc_address(&CreateExportedLocalizationMapML, "xrCreateExportedLocalizationMapML")
    set_proc_address(&CreateSpatialAnchorsAsyncML, "xrCreateSpatialAnchorsAsyncML")
    set_proc_address(&CreateSpatialAnchorsCompleteML, "xrCreateSpatialAnchorsCompleteML")
    set_proc_address(&CreateSpatialAnchorsStorageML, "xrCreateSpatialAnchorsStorageML")
    set_proc_address(&CreateSpatialAnchorStoreConnectionMSFT, "xrCreateSpatialAnchorStoreConnectionMSFT")
    set_proc_address(&CreateSpatialAnchorFromPersistedNameMSFT, "xrCreateSpatialAnchorFromPersistedNameMSFT")
    set_proc_address(&QuerySpacesFB, "xrQuerySpacesFB")
    set_proc_address(&RetrieveSpaceQueryResultsFB, "xrRetrieveSpaceQueryResultsFB")
    set_proc_address(&SaveSpaceFB, "xrSaveSpaceFB")
    set_proc_address(&EraseSpaceFB, "xrEraseSpaceFB")
    set_proc_address(&ShareSpacesFB, "xrShareSpacesFB")
    set_proc_address(&GetSpaceBoundingBox2DFB, "xrGetSpaceBoundingBox2DFB")
    set_proc_address(&GetSpaceBoundingBox3DFB, "xrGetSpaceBoundingBox3DFB")
    set_proc_address(&GetSpaceSemanticLabelsFB, "xrGetSpaceSemanticLabelsFB")
    set_proc_address(&GetSpaceBoundary2DFB, "xrGetSpaceBoundary2DFB")
    set_proc_address(&GetSpaceRoomLayoutFB, "xrGetSpaceRoomLayoutFB")
    set_proc_address(&SetDigitalLensControlALMALENCE, "xrSetDigitalLensControlALMALENCE")
    set_proc_address(&RequestSceneCaptureFB, "xrRequestSceneCaptureFB")
    set_proc_address(&GetSpaceContainerFB, "xrGetSpaceContainerFB")
    set_proc_address(&GetFoveationEyeTrackedStateMETA, "xrGetFoveationEyeTrackedStateMETA")
    set_proc_address(&CreateFaceTrackerFB, "xrCreateFaceTrackerFB")
    set_proc_address(&CreateEyeTrackerFB, "xrCreateEyeTrackerFB")
    set_proc_address(&GetDeviceSampleRateFB, "xrGetDeviceSampleRateFB")
    set_proc_address(&GetPassthroughPreferencesMETA, "xrGetPassthroughPreferencesMETA")
    set_proc_address(&CreateVirtualKeyboardMETA, "xrCreateVirtualKeyboardMETA")
    set_proc_address(&CreateVirtualKeyboardSpaceMETA, "xrCreateVirtualKeyboardSpaceMETA")
    set_proc_address(&EnumerateExternalCamerasOCULUS, "xrEnumerateExternalCamerasOCULUS")
    set_proc_address(&SetPerformanceMetricsStateMETA, "xrSetPerformanceMetricsStateMETA")
    set_proc_address(&GetPerformanceMetricsStateMETA, "xrGetPerformanceMetricsStateMETA")
    set_proc_address(&QueryPerformanceMetricsCounterMETA, "xrQueryPerformanceMetricsCounterMETA")
    set_proc_address(&SaveSpaceListFB, "xrSaveSpaceListFB")
    set_proc_address(&CreateSpaceUserFB, "xrCreateSpaceUserFB")
    set_proc_address(&GetRecommendedLayerResolutionMETA, "xrGetRecommendedLayerResolutionMETA")
    set_proc_address(&SaveSpacesMETA, "xrSaveSpacesMETA")
    set_proc_address(&EraseSpacesMETA, "xrEraseSpacesMETA")
    set_proc_address(&CreateFaceTracker2FB, "xrCreateFaceTracker2FB")
    set_proc_address(&ShareSpacesMETA, "xrShareSpacesMETA")
    set_proc_address(&CreateEnvironmentDepthProviderMETA, "xrCreateEnvironmentDepthProviderMETA")
    set_proc_address(&CreateRenderModelEXT, "xrCreateRenderModelEXT")
    set_proc_address(&CreateRenderModelSpaceEXT, "xrCreateRenderModelSpaceEXT")
    set_proc_address(&CreateRenderModelAssetEXT, "xrCreateRenderModelAssetEXT")
    set_proc_address(&EnumerateInteractionRenderModelIdsEXT, "xrEnumerateInteractionRenderModelIdsEXT")
    set_proc_address(&SetTrackingOptimizationSettingsHintQCOM, "xrSetTrackingOptimizationSettingsHintQCOM")
    set_proc_address(&CreatePassthroughHTC, "xrCreatePassthroughHTC")
    set_proc_address(&ApplyFoveationHTC, "xrApplyFoveationHTC")
    set_proc_address(&CreateSpatialAnchorHTC, "xrCreateSpatialAnchorHTC")
    set_proc_address(&CreateBodyTrackerHTC, "xrCreateBodyTrackerHTC")
    set_proc_address(&CreateBodyTrackerBD, "xrCreateBodyTrackerBD")
    set_proc_address(&CreateSenseDataProviderBD, "xrCreateSenseDataProviderBD")
    set_proc_address(&StartSenseDataProviderCompleteBD, "xrStartSenseDataProviderCompleteBD")
    set_proc_address(&CreateAnchorSpaceBD, "xrCreateAnchorSpaceBD")
    set_proc_address(&CreatePlaneDetectorEXT, "xrCreatePlaneDetectorEXT")
    set_proc_address(&CreateTrackableTrackerANDROID, "xrCreateTrackableTrackerANDROID")
    set_proc_address(&CreateAnchorSpaceANDROID, "xrCreateAnchorSpaceANDROID")
    set_proc_address(&CreateDeviceAnchorPersistenceANDROID, "xrCreateDeviceAnchorPersistenceANDROID")
    set_proc_address(&GetPassthroughCameraStateANDROID, "xrGetPassthroughCameraStateANDROID")
    set_proc_address(&RaycastANDROID, "xrRaycastANDROID")
    set_proc_address(&CreateWorldMeshDetectorML, "xrCreateWorldMeshDetectorML")
    set_proc_address(&CreateFacialExpressionClientML, "xrCreateFacialExpressionClientML")
    set_proc_address(&ResumeSimultaneousHandsAndControllersTrackingMETA, "xrResumeSimultaneousHandsAndControllersTrackingMETA")
    set_proc_address(&PauseSimultaneousHandsAndControllersTrackingMETA, "xrPauseSimultaneousHandsAndControllersTrackingMETA")
    set_proc_address(&StartColocationDiscoveryMETA, "xrStartColocationDiscoveryMETA")
    set_proc_address(&StopColocationDiscoveryMETA, "xrStopColocationDiscoveryMETA")
    set_proc_address(&StartColocationAdvertisementMETA, "xrStartColocationAdvertisementMETA")
    set_proc_address(&StopColocationAdvertisementMETA, "xrStopColocationAdvertisementMETA")
    set_proc_address(&CreateSpatialContextAsyncEXT, "xrCreateSpatialContextAsyncEXT")
    set_proc_address(&CreateSpatialContextCompleteEXT, "xrCreateSpatialContextCompleteEXT")
    set_proc_address(&CreateSpatialPersistenceContextAsyncEXT, "xrCreateSpatialPersistenceContextAsyncEXT")
    set_proc_address(&CreateSpatialPersistenceContextCompleteEXT, "xrCreateSpatialPersistenceContextCompleteEXT")
    set_proc_address(&SetAndroidApplicationThreadKHR, "xrSetAndroidApplicationThreadKHR")
    set_proc_address(&CreateSwapchainAndroidSurfaceKHR, "xrCreateSwapchainAndroidSurfaceKHR")

    // Other procedures
    set_proc_address(&LocateSpace, "xrLocateSpace")
    set_proc_address(&DestroySpace, "xrDestroySpace")
    set_proc_address(&DestroySwapchain, "xrDestroySwapchain")
    set_proc_address(&EnumerateSwapchainImages, "xrEnumerateSwapchainImages")
    set_proc_address(&AcquireSwapchainImage, "xrAcquireSwapchainImage")
    set_proc_address(&WaitSwapchainImage, "xrWaitSwapchainImage")
    set_proc_address(&ReleaseSwapchainImage, "xrReleaseSwapchainImage")
    set_proc_address(&DestroyActionSet, "xrDestroyActionSet")
    set_proc_address(&CreateAction, "xrCreateAction")
    set_proc_address(&DestroyAction, "xrDestroyAction")
    set_proc_address(&InitializeLoaderKHR, "xrInitializeLoaderKHR")
    set_proc_address(&DebugUtilsMessengerCallbackEXT, "xrDebugUtilsMessengerCallbackEXT")
    set_proc_address(&DestroyDebugUtilsMessengerEXT, "xrDestroyDebugUtilsMessengerEXT")
    set_proc_address(&DestroySpatialAnchorMSFT, "xrDestroySpatialAnchorMSFT")
    set_proc_address(&DestroySpatialGraphNodeBindingMSFT, "xrDestroySpatialGraphNodeBindingMSFT")
    set_proc_address(&GetSpatialGraphNodeBindingPropertiesMSFT, "xrGetSpatialGraphNodeBindingPropertiesMSFT")
    set_proc_address(&DestroyHandTrackerEXT, "xrDestroyHandTrackerEXT")
    set_proc_address(&LocateHandJointsEXT, "xrLocateHandJointsEXT")
    set_proc_address(&CreateHandMeshSpaceMSFT, "xrCreateHandMeshSpaceMSFT")
    set_proc_address(&UpdateHandMeshMSFT, "xrUpdateHandMeshMSFT")
    set_proc_address(&UpdateSwapchainFB, "xrUpdateSwapchainFB")
    set_proc_address(&GetSwapchainStateFB, "xrGetSwapchainStateFB")
    set_proc_address(&DestroyBodyTrackerFB, "xrDestroyBodyTrackerFB")
    set_proc_address(&LocateBodyJointsFB, "xrLocateBodyJointsFB")
    set_proc_address(&GetBodySkeletonFB, "xrGetBodySkeletonFB")
    set_proc_address(&DestroySceneObserverMSFT, "xrDestroySceneObserverMSFT")
    set_proc_address(&CreateSceneMSFT, "xrCreateSceneMSFT")
    set_proc_address(&DestroySceneMSFT, "xrDestroySceneMSFT")
    set_proc_address(&ComputeNewSceneMSFT, "xrComputeNewSceneMSFT")
    set_proc_address(&GetSceneComputeStateMSFT, "xrGetSceneComputeStateMSFT")
    set_proc_address(&GetSceneComponentsMSFT, "xrGetSceneComponentsMSFT")
    set_proc_address(&LocateSceneComponentsMSFT, "xrLocateSceneComponentsMSFT")
    set_proc_address(&GetSceneMeshBuffersMSFT, "xrGetSceneMeshBuffersMSFT")
    set_proc_address(&DeserializeSceneMSFT, "xrDeserializeSceneMSFT")
    set_proc_address(&GetSerializedSceneFragmentDataMSFT, "xrGetSerializedSceneFragmentDataMSFT")
    set_proc_address(&DestroyFacialTrackerHTC, "xrDestroyFacialTrackerHTC")
    set_proc_address(&GetFacialExpressionsHTC, "xrGetFacialExpressionsHTC")
    set_proc_address(&GetHandMeshFB, "xrGetHandMeshFB")
    set_proc_address(&GetSpaceUuidFB, "xrGetSpaceUuidFB")
    set_proc_address(&EnumerateSpaceSupportedComponentsFB, "xrEnumerateSpaceSupportedComponentsFB")
    set_proc_address(&SetSpaceComponentStatusFB, "xrSetSpaceComponentStatusFB")
    set_proc_address(&GetSpaceComponentStatusFB, "xrGetSpaceComponentStatusFB")
    set_proc_address(&DestroyFoveationProfileFB, "xrDestroyFoveationProfileFB")
    set_proc_address(&DestroyTriangleMeshFB, "xrDestroyTriangleMeshFB")
    set_proc_address(&TriangleMeshGetVertexBufferFB, "xrTriangleMeshGetVertexBufferFB")
    set_proc_address(&TriangleMeshGetIndexBufferFB, "xrTriangleMeshGetIndexBufferFB")
    set_proc_address(&TriangleMeshBeginUpdateFB, "xrTriangleMeshBeginUpdateFB")
    set_proc_address(&TriangleMeshEndUpdateFB, "xrTriangleMeshEndUpdateFB")
    set_proc_address(&TriangleMeshBeginVertexBufferUpdateFB, "xrTriangleMeshBeginVertexBufferUpdateFB")
    set_proc_address(&TriangleMeshEndVertexBufferUpdateFB, "xrTriangleMeshEndVertexBufferUpdateFB")
    set_proc_address(&DestroyPassthroughFB, "xrDestroyPassthroughFB")
    set_proc_address(&PassthroughStartFB, "xrPassthroughStartFB")
    set_proc_address(&PassthroughPauseFB, "xrPassthroughPauseFB")
    set_proc_address(&DestroyPassthroughLayerFB, "xrDestroyPassthroughLayerFB")
    set_proc_address(&PassthroughLayerPauseFB, "xrPassthroughLayerPauseFB")
    set_proc_address(&PassthroughLayerResumeFB, "xrPassthroughLayerResumeFB")
    set_proc_address(&PassthroughLayerSetStyleFB, "xrPassthroughLayerSetStyleFB")
    set_proc_address(&DestroyGeometryInstanceFB, "xrDestroyGeometryInstanceFB")
    set_proc_address(&GeometryInstanceSetTransformFB, "xrGeometryInstanceSetTransformFB")
    set_proc_address(&DestroyMarkerDetectorML, "xrDestroyMarkerDetectorML")
    set_proc_address(&SnapshotMarkerDetectorML, "xrSnapshotMarkerDetectorML")
    set_proc_address(&GetMarkerDetectorStateML, "xrGetMarkerDetectorStateML")
    set_proc_address(&GetMarkersML, "xrGetMarkersML")
    set_proc_address(&GetMarkerReprojectionErrorML, "xrGetMarkerReprojectionErrorML")
    set_proc_address(&GetMarkerLengthML, "xrGetMarkerLengthML")
    set_proc_address(&GetMarkerNumberML, "xrGetMarkerNumberML")
    set_proc_address(&GetMarkerStringML, "xrGetMarkerStringML")
    set_proc_address(&DestroyExportedLocalizationMapML, "xrDestroyExportedLocalizationMapML")
    set_proc_address(&GetExportedLocalizationMapDataML, "xrGetExportedLocalizationMapDataML")
    set_proc_address(&GetSpatialAnchorStateML, "xrGetSpatialAnchorStateML")
    set_proc_address(&DestroySpatialAnchorsStorageML, "xrDestroySpatialAnchorsStorageML")
    set_proc_address(&QuerySpatialAnchorsAsyncML, "xrQuerySpatialAnchorsAsyncML")
    set_proc_address(&QuerySpatialAnchorsCompleteML, "xrQuerySpatialAnchorsCompleteML")
    set_proc_address(&PublishSpatialAnchorsAsyncML, "xrPublishSpatialAnchorsAsyncML")
    set_proc_address(&PublishSpatialAnchorsCompleteML, "xrPublishSpatialAnchorsCompleteML")
    set_proc_address(&DeleteSpatialAnchorsAsyncML, "xrDeleteSpatialAnchorsAsyncML")
    set_proc_address(&DeleteSpatialAnchorsCompleteML, "xrDeleteSpatialAnchorsCompleteML")
    set_proc_address(&UpdateSpatialAnchorsExpirationAsyncML, "xrUpdateSpatialAnchorsExpirationAsyncML")
    set_proc_address(&UpdateSpatialAnchorsExpirationCompleteML, "xrUpdateSpatialAnchorsExpirationCompleteML")
    set_proc_address(&DestroySpatialAnchorStoreConnectionMSFT, "xrDestroySpatialAnchorStoreConnectionMSFT")
    set_proc_address(&PersistSpatialAnchorMSFT, "xrPersistSpatialAnchorMSFT")
    set_proc_address(&EnumeratePersistedSpatialAnchorNamesMSFT, "xrEnumeratePersistedSpatialAnchorNamesMSFT")
    set_proc_address(&UnpersistSpatialAnchorMSFT, "xrUnpersistSpatialAnchorMSFT")
    set_proc_address(&ClearSpatialAnchorStoreMSFT, "xrClearSpatialAnchorStoreMSFT")
    set_proc_address(&GetSceneMarkerRawDataMSFT, "xrGetSceneMarkerRawDataMSFT")
    set_proc_address(&GetSceneMarkerDecodedStringMSFT, "xrGetSceneMarkerDecodedStringMSFT")
    set_proc_address(&DestroyFaceTrackerFB, "xrDestroyFaceTrackerFB")
    set_proc_address(&GetFaceExpressionWeightsFB, "xrGetFaceExpressionWeightsFB")
    set_proc_address(&DestroyEyeTrackerFB, "xrDestroyEyeTrackerFB")
    set_proc_address(&GetEyeGazesFB, "xrGetEyeGazesFB")
    set_proc_address(&PassthroughLayerSetKeyboardHandsIntensityFB, "xrPassthroughLayerSetKeyboardHandsIntensityFB")
    set_proc_address(&DestroyVirtualKeyboardMETA, "xrDestroyVirtualKeyboardMETA")
    set_proc_address(&SuggestVirtualKeyboardLocationMETA, "xrSuggestVirtualKeyboardLocationMETA")
    set_proc_address(&GetVirtualKeyboardScaleMETA, "xrGetVirtualKeyboardScaleMETA")
    set_proc_address(&SetVirtualKeyboardModelVisibilityMETA, "xrSetVirtualKeyboardModelVisibilityMETA")
    set_proc_address(&GetVirtualKeyboardModelAnimationStatesMETA, "xrGetVirtualKeyboardModelAnimationStatesMETA")
    set_proc_address(&GetVirtualKeyboardDirtyTexturesMETA, "xrGetVirtualKeyboardDirtyTexturesMETA")
    set_proc_address(&GetVirtualKeyboardTextureDataMETA, "xrGetVirtualKeyboardTextureDataMETA")
    set_proc_address(&SendVirtualKeyboardInputMETA, "xrSendVirtualKeyboardInputMETA")
    set_proc_address(&ChangeVirtualKeyboardTextContextMETA, "xrChangeVirtualKeyboardTextContextMETA")
    set_proc_address(&GetSpaceUserIdFB, "xrGetSpaceUserIdFB")
    set_proc_address(&DestroySpaceUserFB, "xrDestroySpaceUserFB")
    set_proc_address(&CreatePassthroughColorLutMETA, "xrCreatePassthroughColorLutMETA")
    set_proc_address(&DestroyPassthroughColorLutMETA, "xrDestroyPassthroughColorLutMETA")
    set_proc_address(&UpdatePassthroughColorLutMETA, "xrUpdatePassthroughColorLutMETA")
    set_proc_address(&GetSpaceTriangleMeshMETA, "xrGetSpaceTriangleMeshMETA")
    set_proc_address(&SuggestBodyTrackingCalibrationOverrideMETA, "xrSuggestBodyTrackingCalibrationOverrideMETA")
    set_proc_address(&ResetBodyTrackingCalibrationMETA, "xrResetBodyTrackingCalibrationMETA")
    set_proc_address(&DestroyFaceTracker2FB, "xrDestroyFaceTracker2FB")
    set_proc_address(&GetFaceExpressionWeights2FB, "xrGetFaceExpressionWeights2FB")
    set_proc_address(&DestroyEnvironmentDepthProviderMETA, "xrDestroyEnvironmentDepthProviderMETA")
    set_proc_address(&StartEnvironmentDepthProviderMETA, "xrStartEnvironmentDepthProviderMETA")
    set_proc_address(&StopEnvironmentDepthProviderMETA, "xrStopEnvironmentDepthProviderMETA")
    set_proc_address(&CreateEnvironmentDepthSwapchainMETA, "xrCreateEnvironmentDepthSwapchainMETA")
    set_proc_address(&DestroyEnvironmentDepthSwapchainMETA, "xrDestroyEnvironmentDepthSwapchainMETA")
    set_proc_address(&EnumerateEnvironmentDepthSwapchainImagesMETA, "xrEnumerateEnvironmentDepthSwapchainImagesMETA")
    set_proc_address(&GetEnvironmentDepthSwapchainStateMETA, "xrGetEnvironmentDepthSwapchainStateMETA")
    set_proc_address(&AcquireEnvironmentDepthImageMETA, "xrAcquireEnvironmentDepthImageMETA")
    set_proc_address(&SetEnvironmentDepthHandRemovalMETA, "xrSetEnvironmentDepthHandRemovalMETA")
    set_proc_address(&DestroyRenderModelEXT, "xrDestroyRenderModelEXT")
    set_proc_address(&GetRenderModelPropertiesEXT, "xrGetRenderModelPropertiesEXT")
    set_proc_address(&DestroyRenderModelAssetEXT, "xrDestroyRenderModelAssetEXT")
    set_proc_address(&GetRenderModelAssetDataEXT, "xrGetRenderModelAssetDataEXT")
    set_proc_address(&GetRenderModelAssetPropertiesEXT, "xrGetRenderModelAssetPropertiesEXT")
    set_proc_address(&GetRenderModelStateEXT, "xrGetRenderModelStateEXT")
    set_proc_address(&EnumerateRenderModelSubactionPathsEXT, "xrEnumerateRenderModelSubactionPathsEXT")
    set_proc_address(&GetRenderModelPoseTopLevelUserPathEXT, "xrGetRenderModelPoseTopLevelUserPathEXT")
    set_proc_address(&DestroyPassthroughHTC, "xrDestroyPassthroughHTC")
    set_proc_address(&GetSpatialAnchorNameHTC, "xrGetSpatialAnchorNameHTC")
    set_proc_address(&DestroyBodyTrackerHTC, "xrDestroyBodyTrackerHTC")
    set_proc_address(&LocateBodyJointsHTC, "xrLocateBodyJointsHTC")
    set_proc_address(&GetBodySkeletonHTC, "xrGetBodySkeletonHTC")
    set_proc_address(&ApplyForceFeedbackCurlMNDX, "xrApplyForceFeedbackCurlMNDX")
    set_proc_address(&DestroyBodyTrackerBD, "xrDestroyBodyTrackerBD")
    set_proc_address(&LocateBodyJointsBD, "xrLocateBodyJointsBD")
    set_proc_address(&EnumerateSpatialEntityComponentTypesBD, "xrEnumerateSpatialEntityComponentTypesBD")
    set_proc_address(&GetSpatialEntityUuidBD, "xrGetSpatialEntityUuidBD")
    set_proc_address(&GetSpatialEntityComponentDataBD, "xrGetSpatialEntityComponentDataBD")
    set_proc_address(&StartSenseDataProviderAsyncBD, "xrStartSenseDataProviderAsyncBD")
    set_proc_address(&GetSenseDataProviderStateBD, "xrGetSenseDataProviderStateBD")
    set_proc_address(&QuerySenseDataAsyncBD, "xrQuerySenseDataAsyncBD")
    set_proc_address(&QuerySenseDataCompleteBD, "xrQuerySenseDataCompleteBD")
    set_proc_address(&DestroySenseDataSnapshotBD, "xrDestroySenseDataSnapshotBD")
    set_proc_address(&GetQueriedSenseDataBD, "xrGetQueriedSenseDataBD")
    set_proc_address(&StopSenseDataProviderBD, "xrStopSenseDataProviderBD")
    set_proc_address(&DestroySenseDataProviderBD, "xrDestroySenseDataProviderBD")
    set_proc_address(&CreateSpatialEntityAnchorBD, "xrCreateSpatialEntityAnchorBD")
    set_proc_address(&DestroyAnchorBD, "xrDestroyAnchorBD")
    set_proc_address(&GetAnchorUuidBD, "xrGetAnchorUuidBD")
    set_proc_address(&CreateSpatialAnchorAsyncBD, "xrCreateSpatialAnchorAsyncBD")
    set_proc_address(&CreateSpatialAnchorCompleteBD, "xrCreateSpatialAnchorCompleteBD")
    set_proc_address(&PersistSpatialAnchorAsyncBD, "xrPersistSpatialAnchorAsyncBD")
    set_proc_address(&PersistSpatialAnchorCompleteBD, "xrPersistSpatialAnchorCompleteBD")
    set_proc_address(&UnpersistSpatialAnchorAsyncBD, "xrUnpersistSpatialAnchorAsyncBD")
    set_proc_address(&UnpersistSpatialAnchorCompleteBD, "xrUnpersistSpatialAnchorCompleteBD")
    set_proc_address(&ShareSpatialAnchorAsyncBD, "xrShareSpatialAnchorAsyncBD")
    set_proc_address(&ShareSpatialAnchorCompleteBD, "xrShareSpatialAnchorCompleteBD")
    set_proc_address(&DownloadSharedSpatialAnchorAsyncBD, "xrDownloadSharedSpatialAnchorAsyncBD")
    set_proc_address(&DownloadSharedSpatialAnchorCompleteBD, "xrDownloadSharedSpatialAnchorCompleteBD")
    set_proc_address(&CaptureSceneAsyncBD, "xrCaptureSceneAsyncBD")
    set_proc_address(&CaptureSceneCompleteBD, "xrCaptureSceneCompleteBD")
    set_proc_address(&DestroyPlaneDetectorEXT, "xrDestroyPlaneDetectorEXT")
    set_proc_address(&BeginPlaneDetectionEXT, "xrBeginPlaneDetectionEXT")
    set_proc_address(&GetPlaneDetectionStateEXT, "xrGetPlaneDetectionStateEXT")
    set_proc_address(&GetPlaneDetectionsEXT, "xrGetPlaneDetectionsEXT")
    set_proc_address(&GetPlanePolygonBufferEXT, "xrGetPlanePolygonBufferEXT")
    set_proc_address(&DestroyTrackableTrackerANDROID, "xrDestroyTrackableTrackerANDROID")
    set_proc_address(&GetAllTrackablesANDROID, "xrGetAllTrackablesANDROID")
    set_proc_address(&GetTrackablePlaneANDROID, "xrGetTrackablePlaneANDROID")
    set_proc_address(&DestroyDeviceAnchorPersistenceANDROID, "xrDestroyDeviceAnchorPersistenceANDROID")
    set_proc_address(&PersistAnchorANDROID, "xrPersistAnchorANDROID")
    set_proc_address(&GetAnchorPersistStateANDROID, "xrGetAnchorPersistStateANDROID")
    set_proc_address(&CreatePersistedAnchorSpaceANDROID, "xrCreatePersistedAnchorSpaceANDROID")
    set_proc_address(&EnumeratePersistedAnchorsANDROID, "xrEnumeratePersistedAnchorsANDROID")
    set_proc_address(&UnpersistAnchorANDROID, "xrUnpersistAnchorANDROID")
    set_proc_address(&GetTrackableObjectANDROID, "xrGetTrackableObjectANDROID")
    set_proc_address(&DestroyWorldMeshDetectorML, "xrDestroyWorldMeshDetectorML")
    set_proc_address(&RequestWorldMeshStateAsyncML, "xrRequestWorldMeshStateAsyncML")
    set_proc_address(&RequestWorldMeshStateCompleteML, "xrRequestWorldMeshStateCompleteML")
    set_proc_address(&GetWorldMeshBufferRecommendSizeML, "xrGetWorldMeshBufferRecommendSizeML")
    set_proc_address(&AllocateWorldMeshBufferML, "xrAllocateWorldMeshBufferML")
    set_proc_address(&FreeWorldMeshBufferML, "xrFreeWorldMeshBufferML")
    set_proc_address(&RequestWorldMeshAsyncML, "xrRequestWorldMeshAsyncML")
    set_proc_address(&RequestWorldMeshCompleteML, "xrRequestWorldMeshCompleteML")
    set_proc_address(&DestroyFacialExpressionClientML, "xrDestroyFacialExpressionClientML")
    set_proc_address(&GetFacialExpressionBlendShapePropertiesML, "xrGetFacialExpressionBlendShapePropertiesML")
    set_proc_address(&GetTrackableMarkerANDROID, "xrGetTrackableMarkerANDROID")
    set_proc_address(&DestroySpatialContextEXT, "xrDestroySpatialContextEXT")
    set_proc_address(&CreateSpatialDiscoverySnapshotAsyncEXT, "xrCreateSpatialDiscoverySnapshotAsyncEXT")
    set_proc_address(&CreateSpatialDiscoverySnapshotCompleteEXT, "xrCreateSpatialDiscoverySnapshotCompleteEXT")
    set_proc_address(&QuerySpatialComponentDataEXT, "xrQuerySpatialComponentDataEXT")
    set_proc_address(&DestroySpatialSnapshotEXT, "xrDestroySpatialSnapshotEXT")
    set_proc_address(&CreateSpatialEntityFromIdEXT, "xrCreateSpatialEntityFromIdEXT")
    set_proc_address(&DestroySpatialEntityEXT, "xrDestroySpatialEntityEXT")
    set_proc_address(&CreateSpatialUpdateSnapshotEXT, "xrCreateSpatialUpdateSnapshotEXT")
    set_proc_address(&GetSpatialBufferStringEXT, "xrGetSpatialBufferStringEXT")
    set_proc_address(&GetSpatialBufferUint8EXT, "xrGetSpatialBufferUint8EXT")
    set_proc_address(&GetSpatialBufferUint16EXT, "xrGetSpatialBufferUint16EXT")
    set_proc_address(&GetSpatialBufferUint32EXT, "xrGetSpatialBufferUint32EXT")
    set_proc_address(&GetSpatialBufferFloatEXT, "xrGetSpatialBufferFloatEXT")
    set_proc_address(&GetSpatialBufferVector2fEXT, "xrGetSpatialBufferVector2fEXT")
    set_proc_address(&GetSpatialBufferVector3fEXT, "xrGetSpatialBufferVector3fEXT")
    set_proc_address(&CreateSpatialAnchorEXT, "xrCreateSpatialAnchorEXT")
    set_proc_address(&DestroySpatialPersistenceContextEXT, "xrDestroySpatialPersistenceContextEXT")
    set_proc_address(&PersistSpatialEntityAsyncEXT, "xrPersistSpatialEntityAsyncEXT")
    set_proc_address(&PersistSpatialEntityCompleteEXT, "xrPersistSpatialEntityCompleteEXT")
    set_proc_address(&UnpersistSpatialEntityAsyncEXT, "xrUnpersistSpatialEntityAsyncEXT")
    set_proc_address(&UnpersistSpatialEntityCompleteEXT, "xrUnpersistSpatialEntityCompleteEXT")
}

load_proc_addresses :: proc {
    load_proc_addresses_global,
    load_proc_addresses_instance,
    load_proc_addresses_custom,
}
