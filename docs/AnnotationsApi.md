# swagger.api.AnnotationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countAnnotations**](AnnotationsApi.md#countAnnotations) | **GET** /core/annotations/count | Count annotations
[**createAnnotation**](AnnotationsApi.md#createAnnotation) | **POST** /core/annotations | Create an annotation
[**deleteAnnotation**](AnnotationsApi.md#deleteAnnotation) | **DELETE** /core/annotations/{uri} | Delete an annotation
[**getAnnotation**](AnnotationsApi.md#getAnnotation) | **GET** /core/annotations/{uri} | Get an annotation
[**searchAnnotations**](AnnotationsApi.md#searchAnnotations) | **GET** /core/annotations | Search annotations
[**searchMotivations**](AnnotationsApi.md#searchMotivations) | **GET** /core/annotations/motivations | Search motivations
[**updateAnnotation**](AnnotationsApi.md#updateAnnotation) | **PUT** /core/annotations | Update an annotation


# **countAnnotations**
> int countAnnotations(authorization, target, acceptLanguage)

Count annotations



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AnnotationsApi();
var authorization = authorization_example; // String | Authentication token
var target = http://www.opensilex.org/demo/2018/o18000076; // String | Target URI
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.countAnnotations(authorization, target, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AnnotationsApi->countAnnotations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **target** | **String**| Target URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAnnotation**
> ObjectUriResponse createAnnotation(authorization, body, acceptLanguage)

Create an annotation



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AnnotationsApi();
var authorization = authorization_example; // String | Authentication token
var body = new AnnotationCreationDTO(); // AnnotationCreationDTO | 
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.createAnnotation(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AnnotationsApi->createAnnotation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**AnnotationCreationDTO**](AnnotationCreationDTO.md)|  | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteAnnotation**
> ObjectUriResponse deleteAnnotation(uri, authorization, acceptLanguage)

Delete an annotation



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AnnotationsApi();
var uri = http://www.opensilex.org/annotations/12590c87-1c34-426b-a231-beb7acb33415; // String | Annotation URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.deleteAnnotation(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AnnotationsApi->deleteAnnotation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Annotation URI | 
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

# **getAnnotation**
> AnnotationGetDTO getAnnotation(uri, authorization, acceptLanguage)

Get an annotation



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AnnotationsApi();
var uri = http://www.opensilex.org/annotations/12590c87-1c34-426b-a231-beb7acb33415; // String | Event URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getAnnotation(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AnnotationsApi->getAnnotation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Event URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**AnnotationGetDTO**](AnnotationGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchAnnotations**
> List<AnnotationGetDTO> searchAnnotations(authorization, description, target, motivation, author, orderBy, page, pageSize, acceptLanguage)

Search annotations



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AnnotationsApi();
var authorization = authorization_example; // String | Authentication token
var description = The pest attack; // String | Description (regex)
var target = http://www.opensilex.org/demo/2018/o18000076; // String | Target URI
var motivation = http://www.w3.org/ns/oa#describing; // String | Motivation URI
var author = http://opensilex.dev/users#Admin.OpenSilex; // String | Author URI
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchAnnotations(authorization, description, target, motivation, author, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AnnotationsApi->searchAnnotations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **description** | **String**| Description (regex) | [optional] 
 **target** | **String**| Target URI | [optional] 
 **motivation** | **String**| Motivation URI | [optional] 
 **author** | **String**| Author URI | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<AnnotationGetDTO>**](AnnotationGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMotivations**
> List<MotivationGetDTO> searchMotivations(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search motivations



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AnnotationsApi();
var authorization = authorization_example; // String | Authentication token
var name = describing; // String | Motivation name regex pattern
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchMotivations(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AnnotationsApi->searchMotivations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Motivation name regex pattern | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<MotivationGetDTO>**](MotivationGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateAnnotation**
> ObjectUriResponse updateAnnotation(authorization, body, acceptLanguage)

Update an annotation



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AnnotationsApi();
var authorization = authorization_example; // String | Authentication token
var body = new AnnotationUpdateDTO(); // AnnotationUpdateDTO | Annotation description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.updateAnnotation(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AnnotationsApi->updateAnnotation: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**AnnotationUpdateDTO**](AnnotationUpdateDTO.md)| Annotation description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

