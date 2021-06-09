# swagger.model.DeviceGetDetailsDTO

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** |  | [optional] [default to null]
**rdfType** | **String** | rdfType URI | [optional] [default to null]
**rdfTypeName** | **String** |  | [optional] [default to null]
**name** | **String** | Device name | [default to null]
**brand** | **String** | Device brand | [optional] [default to null]
**constructorModel** | **String** | Device model | [optional] [default to null]
**serialNumber** | **String** | Device serial number | [optional] [default to null]
**personInCharge** | **String** | Person in charge | [optional] [default to null]
**startUp** | [**DateTime**](DateTime.md) | Device date of start-up | [optional] [default to null]
**removal** | [**DateTime**](DateTime.md) | Device date of removal | [optional] [default to null]
**relations** | [**List&lt;RDFObjectRelationDTO&gt;**](RDFObjectRelationDTO.md) |  | [optional] [default to []]
**description** | **String** | comment | [optional] [default to null]
**metadata** | **Map&lt;String, String&gt;** |  | [optional] [default to {}]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


