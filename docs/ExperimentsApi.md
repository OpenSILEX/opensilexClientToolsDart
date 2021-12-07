# swagger.api.ExperimentsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createExperiment**](ExperimentsApi.md#createExperiment) | **POST** /core/experiments | Add an experiment
[**deleteExperiment**](ExperimentsApi.md#deleteExperiment) | **DELETE** /core/experiments/{uri} | Delete an experiment
[**exportExperimentDataList**](ExperimentsApi.md#exportExperimentDataList) | **GET** /core/experiments/{uri}/data/export | export experiment data
[**getAvailableFacilities**](ExperimentsApi.md#getAvailableFacilities) | **GET** /core/experiments/{uri}/available_facilities | Get facilities available for an experiment
[**getAvailableFactors**](ExperimentsApi.md#getAvailableFactors) | **GET** /core/experiments/{uri}/factors | Get factors with their levels associated to an experiment
[**getAvailableSpecies**](ExperimentsApi.md#getAvailableSpecies) | **GET** /core/experiments/{uri}/species | Get species present in an experiment
[**getExperiment**](ExperimentsApi.md#getExperiment) | **GET** /core/experiments/{uri} | Get an experiment
[**getExperimentsByURIs**](ExperimentsApi.md#getExperimentsByURIs) | **GET** /core/experiments/by_uris | Get experiments URIs
[**getUsedVariables1**](ExperimentsApi.md#getUsedVariables1) | **GET** /core/experiments/{uri}/variables | Get variables involved in an experiment
[**importCSVData1**](ExperimentsApi.md#importCSVData1) | **POST** /core/experiments/{uri}/data/import | Import a CSV file for the given experiment URI and scientific object type.
[**searchExperimentDataList**](ExperimentsApi.md#searchExperimentDataList) | **GET** /core/experiments/{uri}/data | Search data
[**searchExperimentProvenances**](ExperimentsApi.md#searchExperimentProvenances) | **GET** /core/experiments/{uri}/provenances | Get provenances involved in an experiment
[**searchExperiments**](ExperimentsApi.md#searchExperiments) | **GET** /core/experiments | Search experiments
[**updateExperiment**](ExperimentsApi.md#updateExperiment) | **PUT** /core/experiments | Update an experiment
[**validateCSV1**](ExperimentsApi.md#validateCSV1) | **POST** /core/experiments/{uri}/data/import_validation | Import a CSV file for the given experiment URI and scientific object type.


# **createExperiment**
> ObjectUriResponse createExperiment(authorization, body, acceptLanguage)

Add an experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var authorization = authorization_example; // String | Authentication token
var body = new ExperimentCreationDTO(); // ExperimentCreationDTO | Experiment description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createExperiment(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->createExperiment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**ExperimentCreationDTO**](ExperimentCreationDTO.md)| Experiment description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteExperiment**
> ObjectUriResponse deleteExperiment(uri, authorization, acceptLanguage)

Delete an experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteExperiment(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->deleteExperiment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
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

# **exportExperimentDataList**
> exportExperimentDataList(uri, authorization, startDate, endDate, timezone, scientificObjects, variables, minConfidence, maxConfidence, provenance, metadata, mode, orderBy, page, pageSize, acceptLanguage)

export experiment data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var authorization = authorization_example; // String | Authentication token
var startDate = "2020-08-21T00:00:00+01:00"; // String | Search by minimal date
var endDate = "2020-09-21T00:00:00+01:00"; // String | Search by maximal date
var timezone = "Europe/Paris"; // String | Precise the timezone corresponding to the given dates
var scientificObjects = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by objects
var variables = ["http://opensilex.dev/variable#variable.2020-08-21_11-21-23entity6_method6_quality6_unit6"]; // List<String> | Search by variables
var minConfidence = 0.5; // double | Search by minimal confidence index
var maxConfidence = 0.5; // double | Search by maximal confidence index
var provenance = "http://opensilex.dev/provenance/1598001689415"; // String | Search by provenance uri
var metadata = "{ \"LabelView\" : \"side90\",\n\"paramA\" : \"90\"}"; // String | Search by metadata
var mode = "wide"; // String | Format wide or long
var orderBy = ["date=desc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.exportExperimentDataList(uri, authorization, startDate, endDate, timezone, scientificObjects, variables, minConfidence, maxConfidence, provenance, metadata, mode, orderBy, page, pageSize, acceptLanguage);
} catch (e) {
    print("Exception when calling ExperimentsApi->exportExperimentDataList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **authorization** | **String**| Authentication token | 
 **startDate** | **String**| Search by minimal date | [optional] 
 **endDate** | **String**| Search by maximal date | [optional] 
 **timezone** | **String**| Precise the timezone corresponding to the given dates | [optional] 
 **scientificObjects** | [**List&lt;String&gt;**](String.md)| Search by objects | [optional] 
 **variables** | [**List&lt;String&gt;**](String.md)| Search by variables | [optional] 
 **minConfidence** | **double**| Search by minimal confidence index | [optional] 
 **maxConfidence** | **double**| Search by maximal confidence index | [optional] 
 **provenance** | **String**| Search by provenance uri | [optional] 
 **metadata** | **String**| Search by metadata | [optional] 
 **mode** | **String**| Format wide or long | [optional] [default to wide]
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableFacilities**
> List<InfrastructureFacilityGetDTO> getAvailableFacilities(uri, authorization, acceptLanguage)

Get facilities available for an experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getAvailableFacilities(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->getAvailableFacilities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<InfrastructureFacilityGetDTO>**](InfrastructureFacilityGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableFactors**
> List<FactorDetailsGetDTO> getAvailableFactors(uri, authorization, acceptLanguage)

Get factors with their levels associated to an experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getAvailableFactors(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->getAvailableFactors: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<FactorDetailsGetDTO>**](FactorDetailsGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableSpecies**
> List<SpeciesDTO> getAvailableSpecies(uri, authorization, acceptLanguage)

Get species present in an experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getAvailableSpecies(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->getAvailableSpecies: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<SpeciesDTO>**](SpeciesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExperiment**
> ExperimentGetDTO getExperiment(uri, authorization, acceptLanguage)

Get an experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getExperiment(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->getExperiment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ExperimentGetDTO**](ExperimentGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExperimentsByURIs**
> List<ExperimentGetListDTO> getExperimentsByURIs(uris, authorization, acceptLanguage)

Get experiments URIs



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uris = []; // List<String> | Experiments URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getExperimentsByURIs(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->getExperimentsByURIs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Experiments URIs | 
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

# **getUsedVariables1**
> List<NamedResourceDTO> getUsedVariables1(uri, authorization, scientificObjects, acceptLanguage)

Get variables involved in an experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var authorization = authorization_example; // String | Authentication token
var scientificObjects = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by objects uris
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getUsedVariables1(uri, authorization, scientificObjects, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->getUsedVariables1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **authorization** | **String**| Authentication token | 
 **scientificObjects** | [**List&lt;String&gt;**](String.md)| Search by objects uris | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<NamedResourceDTO>**](NamedResourceDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importCSVData1**
> DataCSVValidationDTO importCSVData1(uri, provenance, file, authorization, acceptLanguage)

Import a CSV file for the given experiment URI and scientific object type.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var provenance = "http://opensilex.dev/id/provenance/provenancelabel"; // String | Provenance URI
var file = /path/to/file.txt; // MultipartFile | Data file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.importCSVData1(uri, provenance, file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->importCSVData1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **provenance** | **String**| Provenance URI | 
 **file** | **MultipartFile**| Data file | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**DataCSVValidationDTO**](DataCSVValidationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchExperimentDataList**
> List<DataGetDTO> searchExperimentDataList(uri, authorization, startDate, endDate, timezone, scientificObjects, variables, minConfidence, maxConfidence, provenances, metadata, orderBy, page, pageSize, acceptLanguage)

Search data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var authorization = authorization_example; // String | Authentication token
var startDate = "2020-08-21T00:00:00+01:00"; // String | Search by minimal date
var endDate = "2020-09-21T00:00:00+01:00"; // String | Search by maximal date
var timezone = "Europe/Paris"; // String | Precise the timezone corresponding to the given dates
var scientificObjects = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by objects
var variables = ["http://opensilex.dev/variable#variable.2020-08-21_11-21-23entity6_method6_quality6_unit6"]; // List<String> | Search by variables
var minConfidence = 0.5; // double | Search by minimal confidence index
var maxConfidence = 0.5; // double | Search by maximal confidence index
var provenances = ["http://opensilex.dev/provenance/1598001689415"]; // List<String> | Search by provenance uri
var metadata = "{ \"LabelView\" : \"side90\",\n\"paramA\" : \"90\"}"; // String | Search by metadata
var orderBy = ["date=desc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchExperimentDataList(uri, authorization, startDate, endDate, timezone, scientificObjects, variables, minConfidence, maxConfidence, provenances, metadata, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->searchExperimentDataList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **authorization** | **String**| Authentication token | 
 **startDate** | **String**| Search by minimal date | [optional] 
 **endDate** | **String**| Search by maximal date | [optional] 
 **timezone** | **String**| Precise the timezone corresponding to the given dates | [optional] 
 **scientificObjects** | [**List&lt;String&gt;**](String.md)| Search by objects | [optional] 
 **variables** | [**List&lt;String&gt;**](String.md)| Search by variables | [optional] 
 **minConfidence** | **double**| Search by minimal confidence index | [optional] 
 **maxConfidence** | **double**| Search by maximal confidence index | [optional] 
 **provenances** | [**List&lt;String&gt;**](String.md)| Search by provenance uri | [optional] 
 **metadata** | **String**| Search by metadata | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<DataGetDTO>**](DataGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchExperimentProvenances**
> List<ProvenanceGetDTO> searchExperimentProvenances(uri, authorization, name, description, activity, activityType, agent, agentType, orderBy, page, pageSize, acceptLanguage)

Get provenances involved in an experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var authorization = authorization_example; // String | Authentication token
var name = name_example; // String | Regex pattern for filtering by name
var description = description_example; // String | Search by description
var activity = activity_example; // String | Search by activity URI
var activityType = activityType_example; // String | Search by activity type
var agent = agent_example; // String | Search by agent URI
var agentType = agentType_example; // String | Search by agent type
var orderBy = ["date=desc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchExperimentProvenances(uri, authorization, name, description, activity, activityType, agent, agentType, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->searchExperimentProvenances: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering by name | [optional] 
 **description** | **String**| Search by description | [optional] 
 **activity** | **String**| Search by activity URI | [optional] 
 **activityType** | **String**| Search by activity type | [optional] 
 **agent** | **String**| Search by agent URI | [optional] 
 **agentType** | **String**| Search by agent type | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProvenanceGetDTO>**](ProvenanceGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchExperiments**
> List<ExperimentGetListDTO> searchExperiments(authorization, name, year, isEnded, species, factors, projects, isPublic, orderBy, page, pageSize, acceptLanguage)

Search experiments



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var authorization = authorization_example; // String | Authentication token
var name = "ZA17"; // String | Regex pattern for filtering by name
var year = 2017; // int | Search by year
var isEnded = true; // bool | Search ended(false) or active experiments(true)
var species = ["http://www.phenome-fppn.fr/id/species/zeamays"]; // List<String> | Search by involved species
var factors = ["http://purl.obolibrary.org/obo/CHEBI_25555"]; // List<String> | Search by studied effect
var projects = ["http://www.phenome-fppn.fr/projects/ZA17\nhttp://www.phenome-fppn.fr/id/projects/ZA18"]; // List<String> | Search by related project uri
var isPublic = true; // bool | Search private(false) or public experiments(true)
var orderBy = ["uri=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchExperiments(authorization, name, year, isEnded, species, factors, projects, isPublic, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->searchExperiments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering by name | [optional] 
 **year** | **int**| Search by year | [optional] 
 **isEnded** | **bool**| Search ended(false) or active experiments(true) | [optional] 
 **species** | [**List&lt;String&gt;**](String.md)| Search by involved species | [optional] 
 **factors** | [**List&lt;String&gt;**](String.md)| Search by studied effect | [optional] 
 **projects** | [**List&lt;String&gt;**](String.md)| Search by related project uri | [optional] 
 **isPublic** | **bool**| Search private(false) or public experiments(true) | [optional] 
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

# **updateExperiment**
> ObjectUriResponse updateExperiment(authorization, body, acceptLanguage)

Update an experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var authorization = authorization_example; // String | Authentication token
var body = new ExperimentCreationDTO(); // ExperimentCreationDTO | Experiment description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateExperiment(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->updateExperiment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**ExperimentCreationDTO**](ExperimentCreationDTO.md)| Experiment description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateCSV1**
> DataCSVValidationDTO validateCSV1(uri, provenance, file, authorization, acceptLanguage)

Import a CSV file for the given experiment URI and scientific object type.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ExperimentsApi();
var uri = "http://opensilex/set/experiments/ZA17"; // String | Experiment URI
var provenance = "http://opensilex.dev/id/provenance/provenancelabel"; // String | Provenance URI
var file = /path/to/file.txt; // MultipartFile | Data file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.validateCSV1(uri, provenance, file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ExperimentsApi->validateCSV1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Experiment URI | 
 **provenance** | **String**| Provenance URI | 
 **file** | **MultipartFile**| Data file | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**DataCSVValidationDTO**](DataCSVValidationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

