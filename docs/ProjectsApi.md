# swagger.api.ProjectsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createProject**](ProjectsApi.md#createProject) | **POST** /core/projects | Add a project
[**deleteProject**](ProjectsApi.md#deleteProject) | **DELETE** /core/projects/{uri} | Delete a project
[**getProject**](ProjectsApi.md#getProject) | **GET** /core/projects/{uri} | Get a project
[**getProjectsByURI**](ProjectsApi.md#getProjectsByURI) | **GET** /core/projects/by_uris | Get projects by their URIs
[**searchProjects**](ProjectsApi.md#searchProjects) | **GET** /core/projects | Search projects
[**updateProject**](ProjectsApi.md#updateProject) | **PUT** /core/projects | Update a project


# **createProject**
> ObjectUriResponse createProject(authorization, body, acceptLanguage)

Add a project



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var authorization = authorization_example; // String | Authentication token
var body = new ProjectCreationDTO(); // ProjectCreationDTO | Project description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.createProject(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->createProject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**ProjectCreationDTO**](ProjectCreationDTO.md)| Project description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProject**
> ObjectUriResponse deleteProject(uri, authorization, acceptLanguage)

Delete a project



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var uri = http://opensilex/set/project/BW1; // String | Project URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.deleteProject(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->deleteProject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Project URI | 
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

# **getProject**
> ProjectGetDetailDTO getProject(uri, authorization, acceptLanguage)

Get a project



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var uri = http://example.com/; // String | Project URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getProject(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->getProject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Project URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ProjectGetDetailDTO**](ProjectGetDetailDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProjectsByURI**
> List<ProjectGetDTO> getProjectsByURI(uris, authorization, acceptLanguage)

Get projects by their URIs



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var uris = []; // List<String> | Projects URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getProjectsByURI(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->getProjectsByURI: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Projects URIs | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProjectGetDTO>**](ProjectGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchProjects**
> List<ProjectGetDTO> searchProjects(authorization, name, year, keyword, financialFunding, orderBy, page, pageSize, acceptLanguage)

Search projects



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var authorization = authorization_example; // String | Authentication token
var name = PJ17; // String | Regex pattern for filtering by name or shortname
var year = 2017; // int | Search by year
var keyword = climate; // String | Regex pattern for filtering on description or objective
var financialFunding = ANR; // String | Regex pattern for filtering by financial funding
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchProjects(authorization, name, year, keyword, financialFunding, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->searchProjects: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering by name or shortname | [optional] 
 **year** | **int**| Search by year | [optional] 
 **keyword** | **String**| Regex pattern for filtering on description or objective | [optional] 
 **financialFunding** | **String**| Regex pattern for filtering by financial funding | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProjectGetDTO>**](ProjectGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProject**
> ObjectUriResponse updateProject(authorization, body, acceptLanguage)

Update a project



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ProjectsApi();
var authorization = authorization_example; // String | Authentication token
var body = new ProjectCreationDTO(); // ProjectCreationDTO | Project description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.updateProject(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ProjectsApi->updateProject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**ProjectCreationDTO**](ProjectCreationDTO.md)| Project description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

