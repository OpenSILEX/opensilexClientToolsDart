# swagger.api.DocumentsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDocument**](DocumentsApi.md#createDocument) | **POST** /core/documents | Add a document
[**deleteDocument**](DocumentsApi.md#deleteDocument) | **DELETE** /core/documents/{uri} | Delete a document
[**getDocumentFile**](DocumentsApi.md#getDocumentFile) | **GET** /core/documents/{uri} | Get document
[**getDocumentMetadata**](DocumentsApi.md#getDocumentMetadata) | **GET** /core/documents/{uri}/description | Get document&#39;s description
[**searchDocuments**](DocumentsApi.md#searchDocuments) | **GET** /core/documents | Search documents
[**updateDocument**](DocumentsApi.md#updateDocument) | **PUT** /core/documents | Update document&#39;s description


# **createDocument**
> ObjectUriResponse createDocument(description, authorization, file, acceptLanguage)

Add a document

{ uri: http://opensilex.dev/set/documents#ProtocolExperimental, identifier: doi:10.1340/309registries, rdf_type: http://www.opensilex.org/vocabulary/oeso#ScientificDocument, title: title, date: 2020-06-01, description: description, targets: http://opensilex.dev/opensilex/id/variables/v001, authors: Author name, language: fr, format: jpg, deprecated: false, keywords: keywords}

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentsApi();
var description = description_example; // String | File description with metadata
var authorization = authorization_example; // String | Authentication token
var file = /path/to/file.txt; // MultipartFile | file
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createDocument(description, authorization, file, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DocumentsApi->createDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **String**| File description with metadata | 
 **authorization** | **String**| Authentication token | 
 **file** | **MultipartFile**| file | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteDocument**
> ObjectUriResponse deleteDocument(uri, authorization, acceptLanguage)

Delete a document



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentsApi();
var uri = uri_example; // String | Document URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteDocument(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DocumentsApi->deleteDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Document URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentFile**
> getDocumentFile(uri, authorization, acceptLanguage)

Get document



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentsApi();
var uri = "http://opensilex.dev/set/documents/ZA17"; // String | Document URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.getDocumentFile(uri, authorization, acceptLanguage);
} catch (e) {
    print("Exception when calling DocumentsApi->getDocumentFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Document URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDocumentMetadata**
> DocumentGetDTO getDocumentMetadata(uri, authorization, acceptLanguage)

Get document's description



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentsApi();
var uri = "http://opensilex.dev/set/documents/ZA17"; // String | Document URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getDocumentMetadata(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DocumentsApi->getDocumentMetadata: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Document URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**DocumentGetDTO**](DocumentGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchDocuments**
> List<DocumentGetDTO> searchDocuments(authorization, rdfType, title, date, targets, authors, keyword, multiple, deprecated, orderBy, page, pageSize, acceptLanguage)

Search documents



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentsApi();
var authorization = authorization_example; // String | Authentication token
var rdfType = "http://www.opensilex.org/vocabulary/oeso#ScientificDocument"; // String | Search by type
var title = "experimental_protocol_3"; // String | Regex pattern for filtering list by title
var date = "2020"; // String | Regex pattern for filtering list by date
var targets = "dev-expe:za17"; // String | Search by targets
var authors = "Firstname Lastname"; // String | Regex pattern for filtering list by author
var keyword = "keyword"; // String | Regex pattern for filtering list by keyword
var multiple = "keyword or title"; // String | Regex pattern for filtering list by keyword or title
var deprecated = "true"; // String | Search deprecated file
var orderBy = ["date=asc"]; // List<String> | List of fields to sort as an array of fieldTitle=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchDocuments(authorization, rdfType, title, date, targets, authors, keyword, multiple, deprecated, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DocumentsApi->searchDocuments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **rdfType** | **String**| Search by type | [optional] 
 **title** | **String**| Regex pattern for filtering list by title | [optional] 
 **date** | **String**| Regex pattern for filtering list by date | [optional] 
 **targets** | **String**| Search by targets | [optional] 
 **authors** | **String**| Regex pattern for filtering list by author | [optional] 
 **keyword** | **String**| Regex pattern for filtering list by keyword | [optional] 
 **multiple** | **String**| Regex pattern for filtering list by keyword or title | [optional] 
 **deprecated** | **String**| Search deprecated file | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldTitle&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<DocumentGetDTO>**](DocumentGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDocument**
> ObjectUriResponse updateDocument(description, authorization, acceptLanguage)

Update document's description



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DocumentsApi();
var description = description_example; // String | description
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateDocument(description, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DocumentsApi->updateDocument: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **String**| description | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

