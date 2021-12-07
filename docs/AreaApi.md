# swagger.api.AreaApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createArea**](AreaApi.md#createArea) | **POST** /core/area | Add an area
[**deleteArea**](AreaApi.md#deleteArea) | **DELETE** /core/area/{uri} | Delete an area
[**getByURI**](AreaApi.md#getByURI) | **GET** /core/area/{uri} | Get an area
[**searchIntersects**](AreaApi.md#searchIntersects) | **POST** /core/area/intersects | Get area whose geometry corresponds to the Intersections
[**updateArea**](AreaApi.md#updateArea) | **PUT** /core/area | Update an area


# **createArea**
> ObjectUriResponse createArea(authorization, body, acceptLanguage)

Add an area



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AreaApi();
var authorization = authorization_example; // String | Authentication token
var body = new AreaCreationDTO(); // AreaCreationDTO | Area description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createArea(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AreaApi->createArea: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**AreaCreationDTO**](AreaCreationDTO.md)| Area description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteArea**
> ObjectUriResponse deleteArea(uri, authorization, acceptLanguage)

Delete an area



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AreaApi();
var uri = uri_example; // String | Area URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteArea(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AreaApi->deleteArea: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Area URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getByURI**
> AreaGetDTO getByURI(uri, authorization, acceptLanguage)

Get an area



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AreaApi();
var uri = uri_example; // String | area URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getByURI(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AreaApi->getByURI: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| area URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**AreaGetDTO**](AreaGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchIntersects**
> List<AreaGetDTO> searchIntersects(body, authorization, start, end, acceptLanguage)

Get area whose geometry corresponds to the Intersections



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AreaApi();
var body = new GeoJsonObject(); // GeoJsonObject | geometry GeoJSON
var authorization = authorization_example; // String | Authentication token
var start = "2019-09-08T12:00:00+01:00"; // String | Start date : match temporal area after the given start date
var end = "2021-09-08T12:00:00+01:00"; // String | End date : match temporal area before the given end date
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchIntersects(body, authorization, start, end, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AreaApi->searchIntersects: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**GeoJsonObject**](GeoJsonObject.md)| geometry GeoJSON | 
 **authorization** | **String**| Authentication token | 
 **start** | **String**| Start date : match temporal area after the given start date | [optional] 
 **end** | **String**| End date : match temporal area before the given end date | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<AreaGetDTO>**](AreaGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateArea**
> ObjectUriResponse updateArea(body, authorization, acceptLanguage)

Update an area



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AreaApi();
var body = new AreaUpdateDTO(); // AreaUpdateDTO | Area description
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateArea(body, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AreaApi->updateArea: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AreaUpdateDTO**](AreaUpdateDTO.md)| Area description | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

