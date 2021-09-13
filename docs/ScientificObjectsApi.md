# swagger.api.ScientificObjectsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createScientificObject**](ScientificObjectsApi.md#createScientificObject) | **POST** /core/scientific_objects | Create a scientific object for the given experiment
[**deleteScientificObject**](ScientificObjectsApi.md#deleteScientificObject) | **DELETE** /core/scientific_objects/{uri} | Delete a scientific object
[**exportCSV**](ScientificObjectsApi.md#exportCSV) | **POST** /core/scientific_objects/export | Export a given list of scientific object URIs to csv data file
[**getScientificObjectDataFilesProvenances**](ScientificObjectsApi.md#getScientificObjectDataFilesProvenances) | **GET** /core/scientific_objects/{uri}/datafiles/provenances | Get provenances of datafiles linked to this scientific object
[**getScientificObjectDataProvenances**](ScientificObjectsApi.md#getScientificObjectDataProvenances) | **GET** /core/scientific_objects/{uri}/data/provenances | Get provenances of data that have been measured on this scientific object
[**getScientificObjectDetail**](ScientificObjectsApi.md#getScientificObjectDetail) | **GET** /core/scientific_objects/{uri} | Get scientific object detail
[**getScientificObjectDetailByExperiments**](ScientificObjectsApi.md#getScientificObjectDetailByExperiments) | **GET** /core/scientific_objects/{uri}/experiments | Get scientific object detail for each experiments, a null value for experiment in response means a properties defined outside of any experiment (shared object).
[**getScientificObjectVariables**](ScientificObjectsApi.md#getScientificObjectVariables) | **GET** /core/scientific_objects/{uri}/variables | Get variables measured on this scientific object
[**getScientificObjectsChildren**](ScientificObjectsApi.md#getScientificObjectsChildren) | **GET** /core/scientific_objects/children | Get list of scientific object children
[**getScientificObjectsListByUris**](ScientificObjectsApi.md#getScientificObjectsListByUris) | **POST** /core/scientific_objects/by_uris | Get scientific objet list of a given experiment URI
[**getUsedTypes**](ScientificObjectsApi.md#getUsedTypes) | **GET** /core/scientific_objects/used_types | get used scientific object types
[**importCSV**](ScientificObjectsApi.md#importCSV) | **POST** /core/scientific_objects/import | Import a CSV file for the given experiment URI and scientific object type.
[**searchScientificObjects**](ScientificObjectsApi.md#searchScientificObjects) | **GET** /core/scientific_objects | Search list of scientific objects
[**searchScientificObjectsWithGeometryListByUris**](ScientificObjectsApi.md#searchScientificObjectsWithGeometryListByUris) | **GET** /core/scientific_objects/geometry | Get scientific objet list with geometry of a given experiment URI
[**updateScientificObject**](ScientificObjectsApi.md#updateScientificObject) | **PUT** /core/scientific_objects | Update a scientific object for the given experiment
[**validateCSV2**](ScientificObjectsApi.md#validateCSV2) | **POST** /core/scientific_objects/import_validation | Validate a CSV file for the given experiment URI and scientific object type.


# **createScientificObject**
> ObjectUriResponse createScientificObject(body, authorization, acceptLanguage)

Create a scientific object for the given experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var body = new ScientificObjectCreationDTO(); // ScientificObjectCreationDTO | Scientific object description
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.createScientificObject(body, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->createScientificObject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ScientificObjectCreationDTO**](ScientificObjectCreationDTO.md)| Scientific object description | 
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

# **deleteScientificObject**
> ObjectUriResponse deleteScientificObject(uri, authorization, experiment, acceptLanguage)

Delete a scientific object



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var uri = http://example.com/; // String | scientific object URI
var authorization = authorization_example; // String | Authentication token
var experiment = http://example.com/; // String | Experiment URI
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.deleteScientificObject(uri, authorization, experiment, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->deleteScientificObject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| scientific object URI | 
 **authorization** | **String**| Authentication token | 
 **experiment** | **String**| Experiment URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportCSV**
> exportCSV(authorization, body, acceptLanguage)

Export a given list of scientific object URIs to csv data file



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var authorization = authorization_example; // String | Authentication token
var body = new ScientificObjectCsvExportDTO(); // ScientificObjectCsvExportDTO | CSV export configuration
var acceptLanguage = en; // String | Request accepted language

try { 
    api_instance.exportCSV(authorization, body, acceptLanguage);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->exportCSV: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**ScientificObjectCsvExportDTO**](ScientificObjectCsvExportDTO.md)| CSV export configuration | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScientificObjectDataFilesProvenances**
> List<ProvenanceGetDTO> getScientificObjectDataFilesProvenances(uri, authorization, acceptLanguage)

Get provenances of datafiles linked to this scientific object



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var uri = http://example.com/; // String | Scientific Object URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getScientificObjectDataFilesProvenances(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->getScientificObjectDataFilesProvenances: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Scientific Object URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProvenanceGetDTO>**](ProvenanceGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScientificObjectDataProvenances**
> List<ProvenanceGetDTO> getScientificObjectDataProvenances(uri, authorization, acceptLanguage)

Get provenances of data that have been measured on this scientific object



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var uri = http://example.com/; // String | Scientific Object URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getScientificObjectDataProvenances(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->getScientificObjectDataProvenances: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Scientific Object URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProvenanceGetDTO>**](ProvenanceGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScientificObjectDetail**
> ScientificObjectDetailDTO getScientificObjectDetail(uri, authorization, experiment, acceptLanguage)

Get scientific object detail



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var uri = http://opensilex.org/set/scientific-objects/so-1357dz_pg_34zm4384wwveg_323_37arch2017-03-30; // String | scientific object URI
var authorization = authorization_example; // String | Authentication token
var experiment = http://opensilex.org/set/experiments/21ik1_cims-on; // String | Experiment URI
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getScientificObjectDetail(uri, authorization, experiment, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->getScientificObjectDetail: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| scientific object URI | 
 **authorization** | **String**| Authentication token | 
 **experiment** | **String**| Experiment URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ScientificObjectDetailDTO**](ScientificObjectDetailDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScientificObjectDetailByExperiments**
> List<ScientificObjectDetailByExperimentsDTO> getScientificObjectDetailByExperiments(uri, authorization, acceptLanguage)

Get scientific object detail for each experiments, a null value for experiment in response means a properties defined outside of any experiment (shared object).



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var uri = http://example.com/; // String | scientific object URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getScientificObjectDetailByExperiments(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->getScientificObjectDetailByExperiments: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| scientific object URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ScientificObjectDetailByExperimentsDTO>**](ScientificObjectDetailByExperimentsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScientificObjectVariables**
> List<NamedResourceDTO> getScientificObjectVariables(uri, authorization, acceptLanguage)

Get variables measured on this scientific object



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var uri = http://example.com/; // String | Scientific Object URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getScientificObjectVariables(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->getScientificObjectVariables: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Scientific Object URI | 
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

# **getScientificObjectsChildren**
> List<ScientificObjectNodeWithChildrenDTO> getScientificObjectsChildren(authorization, parent, experiment, facility, orderBy, page, pageSize, acceptLanguage)

Get list of scientific object children



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var authorization = authorization_example; // String | Authentication token
var parent = http://example.com/; // String | Parent object URI
var experiment = http://example.com/; // String | Experiment URI
var facility = diaphen:serre-2; // String | Facility
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getScientificObjectsChildren(authorization, parent, experiment, facility, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->getScientificObjectsChildren: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **parent** | **String**| Parent object URI | [optional] 
 **experiment** | **String**| Experiment URI | [optional] 
 **facility** | **String**| Facility | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ScientificObjectNodeWithChildrenDTO>**](ScientificObjectNodeWithChildrenDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScientificObjectsListByUris**
> List<ScientificObjectNodeDTO> getScientificObjectsListByUris(authorization, experiment, body, acceptLanguage)

Get scientific objet list of a given experiment URI



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var authorization = authorization_example; // String | Authentication token
var experiment = http://example.com/; // String | Experiment URI
var body = [new List&lt;String&gt;()]; // List<String> | Scientific object uris
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getScientificObjectsListByUris(authorization, experiment, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->getScientificObjectsListByUris: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **experiment** | **String**| Experiment URI | [optional] 
 **body** | **List&lt;String&gt;**| Scientific object uris | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ScientificObjectNodeDTO>**](ScientificObjectNodeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsedTypes**
> List<ListItemDTO> getUsedTypes(authorization, experiment, acceptLanguage)

get used scientific object types



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var authorization = authorization_example; // String | Authentication token
var experiment = http://example.com/; // String | Experiment URI
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getUsedTypes(authorization, experiment, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->getUsedTypes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **experiment** | **String**| Experiment URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ListItemDTO>**](ListItemDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importCSV**
> CSVValidationDTO importCSV(description, file, authorization, acceptLanguage)

Import a CSV file for the given experiment URI and scientific object type.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var description = description_example; // String | File description with metadata
var file = /path/to/file.txt; // MultipartFile | Data file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.importCSV(description, file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->importCSV: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **String**| File description with metadata | 
 **file** | **MultipartFile**| Data file | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**CSVValidationDTO**](CSVValidationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchScientificObjects**
> List<ScientificObjectNodeDTO> searchScientificObjects(authorization, experiment, rdfTypes, name, parent, germplasm, factorLevels, facility, existenceDate, creationDate, orderBy, page, pageSize, acceptLanguage)

Search list of scientific objects



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var authorization = authorization_example; // String | Authentication token
var experiment = http://example.com/; // String | Experiment URI
var rdfTypes = [vocabulary:Plant]; // List<String> | RDF type filter
var name = .*; // String | Regex pattern for filtering by name
var parent = http://example.com/; // String | Parent URI
var germplasm = http://aims.fao.org/aos/agrovoc/c_1066; // String | Germplasm URI
var factorLevels = [vocabulary:IrrigationStress]; // List<String> | Factor levels URI
var facility = diaphen:serre-2; // String | Facility
var existenceDate = 2013-10-20; // DateTime | Date to filter object existence
var creationDate = 2013-10-20; // DateTime | Date to filter object creation
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchScientificObjects(authorization, experiment, rdfTypes, name, parent, germplasm, factorLevels, facility, existenceDate, creationDate, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->searchScientificObjects: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **experiment** | **String**| Experiment URI | [optional] 
 **rdfTypes** | [**List&lt;String&gt;**](String.md)| RDF type filter | [optional] 
 **name** | **String**| Regex pattern for filtering by name | [optional] [default to .*]
 **parent** | **String**| Parent URI | [optional] 
 **germplasm** | **String**| Germplasm URI | [optional] 
 **factorLevels** | [**List&lt;String&gt;**](String.md)| Factor levels URI | [optional] 
 **facility** | **String**| Facility | [optional] 
 **existenceDate** | **DateTime**| Date to filter object existence | [optional] 
 **creationDate** | **DateTime**| Date to filter object creation | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ScientificObjectNodeDTO>**](ScientificObjectNodeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchScientificObjectsWithGeometryListByUris**
> List<ScientificObjectNodeDTO> searchScientificObjectsWithGeometryListByUris(experiment, authorization, acceptLanguage)

Get scientific objet list with geometry of a given experiment URI



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var experiment = http://example.com/; // String | Context URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchScientificObjectsWithGeometryListByUris(experiment, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->searchScientificObjectsWithGeometryListByUris: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experiment** | **String**| Context URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ScientificObjectNodeDTO>**](ScientificObjectNodeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateScientificObject**
> ObjectUriResponse updateScientificObject(body, authorization, acceptLanguage)

Update a scientific object for the given experiment



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var body = new ScientificObjectCreationDTO(); // ScientificObjectCreationDTO | Scientific object description
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.updateScientificObject(body, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->updateScientificObject: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ScientificObjectCreationDTO**](ScientificObjectCreationDTO.md)| Scientific object description | 
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

# **validateCSV2**
> CSVValidationDTO validateCSV2(description, file, authorization, acceptLanguage)

Validate a CSV file for the given experiment URI and scientific object type.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new ScientificObjectsApi();
var description = description_example; // String | File description with metadata
var file = /path/to/file.txt; // MultipartFile | Data file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.validateCSV2(description, file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling ScientificObjectsApi->validateCSV2: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **description** | **String**| File description with metadata | 
 **file** | **MultipartFile**| Data file | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**CSVValidationDTO**](CSVValidationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

