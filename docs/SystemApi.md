# swagger.api.SystemApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersionInfo**](SystemApi.md#getVersionInfo) | **GET** /core/system/info | get system information


# **getVersionInfo**
> VersionInfoDTO getVersionInfo()

get system information



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SystemApi();

try { 
    var result = api_instance.getVersionInfo();
    print(result);
} catch (e) {
    print("Exception when calling SystemApi->getVersionInfo: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**VersionInfoDTO**](VersionInfoDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

