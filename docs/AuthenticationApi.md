# swagger.api.AuthenticationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticate**](AuthenticationApi.md#authenticate) | **POST** /security/authenticate | Authenticate a user and return an access token
[**authenticateOpenID**](AuthenticationApi.md#authenticateOpenID) | **GET** /security/openid | Authenticate a user and return an access token
[**forgotPassword**](AuthenticationApi.md#forgotPassword) | **POST** /security/forgot-password | Send an e-mail confirmation
[**getCredentialsGroups**](AuthenticationApi.md#getCredentialsGroups) | **GET** /security/credentials | Get list of existing credentials indexed by Swagger @API concepts in the application
[**logout**](AuthenticationApi.md#logout) | **DELETE** /security/logout | Logout by discarding a user token
[**renewPassword**](AuthenticationApi.md#renewPassword) | **PUT** /security/renew-password | Update user password
[**renewToken**](AuthenticationApi.md#renewToken) | **PUT** /security/renew-token | Send back a new token if the provided one is still valid


# **authenticate**
> TokenGetDTO authenticate(body)

Authenticate a user and return an access token



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthenticationApi();
var body = new AuthenticationDTO(); // AuthenticationDTO | User authentication informations

try { 
    var result = api_instance.authenticate(body);
    print(result);
} catch (e) {
    print("Exception when calling AuthenticationApi->authenticate: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AuthenticationDTO**](AuthenticationDTO.md)| User authentication informations | [optional] 

### Return type

[**TokenGetDTO**](TokenGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticateOpenID**
> TokenGetDTO authenticateOpenID(code)

Authenticate a user and return an access token



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthenticationApi();
var code = code_example; // String | Authorization code

try { 
    var result = api_instance.authenticateOpenID(code);
    print(result);
} catch (e) {
    print("Exception when calling AuthenticationApi->authenticateOpenID: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Authorization code | [optional] 

### Return type

[**TokenGetDTO**](TokenGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **forgotPassword**
> forgotPassword(identifier)

Send an e-mail confirmation



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthenticationApi();
var identifier = identifier_example; // String | User e-mail or uri

try { 
    api_instance.forgotPassword(identifier);
} catch (e) {
    print("Exception when calling AuthenticationApi->forgotPassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| User e-mail or uri | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCredentialsGroups**
> List<CredentialsGroupDTO> getCredentialsGroups()

Get list of existing credentials indexed by Swagger @API concepts in the application



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthenticationApi();

try { 
    var result = api_instance.getCredentialsGroups();
    print(result);
} catch (e) {
    print("Exception when calling AuthenticationApi->getCredentialsGroups: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<CredentialsGroupDTO>**](CredentialsGroupDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **logout**
> logout(authorization, acceptLanguage)

Logout by discarding a user token



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthenticationApi();
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    api_instance.logout(authorization, acceptLanguage);
} catch (e) {
    print("Exception when calling AuthenticationApi->logout: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renewPassword**
> TokenGetDTO renewPassword(renewToken, checkOnly, password)

Update user password



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthenticationApi();
var renewToken = renewToken_example; // String | User renew token
var checkOnly = false; // bool | Check only renew token
var password = password_example; // String | User password

try { 
    var result = api_instance.renewPassword(renewToken, checkOnly, password);
    print(result);
} catch (e) {
    print("Exception when calling AuthenticationApi->renewPassword: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **renewToken** | **String**| User renew token | 
 **checkOnly** | **bool**| Check only renew token | [optional] [default to false]
 **password** | **String**| User password | [optional] 

### Return type

[**TokenGetDTO**](TokenGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **renewToken**
> TokenGetDTO renewToken(authorization, acceptLanguage)

Send back a new token if the provided one is still valid



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new AuthenticationApi();
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.renewToken(authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling AuthenticationApi->renewToken: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**TokenGetDTO**](TokenGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

