# swagger.model.CodeLotCSVValidationModel

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**missingHeaders** | **List&lt;String&gt;** |  | [optional] [default to []]
**emptyHeaders** | **List&lt;int&gt;** |  | [optional] [default to []]
**invalidHeaderURIs** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]
**datatypeErrors** | [**Map&lt;String, List&lt;CSVDatatypeError&gt;&gt;**](List.md) |  | [optional] [default to {}]
**uriNotFoundErrors** | [**Map&lt;String, List&lt;CSVURINotFoundError&gt;&gt;**](List.md) |  | [optional] [default to {}]
**invalidURIErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**missingRequiredValueErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**invalidValueErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**alreadyExistingURIErrors** | [**Map&lt;String, CSVCell&gt;**](CSVCell.md) |  | [optional] [default to {}]
**duplicateURIErrors** | [**Map&lt;String, CSVDuplicateURIError&gt;**](CSVDuplicateURIError.md) |  | [optional] [default to {}]
**noParentErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**boucleErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**linkedSibblingErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**shortCircuitErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**duplicatedDataErrors** | [**Map&lt;String, List&lt;CSVCell&gt;&gt;**](List.md) |  | [optional] [default to {}]
**headers** | **List&lt;String&gt;** |  | [optional] [default to []]
**headersLabels** | **List&lt;String&gt;** |  | [optional] [default to []]
**nbLinesImported** | **int** |  | [optional] [default to null]
**nbLinesToImport** | **int** |  | [optional] [default to null]
**validationStep** | **bool** |  | [optional] [default to null]
**tooLargeDataset** | **bool** |  | [optional] [default to null]
**insertionStep** | **bool** |  | [optional] [default to null]
**validCSV** | **bool** |  | [optional] [default to null]
**errorMessage** | **String** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


