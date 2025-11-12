# Planning

## Ideas 
### Core AR Recognition Flow:
CaptureFrameUseCase - Get camera frame for analysis
RecognizeComponentUseCase - Identify component type from image (thermostat, VAV, etc.)
ExtractComponentMetadataUseCase - Pull details (model, capabilities, initial state)

### Digital Twin Graph Management:
AddComponentToGraphUseCase - Commission a component into the digital twin
GetGraphStateUseCase - Retrieve current graph structure
GetComponentDetailsUseCase - Get specific component's state/data
UpdateComponentStateUseCase - Modify component data (temp, status, etc.)
CreateRelationshipUseCase - Link components (thermostat controls VAV, etc.)

### Natural Language Query:
ParseNaturalLanguageQueryUseCase - Convert NL to graph query
ExecuteGraphQueryUseCase - Traverse graph, find matching components
FormatQueryResponseUseCase - Convert results back to natural language
Model Management (Phase 2 - Differentiable Swift):
TrainModelUseCase - Train/fine-tune on device
ValidateModelAccuracyUseCase - Check model performance
UpdateModelWeightsUseCase - Apply new weights after training

## Walking Skeleton MVP:
RecognizeComponentUseCase ✅ (core functionality)
AddComponentToGraphUseCase ✅ (save what we recognize)
GetGraphStateUseCase ✅ (display what we've found)
