# swagger.model.CSVValidationModel

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**missingHeaders** | **List&lt;String&gt;** |  | [optional] [default to []]
**invalidHeaderURIs** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**datatypeErrors** | [**Map&lt;String, List&lt;CSVDatatypeError&gt;&gt;**](List.md) |  | [optional] [default to {}]
**uriNotFoundErrors** | [**Map&lt;String, List&lt;CSVURINotFoundError&gt;&gt;**](List.md) |  | [optional] [default to {}]
**invalidURIErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**missingRequiredValueErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**invalidValueErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**alreadyExistingURIErrors** | [**Map&lt;String, CSVCell&gt;**](CSVCell.md) |  | [optional] [default to {}]
**duplicateURIErrors** | [**Map&lt;String, CSVDuplicateURIError&gt;**](CSVDuplicateURIError.md) |  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


