# swagger.api.VueJsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getConfig**](VueJsApi.md#getConfig) | **GET** /vuejs/config | Return the current configuration
[**getExtension**](VueJsApi.md#getExtension) | **GET** /vuejs/extension/js/{module}.js | Return the front Vue JS extension file to include
[**getExtensionStyle**](VueJsApi.md#getExtensionStyle) | **GET** /vuejs/extension/css/{module}.css | Return the front Vue JS extension css file to include
[**getThemeConfig**](VueJsApi.md#getThemeConfig) | **GET** /vuejs/theme/{moduleId}/{themeId}/config | Return the front Vue JS theme configuration
[**getThemeCss**](VueJsApi.md#getThemeCss) | **GET** /vuejs/theme/{moduleId}/{themeId}/style.css | Return the theme css file
[**getThemeResource**](VueJsApi.md#getThemeResource) | **GET** /vuejs/theme/{moduleId}/{themeId}/resource | Return the theme requested resource


# **getConfig**
> FrontConfigDTO getConfig(acceptLanguage)

Return the current configuration



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsApi();
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getConfig(acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VueJsApi->getConfig: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**FrontConfigDTO**](FrontConfigDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExtension**
> MultipartFile getExtension(module)

Return the front Vue JS extension file to include



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsApi();
var module = "opensilex"; // String | Module identifier

try { 
    var result = api_instance.getExtension(module);
    print(result);
} catch (e) {
    print("Exception when calling VueJsApi->getExtension: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **module** | **String**| Module identifier | 

### Return type

[**MultipartFile**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExtensionStyle**
> MultipartFile getExtensionStyle(module)

Return the front Vue JS extension css file to include



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsApi();
var module = "opensilex"; // String | Module identifier

try { 
    var result = api_instance.getExtensionStyle(module);
    print(result);
} catch (e) {
    print("Exception when calling VueJsApi->getExtensionStyle: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **module** | **String**| Module identifier | 

### Return type

[**MultipartFile**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThemeConfig**
> ThemeConfigDTO getThemeConfig(moduleId, themeId)

Return the front Vue JS theme configuration



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsApi();
var moduleId = "opensilex-front"; // String | Module identifier
var themeId = "phis"; // String | Theme identifier

try { 
    var result = api_instance.getThemeConfig(moduleId, themeId);
    print(result);
} catch (e) {
    print("Exception when calling VueJsApi->getThemeConfig: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moduleId** | **String**| Module identifier | 
 **themeId** | **String**| Theme identifier | 

### Return type

[**ThemeConfigDTO**](ThemeConfigDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThemeCss**
> MultipartFile getThemeCss(moduleId, themeId)

Return the theme css file



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsApi();
var moduleId = "opensilex-front"; // String | Module identifier
var themeId = "phis"; // String | Theme identifier

try { 
    var result = api_instance.getThemeCss(moduleId, themeId);
    print(result);
} catch (e) {
    print("Exception when calling VueJsApi->getThemeCss: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moduleId** | **String**| Module identifier | 
 **themeId** | **String**| Theme identifier | 

### Return type

[**MultipartFile**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThemeResource**
> MultipartFile getThemeResource(moduleId, themeId, filePath)

Return the theme requested resource



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsApi();
var moduleId = "opensilex-front"; // String | Module identifier
var themeId = "phis"; // String | Theme identifier
var filePath = "images/opensilex.png"; // String | Resource path

try { 
    var result = api_instance.getThemeResource(moduleId, themeId, filePath);
    print(result);
} catch (e) {
    print("Exception when calling VueJsApi->getThemeResource: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **moduleId** | **String**| Module identifier | 
 **themeId** | **String**| Theme identifier | 
 **filePath** | **String**| Resource path | [optional] 

### Return type

[**MultipartFile**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

