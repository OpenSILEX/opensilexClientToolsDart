# swagger.model.ScientificObjectDetailDTO

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** |  | [optional] [default to null]
**rdfType** | **String** | Scientific object type | [optional] [default to null]
**rdfTypeName** | **String** | Scientific object type | [optional] [default to null]
**name** | **String** |  | [optional] [default to null]
**parent** | **String** | Scientific object parent URI | [optional] [default to null]
**parentName** | **String** | Scientific object parent name | [optional] [default to null]
**factorLevel** | [**List&lt;NamedResourceDTOFactorLevelModel&gt;**](NamedResourceDTOFactorLevelModel.md) | Scientific object factor levels | [optional] [default to []]
**relations** | [**List&lt;RDFObjectRelationDTO&gt;**](RDFObjectRelationDTO.md) |  | [optional] [default to []]
**geometry** | [**GeoJsonObject**](GeoJsonObject.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


