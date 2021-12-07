# swagger.model.DataProvenanceModel

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | provenance uri | [default to null]
**provUsed** | [**List&lt;ProvEntityModel&gt;**](ProvEntityModel.md) | list of inputs of the process described in the provenance | [optional] [default to []]
**provWasAssociatedWith** | [**List&lt;ProvEntityModel&gt;**](ProvEntityModel.md) | allow an activity to be linked to an agent | [optional] [default to []]
**settings** | [**Map&lt;String, Object&gt;**](Object.md) | a key-value system to store specific information | [optional] [default to {}]
**experiments** | **List&lt;String&gt;** | experiments uris on which the data has been produced | [optional] [default to []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


