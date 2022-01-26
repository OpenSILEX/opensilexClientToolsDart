# swagger.api.MobileApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createForm**](MobileApi.md#createForm) | **POST** /mobile/forms_post | Add a form
[**createSection**](MobileApi.md#createSection) | **POST** /mobile/sections_post | Add a form
[**deleteForm**](MobileApi.md#deleteForm) | **DELETE** /mobile/form/{uri} | Delete form
[**deleteSection**](MobileApi.md#deleteSection) | **DELETE** /mobile/delete_section/{uri} | Delete section
[**importCSVCodes**](MobileApi.md#importCSVCodes) | **POST** /mobile/import | Import a CSV file containing parent and child code-lots
[**searchForms**](MobileApi.md#searchForms) | **GET** /mobile/form_get | Search forms
[**searchSections**](MobileApi.md#searchSections) | **GET** /mobile/section_get | Search sections
[**updateForm**](MobileApi.md#updateForm) | **PUT** /mobile/form_put | Update form
[**updateSection**](MobileApi.md#updateSection) | **PUT** /mobile/section_put | Update section


# **createForm**
> ObjectUriResponse createForm(authorization, body, acceptLanguage)

Add a form



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MobileApi();
var authorization = authorization_example; // String | Authentication token
var body = new FormCreationDTO(); // FormCreationDTO | Form to save
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createForm(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling MobileApi->createForm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**FormCreationDTO**](FormCreationDTO.md)| Form to save | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createSection**
> ObjectUriResponse createSection(authorization, body, acceptLanguage)

Add a form



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MobileApi();
var authorization = authorization_example; // String | Authentication token
var body = new SectionCreationDTO(); // SectionCreationDTO | Section to save
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createSection(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling MobileApi->createSection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**SectionCreationDTO**](SectionCreationDTO.md)| Section to save | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteForm**
> ObjectUriResponse deleteForm(uri, authorization, acceptLanguage)

Delete form



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MobileApi();
var uri = uri_example; // String | CodeLot URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteForm(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling MobileApi->deleteForm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| CodeLot URI | 
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

# **deleteSection**
> ObjectUriResponse deleteSection(uri, authorization, acceptLanguage)

Delete section



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MobileApi();
var uri = uri_example; // String | Section URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteSection(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling MobileApi->deleteSection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Section URI | 
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

# **importCSVCodes**
> CodeLotCSVValidationDTO importCSVCodes(file, authorization, acceptLanguage)

Import a CSV file containing parent and child code-lots



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MobileApi();
var file = /path/to/file.txt; // MultipartFile | File
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.importCSVCodes(file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling MobileApi->importCSVCodes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| File | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**CodeLotCSVValidationDTO**](CodeLotCSVValidationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchForms**
> List<FormGetDTO> searchForms(authorization, uris, orderBy, page, pageSize, acceptLanguage)

Search forms



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MobileApi();
var authorization = authorization_example; // String | Authentication token
var uris = []; // List<String> | Search by uris
var orderBy = ["date=desc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchForms(authorization, uris, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling MobileApi->searchForms: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **uris** | [**List&lt;String&gt;**](String.md)| Search by uris | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<FormGetDTO>**](FormGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSections**
> List<SectionGetDTO> searchSections(authorization, uris, orderBy, page, pageSize, acceptLanguage)

Search sections



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MobileApi();
var authorization = authorization_example; // String | Authentication token
var uris = []; // List<String> | Search by uris
var orderBy = ["date=desc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchSections(authorization, uris, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling MobileApi->searchSections: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **uris** | [**List&lt;String&gt;**](String.md)| Search by uris | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<SectionGetDTO>**](SectionGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateForm**
> ObjectUriResponse updateForm(authorization, body, acceptLanguage)

Update form



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MobileApi();
var authorization = authorization_example; // String | Authentication token
var body = new FormUpdateDTO(); // FormUpdateDTO | Form description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateForm(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling MobileApi->updateForm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**FormUpdateDTO**](FormUpdateDTO.md)| Form description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateSection**
> ObjectUriResponse updateSection(authorization, body, acceptLanguage)

Update section



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new MobileApi();
var authorization = authorization_example; // String | Authentication token
var body = new SectionUpdateDTO(); // SectionUpdateDTO | Section description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateSection(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling MobileApi->updateSection: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**SectionUpdateDTO**](SectionUpdateDTO.md)| Section description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

