# swagger.model.ScientificObjectUpdateDTO

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | Scientific object URI | [default to null]
**rdfType** | **String** | Scientific object type | [default to null]
**name** | **String** | Scientific object name | [default to null]
**experiment** | **String** | Scientific object experiment URI | [optional] [default to null]
**relations** | [**List&lt;RDFObjectRelationDTO&gt;**](RDFObjectRelationDTO.md) |  | [optional] [default to []]
**geometry** | [**GeoJsonObject**](GeoJsonObject.md) | The geographical coordinates of the Geospatial | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


