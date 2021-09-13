# swagger.model.MoveCreationDTO

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** |  | [optional] [default to null]
**rdfType** | **String** | Event type URI | [optional] [default to null]
**start** | **String** |  | [optional] [default to null]
**end** | **String** |  | [optional] [default to null]
**isInstant** | **bool** | Indicate if the event is instant | [default to null]
**description** | **String** |  | [optional] [default to null]
**targets** | **List&lt;String&gt;** | URI(s) of items concerned by this event | [default to []]
**relations** | [**List&lt;RDFObjectRelationDTO&gt;**](RDFObjectRelationDTO.md) |  | [optional] [default to []]
**from** | **String** |  | [optional] [default to null]
**to** | **String** |  | [optional] [default to null]
**targetsPositions** | [**List&lt;TargetPositionCreationDTO&gt;**](TargetPositionCreationDTO.md) |  | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


