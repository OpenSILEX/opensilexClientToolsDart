# swagger.api.FactorsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createFactor**](FactorsApi.md#createFactor) | **POST** /core/experiments/factors | Create a factor
[**deleteFactor**](FactorsApi.md#deleteFactor) | **DELETE** /core/experiments/factors/{uri} | Delete a factor
[**deleteFactorLevel**](FactorsApi.md#deleteFactorLevel) | **DELETE** /core/experiments/factors/levels/{uri} | Delete a factor level
[**getFactorAssociatedExperiments**](FactorsApi.md#getFactorAssociatedExperiments) | **GET** /core/experiments/factors/{uri}/experiments | Get factor associated experiments
[**getFactorByURI**](FactorsApi.md#getFactorByURI) | **GET** /core/experiments/factors/{uri} | Get a factor
[**getFactorLevel**](FactorsApi.md#getFactorLevel) | **GET** /core/experiments/factors/levels/{uri} | Get a factor level
[**getFactorLevelDetail**](FactorsApi.md#getFactorLevelDetail) | **GET** /core/experiments/factors/levels/{uri}/details | Get a factor level
[**getFactorLevels**](FactorsApi.md#getFactorLevels) | **GET** /core/experiments/factors/{uri}/levels | Get factor levels
[**getFactorsByURIs**](FactorsApi.md#getFactorsByURIs) | **GET** /core/experiments/factors/by_uris | Get a list of factors by their URIs
[**searchCategories**](FactorsApi.md#searchCategories) | **GET** /core/experiments/factors/categories | Search categories
[**searchFactorLevels**](FactorsApi.md#searchFactorLevels) | **GET** /core/experiments/factors/factor_levels | Search factors levels
[**searchFactors**](FactorsApi.md#searchFactors) | **GET** /core/experiments/factors | Search factors
[**updateFactor**](FactorsApi.md#updateFactor) | **PUT** /core/experiments/factors | Update a factor


# **createFactor**
> createFactor(authorization, body, acceptLanguage)

Create a factor



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var authorization = authorization_example; // String | Authentication token
var body = new FactorCreationDTO(); // FactorCreationDTO | Factor description
var acceptLanguage = en; // String | Request accepted language

try { 
    api_instance.createFactor(authorization, body, acceptLanguage);
} catch (e) {
    print("Exception when calling FactorsApi->createFactor: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**FactorCreationDTO**](FactorCreationDTO.md)| Factor description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFactor**
> ObjectUriResponse deleteFactor(uri, authorization, acceptLanguage)

Delete a factor



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var uri = platform-factor:irrigation; // String | Factor URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.deleteFactor(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->deleteFactor: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Factor URI | 
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

# **deleteFactorLevel**
> ObjectUriResponse deleteFactorLevel(uri, authorization, acceptLanguage)

Delete a factor level



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var uri = platform-factor:irrigation; // String | Factor level URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.deleteFactorLevel(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->deleteFactorLevel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Factor level URI | 
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

# **getFactorAssociatedExperiments**
> List<ExperimentGetListDTO> getFactorAssociatedExperiments(uri, authorization, acceptLanguage)

Get factor associated experiments



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var uri = platform-factor:irrigation; // String | Factor URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getFactorAssociatedExperiments(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->getFactorAssociatedExperiments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Factor URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ExperimentGetListDTO>**](ExperimentGetListDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFactorByURI**
> FactorDetailsGetDTO getFactorByURI(uri, authorization, acceptLanguage)

Get a factor



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var uri = platform-factor:irrigation; // String | Factor URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getFactorByURI(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->getFactorByURI: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Factor URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**FactorDetailsGetDTO**](FactorDetailsGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFactorLevel**
> List<FactorLevelGetDTO> getFactorLevel(uri, authorization, acceptLanguage)

Get a factor level



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var uri = http://opensilex/set/factorLevel/irrigation.ww; // String | Factor Level URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getFactorLevel(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->getFactorLevel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Factor Level URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<FactorLevelGetDTO>**](FactorLevelGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFactorLevelDetail**
> List<FactorLevelGetDetailDTO> getFactorLevelDetail(uri, authorization, acceptLanguage)

Get a factor level



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var uri = http://opensilex/set/factorLevel/irrigation.ww; // String | Factor Level URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getFactorLevelDetail(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->getFactorLevelDetail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Factor Level URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<FactorLevelGetDetailDTO>**](FactorLevelGetDetailDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFactorLevels**
> List<FactorLevelGetDTO> getFactorLevels(uri, authorization, acceptLanguage)

Get factor levels



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var uri = platform-factor:irrigation; // String | Factor URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getFactorLevels(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->getFactorLevels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Factor URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<FactorLevelGetDTO>**](FactorLevelGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFactorsByURIs**
> List<FactorGetDTO> getFactorsByURIs(uris, authorization, acceptLanguage)

Get a list of factors by their URIs



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var uris = []; // List<String> | Factors URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getFactorsByURIs(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->getFactorsByURIs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Factors URIs | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<FactorGetDTO>**](FactorGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCategories**
> List<FactorCategoryGetDTO> searchCategories(name, orderBy, acceptLanguage)

Search categories



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var name = describing; // String | Category name regex pattern
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchCategories(name, orderBy, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->searchCategories: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Category name regex pattern | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<FactorCategoryGetDTO>**](FactorCategoryGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFactorLevels**
> List<FactorDetailsGetDTO> searchFactorLevels(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search factors levels



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var authorization = authorization_example; // String | Authentication token
var name = WW; // String | Regex pattern for filtering on name
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchFactorLevels(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->searchFactorLevels: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering on name | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<FactorDetailsGetDTO>**](FactorDetailsGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchFactors**
> List<FactorGetDTO> searchFactors(authorization, name, description, category, experiment, orderBy, page, pageSize, acceptLanguage)

Search factors



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var authorization = authorization_example; // String | Authentication token
var name = irrigation; // String | Regex pattern for filtering on name
var description = 20ml of water; // String | Regex pattern for filtering on description
var category = http://aims.fao.org/aos/agrovoc/c_32668; // String | Filter by category of a factor
var experiment = demo-exp:experiment1; // String | Filter by experiment
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchFactors(authorization, name, description, category, experiment, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->searchFactors: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering on name | [optional] 
 **description** | **String**| Regex pattern for filtering on description | [optional] 
 **category** | **String**| Filter by category of a factor | [optional] 
 **experiment** | **String**| Filter by experiment | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<FactorGetDTO>**](FactorGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFactor**
> ObjectUriResponse updateFactor(authorization, body, acceptLanguage)

Update a factor



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new FactorsApi();
var authorization = authorization_example; // String | Authentication token
var body = new FactorUpdateDTO(); // FactorUpdateDTO | Factor description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.updateFactor(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling FactorsApi->updateFactor: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**FactorUpdateDTO**](FactorUpdateDTO.md)| Factor description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

