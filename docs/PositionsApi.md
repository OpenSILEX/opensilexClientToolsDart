# swagger.api.PositionsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPosition**](PositionsApi.md#getPosition) | **GET** /core/positions/{uri} | Get the position of an object
[**searchPositionHistory**](PositionsApi.md#searchPositionHistory) | **GET** /core/positions/history | Search history of position of an object


# **getPosition**
> PositionGetDTO getPosition(uri, authorization, time, acceptLanguage)

Get the position of an object



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PositionsApi();
var uri = http://opensilex.dev/plant/plant5841; // String | Object URI
var authorization = authorization_example; // String | Authentication token
var time = 2019-09-08T12:00:00+01:00; // String | Time : match position at the given time
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getPosition(uri, authorization, time, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling PositionsApi->getPosition: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Object URI | 
 **authorization** | **String**| Authentication token | 
 **time** | **String**| Time : match position at the given time | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**PositionGetDTO**](PositionGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchPositionHistory**
> List<PositionGetDTO> searchPositionHistory(target, authorization, startDateTime, endDateTime, orderBy, page, pageSize, acceptLanguage)

Search history of position of an object



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new PositionsApi();
var target = http://www.opensilex.org/demo/2018/o18000076; // String | Target URI
var authorization = authorization_example; // String | Authentication token
var startDateTime = 2019-09-08T12:00:00+01:00; // String | Start date : match position affected after the given start date
var endDateTime = 2021-09-08T12:00:00+01:00; // String | End date : match position affected before the given end date
var orderBy = []; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 56; // int | Page number
var pageSize = 56; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchPositionHistory(target, authorization, startDateTime, endDateTime, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling PositionsApi->searchPositionHistory: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **target** | **String**| Target URI | 
 **authorization** | **String**| Authentication token | 
 **startDateTime** | **String**| Start date : match position affected after the given start date | [optional] 
 **endDateTime** | **String**| End date : match position affected before the given end date | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] 
 **pageSize** | **int**| Page size | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<PositionGetDTO>**](PositionGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

