# swagger.api.SecurityApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGroup**](SecurityApi.md#createGroup) | **POST** /security/groups | Add a group
[**createProfile**](SecurityApi.md#createProfile) | **POST** /security/profiles | Add a profile
[**createUser**](SecurityApi.md#createUser) | **POST** /security/users | Add an user
[**deleteGroup**](SecurityApi.md#deleteGroup) | **DELETE** /security/groups/{uri} | Delete a group
[**deleteProfile**](SecurityApi.md#deleteProfile) | **DELETE** /security/profiles/{uri} | Delete a profile
[**deleteUser**](SecurityApi.md#deleteUser) | **DELETE** /security/users/{uri} | Delete an user
[**getAllProfiles**](SecurityApi.md#getAllProfiles) | **GET** /security/profiles/all | Get all profiles
[**getGroup**](SecurityApi.md#getGroup) | **GET** /security/groups/{uri} | Get a group
[**getGroupsByURI**](SecurityApi.md#getGroupsByURI) | **GET** /security/groups/by_uris | Get groups by their URIs
[**getProfile**](SecurityApi.md#getProfile) | **GET** /security/profiles/{uri} | Get a profile
[**getUser**](SecurityApi.md#getUser) | **GET** /security/users/{uri} | Get an user
[**getUserGroups**](SecurityApi.md#getUserGroups) | **GET** /security/users/{uri}/groups | Get groups of an user
[**getUsersByURI**](SecurityApi.md#getUsersByURI) | **GET** /security/users/by_uris | Get users by their URIs
[**searchGroups**](SecurityApi.md#searchGroups) | **GET** /security/groups | Search groups
[**searchProfiles**](SecurityApi.md#searchProfiles) | **GET** /security/profiles | Search profiles
[**searchUsers**](SecurityApi.md#searchUsers) | **GET** /security/users | Search users
[**updateGroup**](SecurityApi.md#updateGroup) | **PUT** /security/groups | Update a group
[**updateProfile**](SecurityApi.md#updateProfile) | **PUT** /security/profiles | Update a profile
[**updateUser**](SecurityApi.md#updateUser) | **PUT** /security/users | Update an user


# **createGroup**
> createGroup(authorization, body, acceptLanguage)

Add a group



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var body = new GroupCreationDTO(); // GroupCreationDTO | Group description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.createGroup(authorization, body, acceptLanguage);
} catch (e) {
    print("Exception when calling SecurityApi->createGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**GroupCreationDTO**](GroupCreationDTO.md)| Group description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProfile**
> createProfile(authorization, body, acceptLanguage)

Add a profile



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var body = new ProfileCreationDTO(); // ProfileCreationDTO | Profile description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.createProfile(authorization, body, acceptLanguage);
} catch (e) {
    print("Exception when calling SecurityApi->createProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**ProfileCreationDTO**](ProfileCreationDTO.md)| Profile description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> createUser(authorization, body, acceptLanguage)

Add an user



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var body = new UserCreationDTO(); // UserCreationDTO | User description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.createUser(authorization, body, acceptLanguage);
} catch (e) {
    print("Exception when calling SecurityApi->createUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**UserCreationDTO**](UserCreationDTO.md)| User description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGroup**
> deleteGroup(uri, authorization, acceptLanguage)

Delete a group



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var uri = "http://example.com/"; // String | Group URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.deleteGroup(uri, authorization, acceptLanguage);
} catch (e) {
    print("Exception when calling SecurityApi->deleteGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Group URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProfile**
> deleteProfile(uri, authorization, acceptLanguage)

Delete a profile



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var uri = "http://example.com/"; // String | Profile URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.deleteProfile(uri, authorization, acceptLanguage);
} catch (e) {
    print("Exception when calling SecurityApi->deleteProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Profile URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(uri, authorization, acceptLanguage)

Delete an user



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var uri = "http://example.com/"; // String | User URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.deleteUser(uri, authorization, acceptLanguage);
} catch (e) {
    print("Exception when calling SecurityApi->deleteUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| User URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllProfiles**
> List<ProfileGetDTO> getAllProfiles(authorization, orderBy, acceptLanguage)

Get all profiles



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var orderBy = ["email=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getAllProfiles(authorization, orderBy, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->getAllProfiles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProfileGetDTO>**](ProfileGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroup**
> GroupDTO getGroup(uri, authorization, acceptLanguage)

Get a group



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var uri = "dev-groups:admin_group"; // String | Group URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getGroup(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->getGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Group URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**GroupDTO**](GroupDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGroupsByURI**
> List<GroupDTO> getGroupsByURI(uris, authorization, acceptLanguage)

Get groups by their URIs



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var uris = []; // List<String> | Groups URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getGroupsByURI(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->getGroupsByURI: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Groups URIs | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<GroupDTO>**](GroupDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProfile**
> ProfileGetDTO getProfile(uri, authorization, acceptLanguage)

Get a profile



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var uri = "dev-users:Admin_OpenSilex"; // String | Profile URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getProfile(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->getProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Profile URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ProfileGetDTO**](ProfileGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> UserGetDTO getUser(uri, authorization, acceptLanguage)

Get an user



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var uri = "dev-users:Admin_OpenSilex"; // String | User URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getUser(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->getUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| User URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**UserGetDTO**](UserGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserGroups**
> List<NamedResourceDTO> getUserGroups(uri, authorization, acceptLanguage)

Get groups of an user



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var uri = "http://example.com/"; // String | User URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getUserGroups(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->getUserGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| User URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<NamedResourceDTO>**](NamedResourceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsersByURI**
> List<UserGetDTO> getUsersByURI(uris, authorization, acceptLanguage)

Get users by their URIs



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var uris = []; // List<String> | Users URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getUsersByURI(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->getUsersByURI: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Users URIs | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<UserGetDTO>**](UserGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGroups**
> List<GroupDTO> searchGroups(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search groups



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var name = ".*"; // String | Regex pattern for filtering list by name
var orderBy = ["email=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchGroups(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->searchGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering list by name | [optional] [default to .*]
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<GroupDTO>**](GroupDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchProfiles**
> List<ProfileGetDTO> searchProfiles(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search profiles



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var name = ".*"; // String | Regex pattern for filtering list by name
var orderBy = ["email=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchProfiles(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->searchProfiles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering list by name | [optional] [default to .*]
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProfileGetDTO>**](ProfileGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUsers**
> List<UserGetDTO> searchUsers(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search users



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var name = ".*"; // String | Regex pattern for filtering list by name or email
var orderBy = ["email=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchUsers(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->searchUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering list by name or email | [optional] [default to .*]
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<UserGetDTO>**](UserGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGroup**
> String updateGroup(authorization, body, acceptLanguage)

Update a group



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var body = new GroupUpdateDTO(); // GroupUpdateDTO | Group description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateGroup(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->updateGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**GroupUpdateDTO**](GroupUpdateDTO.md)| Group description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProfile**
> String updateProfile(authorization, body, acceptLanguage)

Update a profile



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var body = new ProfileUpdateDTO(); // ProfileUpdateDTO | Profile description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateProfile(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->updateProfile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**ProfileUpdateDTO**](ProfileUpdateDTO.md)| Profile description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUser**
> String updateUser(authorization, body, acceptLanguage)

Update an user



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SecurityApi();
var authorization = authorization_example; // String | Authentication token
var body = new UserUpdateDTO(); // UserUpdateDTO | User description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateUser(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling SecurityApi->updateUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**UserUpdateDTO**](UserUpdateDTO.md)| User description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

