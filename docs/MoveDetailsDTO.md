# swagger.model.MoveDetailsDTO

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | Event URI | [optional] [default to null]
**rdfType** | **String** | Event type URI | [optional] [default to null]
**rdfTypeName** | **String** | Event type name | [optional] [default to null]
**start** | **String** | Beginning of the event | [optional] [default to null]
**end** | **String** | End of the event | [optional] [default to null]
**isInstant** | **bool** | Indicate if the event is instant | [optional] [default to null]
**description** | **String** | Description of the move | [optional] [default to null]
**targets** | **List&lt;String&gt;** | URI(s) of items concerned by this event | [optional] [default to []]
**author** | **String** | Event creator URI | [optional] [default to null]
**relations** | [**List&lt;RDFObjectRelationDTO&gt;**](RDFObjectRelationDTO.md) |  | [optional] [default to []]
**from** | [**InfrastructureFacilityNamedDTO**](InfrastructureFacilityNamedDTO.md) |  | [optional] [default to null]
**to** | [**InfrastructureFacilityNamedDTO**](InfrastructureFacilityNamedDTO.md) |  | [optional] [default to null]
**targetsPositions** | [**List&lt;ConcernedItemPositionGetDTO&gt;**](ConcernedItemPositionGetDTO.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


