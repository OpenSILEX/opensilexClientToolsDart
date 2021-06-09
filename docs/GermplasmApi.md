# swagger.api.GermplasmApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createGermplasm**](GermplasmApi.md#createGermplasm) | **POST** /core/germplasm | Add a germplasm
[**deleteGermplasm**](GermplasmApi.md#deleteGermplasm) | **DELETE** /core/germplasm/{uri} | Delete a germplasm
[**exportGermplasm**](GermplasmApi.md#exportGermplasm) | **GET** /core/germplasm/export | export germplasm
[**exportGermplasmByURIs**](GermplasmApi.md#exportGermplasmByURIs) | **POST** /core/germplasm/export_by_uris | export germplasm by list of uris
[**getGermplasm**](GermplasmApi.md#getGermplasm) | **GET** /core/germplasm/{uri} | Get a germplasm
[**getGermplasmExperiments**](GermplasmApi.md#getGermplasmExperiments) | **GET** /core/germplasm/{uri}/experiments | Get experiments where a germplasm has been used
[**getGermplasmsByURI**](GermplasmApi.md#getGermplasmsByURI) | **GET** /core/germplasm/by_uris | Get a list of germplasms by their URIs
[**searchGermplasm**](GermplasmApi.md#searchGermplasm) | **GET** /core/germplasm | Search germplasm
[**updateGermplasm**](GermplasmApi.md#updateGermplasm) | **PUT** /core/germplasm | Update a germplasm


# **createGermplasm**
> ObjectUriResponse createGermplasm(authorization, body, checkOnly, acceptLanguage)

Add a germplasm



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GermplasmApi();
var authorization = authorization_example; // String | Authentication token
var body = new GermplasmCreationDTO(); // GermplasmCreationDTO | Germplasm description
var checkOnly = false; // bool | Checking only
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.createGermplasm(authorization, body, checkOnly, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling GermplasmApi->createGermplasm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**GermplasmCreationDTO**](GermplasmCreationDTO.md)| Germplasm description | [optional] 
 **checkOnly** | **bool**| Checking only | [optional] [default to false]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteGermplasm**
> deleteGermplasm(uri, authorization, acceptLanguage)

Delete a germplasm



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GermplasmApi();
var uri = http://example.com/; // String | Germplasm URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    api_instance.deleteGermplasm(uri, authorization, acceptLanguage);
} catch (e) {
    print("Exception when calling GermplasmApi->deleteGermplasm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Germplasm URI | 
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

# **exportGermplasm**
> exportGermplasm(authorization, uri, rdfType, name, code, productionYear, species, variety, accession, institute, experiment, metadata, orderBy, acceptLanguage)

export germplasm



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GermplasmApi();
var authorization = authorization_example; // String | Authentication token
var uri = http://opensilex/set/experiments/ZA17; // String | Regex pattern for filtering list by uri
var rdfType = http://www.opensilex.org/vocabulary/oeso#Variety; // String | Search by type
var name = .*; // String | Regex pattern for filtering list by name and synonyms
var code = .*; // String | Regex pattern for filtering list by code
var productionYear = 2020; // int | Search by productionYear
var species = http://www.phenome-fppn.fr/id/species/zeamays; // String | Search by species
var variety = variety_example; // String | Search by variety
var accession = accession_example; // String | Search by accession
var institute = INRA; // String | Search by institute
var experiment = experiment_example; // String | Search by experiment
var metadata = { "water_stress" : "resistant",
"yield" : "moderate"}; // String | Search by metadata
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var acceptLanguage = en; // String | Request accepted language

try { 
    api_instance.exportGermplasm(authorization, uri, rdfType, name, code, productionYear, species, variety, accession, institute, experiment, metadata, orderBy, acceptLanguage);
} catch (e) {
    print("Exception when calling GermplasmApi->exportGermplasm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **uri** | **String**| Regex pattern for filtering list by uri | [optional] 
 **rdfType** | **String**| Search by type | [optional] 
 **name** | **String**| Regex pattern for filtering list by name and synonyms | [optional] [default to .*]
 **code** | **String**| Regex pattern for filtering list by code | [optional] [default to .*]
 **productionYear** | **int**| Search by productionYear | [optional] 
 **species** | **String**| Search by species | [optional] 
 **variety** | **String**| Search by variety | [optional] 
 **accession** | **String**| Search by accession | [optional] 
 **institute** | **String**| Search by institute | [optional] 
 **experiment** | **String**| Search by experiment | [optional] 
 **metadata** | **String**| Search by metadata | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportGermplasmByURIs**
> exportGermplasmByURIs(authorization, body, acceptLanguage)

export germplasm by list of uris



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GermplasmApi();
var authorization = authorization_example; // String | Authentication token
var body = new URIsListPostDTO(); // URIsListPostDTO | List of germplasm URI
var acceptLanguage = en; // String | Request accepted language

try { 
    api_instance.exportGermplasmByURIs(authorization, body, acceptLanguage);
} catch (e) {
    print("Exception when calling GermplasmApi->exportGermplasmByURIs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**URIsListPostDTO**](URIsListPostDTO.md)| List of germplasm URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGermplasm**
> GermplasmGetSingleDTO getGermplasm(uri, authorization, acceptLanguage)

Get a germplasm



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GermplasmApi();
var uri = http://www.phenome-fppn.fr/id/species/zeamays; // String | germplasm URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getGermplasm(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling GermplasmApi->getGermplasm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| germplasm URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**GermplasmGetSingleDTO**](GermplasmGetSingleDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGermplasmExperiments**
> List<ExperimentGetListDTO> getGermplasmExperiments(uri, authorization, name, orderBy, page, pageSize, acceptLanguage)

Get experiments where a germplasm has been used



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GermplasmApi();
var uri = dev-germplasm:g01; // String | germplasm URI
var authorization = authorization_example; // String | Authentication token
var name = .*; // String | Regex pattern for filtering experiments by name
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getGermplasmExperiments(uri, authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling GermplasmApi->getGermplasmExperiments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| germplasm URI | 
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering experiments by name | [optional] [default to .*]
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ExperimentGetListDTO>**](ExperimentGetListDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGermplasmsByURI**
> List<GermplasmGetAllDTO> getGermplasmsByURI(uris, authorization, acceptLanguage)

Get a list of germplasms by their URIs



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GermplasmApi();
var uris = []; // List<String> | Germplasms URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getGermplasmsByURI(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling GermplasmApi->getGermplasmsByURI: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Germplasms URIs | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<GermplasmGetAllDTO>**](GermplasmGetAllDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchGermplasm**
> List<GermplasmGetAllDTO> searchGermplasm(authorization, uri, rdfType, name, code, productionYear, species, variety, accession, institute, experiment, metadata, orderBy, page, pageSize, acceptLanguage)

Search germplasm



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GermplasmApi();
var authorization = authorization_example; // String | Authentication token
var uri = http://opensilex/set/experiments/ZA17; // String | Regex pattern for filtering list by uri
var rdfType = http://www.opensilex.org/vocabulary/oeso#Variety; // String | Search by type
var name = .*; // String | Regex pattern for filtering list by name and synonyms
var code = .*; // String | Regex pattern for filtering list by code
var productionYear = 2020; // int | Search by production year
var species = http://www.phenome-fppn.fr/id/species/zeamays; // String | Search by species
var variety = variety_example; // String | Search by variety
var accession = accession_example; // String | Search by accession
var institute = INRA; // String | Search by institute
var experiment = experiment_example; // String | Search by experiment
var metadata = { "water_stress" : "resistant",
"yield" : "moderate"}; // String | Search by metadata
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchGermplasm(authorization, uri, rdfType, name, code, productionYear, species, variety, accession, institute, experiment, metadata, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling GermplasmApi->searchGermplasm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **uri** | **String**| Regex pattern for filtering list by uri | [optional] 
 **rdfType** | **String**| Search by type | [optional] 
 **name** | **String**| Regex pattern for filtering list by name and synonyms | [optional] [default to .*]
 **code** | **String**| Regex pattern for filtering list by code | [optional] [default to .*]
 **productionYear** | **int**| Search by production year | [optional] 
 **species** | **String**| Search by species | [optional] 
 **variety** | **String**| Search by variety | [optional] 
 **accession** | **String**| Search by accession | [optional] 
 **institute** | **String**| Search by institute | [optional] 
 **experiment** | **String**| Search by experiment | [optional] 
 **metadata** | **String**| Search by metadata | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<GermplasmGetAllDTO>**](GermplasmGetAllDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateGermplasm**
> ObjectUriResponse updateGermplasm(authorization, body, acceptLanguage)

Update a germplasm



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new GermplasmApi();
var authorization = authorization_example; // String | Authentication token
var body = new GermplasmUpdateDTO(); // GermplasmUpdateDTO | Germplasm description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.updateGermplasm(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling GermplasmApi->updateGermplasm: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**GermplasmUpdateDTO**](GermplasmUpdateDTO.md)| Germplasm description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

