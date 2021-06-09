# swagger.model.DataUpdateDTO

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | URI of the data being updated | [default to null]
**date** | **String** | date or datetime | [default to null]
**timezone** | **String** | to specify if the offset is not in the date and if the timezone is different from the default one | [optional] [default to null]
**scientificObjects** | **List&lt;String&gt;** | scientific objects URIs on which the data have been collected | [optional] [default to []]
**variable** | **String** | variable URI | [default to null]
**value** | [**Object**](Object.md) | can be decimal, integer, boolean, string or date | [default to null]
**confidence** | **double** | confidence index | [optional] [default to null]
**provenance** | [**DataProvenanceModel**](DataProvenanceModel.md) |  | [default to null]
**metadata** | [**Map&lt;String, Object&gt;**](Object.md) | key-value system to store additional information that can be used to query data | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


