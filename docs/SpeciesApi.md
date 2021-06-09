# swagger.api.SpeciesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllSpecies**](SpeciesApi.md#getAllSpecies) | **GET** /core/species | get species (no pagination)


# **getAllSpecies**
> List<SpeciesDTO> getAllSpecies(acceptLanguage)

get species (no pagination)



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SpeciesApi();
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getAllSpecies(acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SpeciesApi->getAllSpecies: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<SpeciesDTO>**](SpeciesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

