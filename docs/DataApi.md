# swagger.api.DataApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addListData**](DataApi.md#addListData) | **POST** /core/data | Add data
[**countData**](DataApi.md#countData) | **GET** /core/data/count | Count data
[**createProvenance**](DataApi.md#createProvenance) | **POST** /core/provenances | Add a provenance
[**deleteData**](DataApi.md#deleteData) | **DELETE** /core/data/{uri} | Delete data
[**deleteDataOnSearch**](DataApi.md#deleteDataOnSearch) | **DELETE** /core/data | Delete data on criteria
[**deleteProvenance**](DataApi.md#deleteProvenance) | **DELETE** /core/provenances/{uri} | Delete a provenance that doesn&#39;t describe data
[**exportData**](DataApi.md#exportData) | **GET** /core/data/export | Export data
[**getData**](DataApi.md#getData) | **GET** /core/data/{uri} | Get data
[**getDataFile**](DataApi.md#getDataFile) | **GET** /core/datafiles/{uri} | Get a data file
[**getDataFileDescription**](DataApi.md#getDataFileDescription) | **GET** /core/datafiles/{uri}/description | Get a data file description
[**getDataFileDescriptionsBySearch**](DataApi.md#getDataFileDescriptionsBySearch) | **GET** /core/datafiles | Search data files
[**getDatafilesProvenances**](DataApi.md#getDatafilesProvenances) | **GET** /core/datafiles/provenances | Get provenances linked to datafiles
[**getPicturesThumbnails**](DataApi.md#getPicturesThumbnails) | **GET** /core/datafiles/{uri}/thumbnail | Get a picture thumbnail
[**getProvenance**](DataApi.md#getProvenance) | **GET** /core/provenances/{uri} | Get a provenance
[**getProvenancesByURIs**](DataApi.md#getProvenancesByURIs) | **GET** /core/provenances/by_uris | Get a list of provenances by their URIs
[**getUsedProvenances**](DataApi.md#getUsedProvenances) | **GET** /core/data/provenances | Get provenances linked to data
[**getUsedVariables**](DataApi.md#getUsedVariables) | **GET** /core/data/variables | Get variables linked to data
[**importCSVData**](DataApi.md#importCSVData) | **POST** /core/data/import | Import a CSV file for the given provenanceURI
[**postDataFile**](DataApi.md#postDataFile) | **POST** /core/datafiles | Add a data file
[**postDataFilePaths**](DataApi.md#postDataFilePaths) | **POST** /core/datafiles/description | Describe datafiles and give their relative paths in the configured storage system. In the case of already stored datafiles.
[**searchDataList**](DataApi.md#searchDataList) | **GET** /core/data | Search data
[**searchProvenance**](DataApi.md#searchProvenance) | **GET** /core/provenances | Get provenances
[**update**](DataApi.md#update) | **PUT** /core/data | Update data
[**updateConfidence**](DataApi.md#updateConfidence) | **PUT** /core/data/{uri}/confidence | Update confidence index
[**updateProvenance**](DataApi.md#updateProvenance) | **PUT** /core/provenances | Update a provenance
[**validateCSV**](DataApi.md#validateCSV) | **POST** /core/data/import_validation | Import a CSV file for the given provenanceURI.


# **addListData**
> ObjectUriResponse addListData(authorization, body, acceptLanguage)

Add data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var body = [new List&lt;DataCreationDTO&gt;()]; // List<DataCreationDTO> | Data description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.addListData(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->addListData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**List&lt;DataCreationDTO&gt;**](DataCreationDTO.md)| Data description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **countData**
> int countData(authorization, startDate, endDate, timezone, experiments, targets, variables, devices, minConfidence, maxConfidence, provenances, metadata, acceptLanguage)

Count data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var startDate = "2020-08-21T00:00:00+01:00"; // String | Search by minimal date
var endDate = "2020-09-21T00:00:00+01:00"; // String | Search by maximal date
var timezone = "Europe/Paris"; // String | Precise the timezone corresponding to the given dates
var experiments = ["http://opensilex/set/experiments/ZA17"]; // List<String> | Search by experiment uris
var targets = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by target uris
var variables = ["http://opensilex.dev/variable#variable.2020-08-21_11-21-23entity6_method6_quality6_unit6"]; // List<String> | Search by variables uris
var devices = ["http://opensilex.dev/set/device/sensingdevice-sensor_01"]; // List<String> | Search by devices uris
var minConfidence = 0.5; // double | Search by minimal confidence index
var maxConfidence = 1.0; // double | Search by maximal confidence index
var provenances = ["http://opensilex.dev/provenance/1598001689415"]; // List<String> | Search by provenances
var metadata = "{ \"LabelView\" : \"side90\",\n\"paramA\" : \"90\"}"; // String | Search by metadata
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.countData(authorization, startDate, endDate, timezone, experiments, targets, variables, devices, minConfidence, maxConfidence, provenances, metadata, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->countData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **startDate** | **String**| Search by minimal date | [optional] 
 **endDate** | **String**| Search by maximal date | [optional] 
 **timezone** | **String**| Precise the timezone corresponding to the given dates | [optional] 
 **experiments** | [**List&lt;String&gt;**](String.md)| Search by experiment uris | [optional] 
 **targets** | [**List&lt;String&gt;**](String.md)| Search by target uris | [optional] 
 **variables** | [**List&lt;String&gt;**](String.md)| Search by variables uris | [optional] 
 **devices** | [**List&lt;String&gt;**](String.md)| Search by devices uris | [optional] 
 **minConfidence** | **double**| Search by minimal confidence index | [optional] 
 **maxConfidence** | **double**| Search by maximal confidence index | [optional] 
 **provenances** | [**List&lt;String&gt;**](String.md)| Search by provenances | [optional] 
 **metadata** | **String**| Search by metadata | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProvenance**
> ObjectUriResponse createProvenance(authorization, body, acceptLanguage)

Add a provenance



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var body = new ProvenanceCreationDTO(); // ProvenanceCreationDTO | Provenance description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createProvenance(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->createProvenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**ProvenanceCreationDTO**](ProvenanceCreationDTO.md)| Provenance description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteData**
> ObjectUriResponse deleteData(uri, authorization, acceptLanguage)

Delete data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var uri = "http://opensilex.dev/id/data/1598857852858"; // String | Data URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteData(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->deleteData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Data URI | 
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

# **deleteDataOnSearch**
> ObjectUriResponse deleteDataOnSearch(authorization, experiment, target, variable, provenance, acceptLanguage)

Delete data on criteria



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var experiment = "http://opensilex/set/experiments/ZA17"; // String | Search by experiment uri
var target = "http://opensilex.dev/opensilex/2020/o20000345"; // String | Search by target uri
var variable = "http://opensilex.dev/variable#variable.2020-08-21_11-21-23entity6_method6_quality6_unit6"; // String | Search by variable uri
var provenance = "http://opensilex.dev/provenance/1598001689415"; // String | Search by provenance uri
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteDataOnSearch(authorization, experiment, target, variable, provenance, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->deleteDataOnSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **experiment** | **String**| Search by experiment uri | [optional] 
 **target** | **String**| Search by target uri | [optional] 
 **variable** | **String**| Search by variable uri | [optional] 
 **provenance** | **String**| Search by provenance uri | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteProvenance**
> ObjectUriResponse deleteProvenance(uri, authorization, acceptLanguage)

Delete a provenance that doesn't describe data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var uri = "http://opensilex.dev/id/provenance/provenancelabel"; // String | Provenance URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteProvenance(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->deleteProvenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Provenance URI | 
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

# **exportData**
> exportData(authorization, startDate, endDate, timezone, experiments, targets, variables, devices, minConfidence, maxConfidence, provenances, metadata, mode, withRawData, orderBy, page, pageSize, acceptLanguage)

Export data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var startDate = "2020-08-21T00:00:00+01:00"; // String | Search by minimal date
var endDate = "2020-09-21T00:00:00+01:00"; // String | Search by maximal date
var timezone = "Europe/Paris"; // String | Precise the timezone corresponding to the given dates
var experiments = ["http://opensilex/set/experiments/ZA17"]; // List<String> | Search by experiment uris
var targets = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by targets
var variables = ["http://opensilex.dev/variable#variable.2020-08-21_11-21-23entity6_method6_quality6_unit6"]; // List<String> | Search by variables
var devices = ["http://opensilex.dev/set/device/sensingdevice-sensor_01"]; // List<String> | Search by devices uris
var minConfidence = 0.5; // double | Search by minimal confidence index
var maxConfidence = 0.5; // double | Search by maximal confidence index
var provenances = ["http://opensilex.dev/provenance/1598001689415"]; // List<String> | Search by provenances
var metadata = "{ \"LabelView\" : \"side90\",\n\"paramA\" : \"90\"}"; // String | Search by metadata
var mode = "wide"; // String | Format wide or long
var withRawData = true; // bool | Export also raw_data
var orderBy = ["date=desc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.exportData(authorization, startDate, endDate, timezone, experiments, targets, variables, devices, minConfidence, maxConfidence, provenances, metadata, mode, withRawData, orderBy, page, pageSize, acceptLanguage);
} catch (e) {
    print("Exception when calling DataApi->exportData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **startDate** | **String**| Search by minimal date | [optional] 
 **endDate** | **String**| Search by maximal date | [optional] 
 **timezone** | **String**| Precise the timezone corresponding to the given dates | [optional] 
 **experiments** | [**List&lt;String&gt;**](String.md)| Search by experiment uris | [optional] 
 **targets** | [**List&lt;String&gt;**](String.md)| Search by targets | [optional] 
 **variables** | [**List&lt;String&gt;**](String.md)| Search by variables | [optional] 
 **devices** | [**List&lt;String&gt;**](String.md)| Search by devices uris | [optional] 
 **minConfidence** | **double**| Search by minimal confidence index | [optional] 
 **maxConfidence** | **double**| Search by maximal confidence index | [optional] 
 **provenances** | [**List&lt;String&gt;**](String.md)| Search by provenances | [optional] 
 **metadata** | **String**| Search by metadata | [optional] 
 **mode** | **String**| Format wide or long | [optional] [default to wide]
 **withRawData** | **bool**| Export also raw_data | [optional] [default to false]
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

# **getData**
> DataGetDTO getData(uri, authorization, acceptLanguage)

Get data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var uri = uri_example; // String | Data URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getData(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->getData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Data URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**DataGetDTO**](DataGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataFile**
> getDataFile(uri, authorization, acceptLanguage)

Get a data file



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var uri = uri_example; // String | Search by fileUri
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.getDataFile(uri, authorization, acceptLanguage);
} catch (e) {
    print("Exception when calling DataApi->getDataFile: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Search by fileUri | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataFileDescription**
> DataFileGetDTO getDataFileDescription(uri, authorization, acceptLanguage)

Get a data file description



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var uri = uri_example; // String | Search by fileUri
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getDataFileDescription(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->getDataFileDescription: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Search by fileUri | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**DataFileGetDTO**](DataFileGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataFileDescriptionsBySearch**
> List<DataFileGetDTO> getDataFileDescriptionsBySearch(authorization, rdfType, startDate, endDate, timezone, experiments, targets, devices, provenances, metadata, orderBy, page, pageSize, acceptLanguage)

Search data files



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var rdfType = rdfType_example; // String | Search by rdf type uri
var startDate = "2020-08-21T00:00:00+01:00"; // String | Search by minimal date
var endDate = "2020-09-21T00:00:00+01:00"; // String | Search by maximal date
var timezone = "Europe/Paris"; // String | Precise the timezone corresponding to the given dates
var experiments = ["http://opensilex/set/experiments/ZA17"]; // List<String> | Search by experiments
var targets = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by targets uris list
var devices = ["http://opensilex.dev/set/device/sensingdevice-sensor_01"]; // List<String> | Search by devices uris
var provenances = ["http://opensilex.dev/provenance/1598001689415"]; // List<String> | Search by provenance uris list
var metadata = "{ \"LabelView\" : \"side90\",\n\"paramA\" : \"90\"}"; // String | Search by metadata
var orderBy = ["date=desc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getDataFileDescriptionsBySearch(authorization, rdfType, startDate, endDate, timezone, experiments, targets, devices, provenances, metadata, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->getDataFileDescriptionsBySearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **rdfType** | **String**| Search by rdf type uri | [optional] 
 **startDate** | **String**| Search by minimal date | [optional] 
 **endDate** | **String**| Search by maximal date | [optional] 
 **timezone** | **String**| Precise the timezone corresponding to the given dates | [optional] 
 **experiments** | [**List&lt;String&gt;**](String.md)| Search by experiments | [optional] 
 **targets** | [**List&lt;String&gt;**](String.md)| Search by targets uris list | [optional] 
 **devices** | [**List&lt;String&gt;**](String.md)| Search by devices uris | [optional] 
 **provenances** | [**List&lt;String&gt;**](String.md)| Search by provenance uris list | [optional] 
 **metadata** | **String**| Search by metadata | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<DataFileGetDTO>**](DataFileGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatafilesProvenances**
> List<ProvenanceGetDTO> getDatafilesProvenances(authorization, experiments, targets, devices, acceptLanguage)

Get provenances linked to datafiles



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var experiments = ["http://opensilex/set/experiments/ZA17"]; // List<String> | Search by experiment uris
var targets = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by targets uris
var devices = ["http://opensilex.dev/set/device/sensingdevice-sensor_01"]; // List<String> | Search by devices uris
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getDatafilesProvenances(authorization, experiments, targets, devices, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->getDatafilesProvenances: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **experiments** | [**List&lt;String&gt;**](String.md)| Search by experiment uris | [optional] 
 **targets** | [**List&lt;String&gt;**](String.md)| Search by targets uris | [optional] 
 **devices** | [**List&lt;String&gt;**](String.md)| Search by devices uris | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProvenanceGetDTO>**](ProvenanceGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPicturesThumbnails**
> getPicturesThumbnails(uri, authorization, scaledWidth, scaledHeight, acceptLanguage)

Get a picture thumbnail



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var uri = uri_example; // String | Search by fileUri
var authorization = authorization_example; // String | Authentication token
var scaledWidth = 56; // int | Thumbnail width
var scaledHeight = 56; // int | Thumbnail height
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.getPicturesThumbnails(uri, authorization, scaledWidth, scaledHeight, acceptLanguage);
} catch (e) {
    print("Exception when calling DataApi->getPicturesThumbnails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Search by fileUri | 
 **authorization** | **String**| Authentication token | 
 **scaledWidth** | **int**| Thumbnail width | [optional] [default to 640]
 **scaledHeight** | **int**| Thumbnail height | [optional] [default to 360]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/octet-stream

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProvenance**
> ProvenanceGetDTO getProvenance(uri, authorization, acceptLanguage)

Get a provenance



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var uri = uri_example; // String | Provenance URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getProvenance(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->getProvenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Provenance URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ProvenanceGetDTO**](ProvenanceGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProvenancesByURIs**
> List<ProvenanceGetDTO> getProvenancesByURIs(uris, authorization, acceptLanguage)

Get a list of provenances by their URIs



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var uris = []; // List<String> | Provenances URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getProvenancesByURIs(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->getProvenancesByURIs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Provenances URIs | 
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

# **getUsedProvenances**
> List<ProvenanceGetDTO> getUsedProvenances(authorization, experiments, targets, variables, devices, acceptLanguage)

Get provenances linked to data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var experiments = ["http://opensilex/set/experiments/ZA17"]; // List<String> | Search by experiment uris
var targets = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by targets uris
var variables = ["http://opensilex.dev/variable#variable.2020-08-21_11-21-23entity6_method6_quality6_unit6"]; // List<String> | Search by variables uris
var devices = ["http://opensilex.dev/set/device/sensingdevice-sensor_01"]; // List<String> | Search by devices uris
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getUsedProvenances(authorization, experiments, targets, variables, devices, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->getUsedProvenances: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **experiments** | [**List&lt;String&gt;**](String.md)| Search by experiment uris | [optional] 
 **targets** | [**List&lt;String&gt;**](String.md)| Search by targets uris | [optional] 
 **variables** | [**List&lt;String&gt;**](String.md)| Search by variables uris | [optional] 
 **devices** | [**List&lt;String&gt;**](String.md)| Search by devices uris | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProvenanceGetDTO>**](ProvenanceGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsedVariables**
> List<ProvenanceGetDTO> getUsedVariables(authorization, experiments, targets, provenances, acceptLanguage)

Get variables linked to data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var experiments = ["http://opensilex/set/experiments/ZA17"]; // List<String> | Search by experiment uris
var targets = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by targets uris
var provenances = ["http://opensilex.dev/variable#variable.2020-08-21_11-21-23entity6_method6_quality6_unit6"]; // List<String> | Search by provenance uris
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getUsedVariables(authorization, experiments, targets, provenances, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->getUsedVariables: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **experiments** | [**List&lt;String&gt;**](String.md)| Search by experiment uris | [optional] 
 **targets** | [**List&lt;String&gt;**](String.md)| Search by targets uris | [optional] 
 **provenances** | [**List&lt;String&gt;**](String.md)| Search by provenance uris | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ProvenanceGetDTO>**](ProvenanceGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importCSVData**
> DataCSVValidationDTO importCSVData(provenance, file, authorization, acceptLanguage)

Import a CSV file for the given provenanceURI



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var provenance = "http://opensilex.dev/id/provenance/provenancelabel"; // String | Provenance URI
var file = /path/to/file.txt; // MultipartFile | File
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.importCSVData(provenance, file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->importCSVData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provenance** | **String**| Provenance URI | 
 **file** | **MultipartFile**| File | 
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

# **postDataFile**
> ObjectUriResponse postDataFile(description, file, authorization, acceptLanguage)

Add a data file

{\"rdf_type\":\"http://www.opensilex.org/vocabulary/oeso#Image\", \"date\":\"2020-08-21T00:00:00+01:00\", \"target\":\"http://plot01\", \"provenance\": { \"uri\":\"http://opensilex.dev/provenance/1598001689415\" }, \"metadata\":{ \"LabelView\" : \"side90\", \"paramA\" : \"90\"}}

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var description = description_example; // String | File description with metadata
var file = /path/to/file.txt; // MultipartFile | Data file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.postDataFile(description, file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->postDataFile: $e\n");
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

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postDataFilePaths**
> ObjectUriResponse postDataFilePaths(body, authorization, acceptLanguage)

Describe datafiles and give their relative paths in the configured storage system. In the case of already stored datafiles.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var body = [new List&lt;DataFilePathCreationDTO&gt;()]; // List<DataFilePathCreationDTO> | Metadata of the file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.postDataFilePaths(body, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->postDataFilePaths: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**List&lt;DataFilePathCreationDTO&gt;**](DataFilePathCreationDTO.md)| Metadata of the file | 
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

# **searchDataList**
> List<DataGetDTO> searchDataList(authorization, startDate, endDate, timezone, experiments, targets, variables, devices, minConfidence, maxConfidence, provenances, metadata, orderBy, page, pageSize, acceptLanguage)

Search data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var startDate = "2020-08-21T00:00:00+01:00"; // String | Search by minimal date
var endDate = "2020-09-21T00:00:00+01:00"; // String | Search by maximal date
var timezone = "Europe/Paris"; // String | Precise the timezone corresponding to the given dates
var experiments = ["http://opensilex/set/experiments/ZA17"]; // List<String> | Search by experiment uris
var targets = ["http://opensilex.dev/opensilex/2020/o20000345"]; // List<String> | Search by targets uris
var variables = ["http://opensilex.dev/variable#variable.2020-08-21_11-21-23entity6_method6_quality6_unit6"]; // List<String> | Search by variables uris
var devices = ["http://opensilex.dev/set/device/sensingdevice-sensor_01"]; // List<String> | Search by devices uris
var minConfidence = 0.5; // double | Search by minimal confidence index
var maxConfidence = 1.0; // double | Search by maximal confidence index
var provenances = ["http://opensilex.dev/provenance/1598001689415"]; // List<String> | Search by provenances
var metadata = "{ \"LabelView\" : \"side90\",\n\"paramA\" : \"90\"}"; // String | Search by metadata
var orderBy = ["date=desc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchDataList(authorization, startDate, endDate, timezone, experiments, targets, variables, devices, minConfidence, maxConfidence, provenances, metadata, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->searchDataList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **startDate** | **String**| Search by minimal date | [optional] 
 **endDate** | **String**| Search by maximal date | [optional] 
 **timezone** | **String**| Precise the timezone corresponding to the given dates | [optional] 
 **experiments** | [**List&lt;String&gt;**](String.md)| Search by experiment uris | [optional] 
 **targets** | [**List&lt;String&gt;**](String.md)| Search by targets uris | [optional] 
 **variables** | [**List&lt;String&gt;**](String.md)| Search by variables uris | [optional] 
 **devices** | [**List&lt;String&gt;**](String.md)| Search by devices uris | [optional] 
 **minConfidence** | **double**| Search by minimal confidence index | [optional] 
 **maxConfidence** | **double**| Search by maximal confidence index | [optional] 
 **provenances** | [**List&lt;String&gt;**](String.md)| Search by provenances | [optional] 
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

# **searchProvenance**
> List<ProvenanceGetDTO> searchProvenance(authorization, name, description, activity, activityType, agent, agentType, orderBy, page, pageSize, acceptLanguage)

Get provenances



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var name = name_example; // String | Regex pattern for filtering by name
var description = description_example; // String | Search by description
var activity = activity_example; // String | Search by activity URI
var activityType = activityType_example; // String | Search by activity type
var agent = agent_example; // String | Search by agent URI
var agentType = agentType_example; // String | Search by agent type
var orderBy = ["date=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchProvenance(authorization, name, description, activity, activityType, agent, agentType, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->searchProvenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **update**
> ObjectUriResponse update(authorization, body, acceptLanguage)

Update data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var body = new DataUpdateDTO(); // DataUpdateDTO | Data description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.update(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->update: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**DataUpdateDTO**](DataUpdateDTO.md)| Data description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateConfidence**
> ObjectUriResponse updateConfidence(uri, authorization, body, acceptLanguage)

Update confidence index



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var uri = uri_example; // String | Data URI
var authorization = authorization_example; // String | Authentication token
var body = new DataConfidenceDTO(); // DataConfidenceDTO | Data description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateConfidence(uri, authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->updateConfidence: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Data URI | 
 **authorization** | **String**| Authentication token | 
 **body** | [**DataConfidenceDTO**](DataConfidenceDTO.md)| Data description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProvenance**
> ObjectUriResponse updateProvenance(authorization, body, acceptLanguage)

Update a provenance



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var authorization = authorization_example; // String | Authentication token
var body = new ProvenanceUpdateDTO(); // ProvenanceUpdateDTO | Provenance description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateProvenance(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->updateProvenance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**ProvenanceUpdateDTO**](ProvenanceUpdateDTO.md)| Provenance description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateCSV**
> DataCSVValidationDTO validateCSV(provenance, file, authorization, acceptLanguage)

Import a CSV file for the given provenanceURI.



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DataApi();
var provenance = "http://opensilex.dev/id/provenance/provenancelabel"; // String | Provenance URI
var file = /path/to/file.txt; // MultipartFile | File
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.validateCSV(provenance, file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DataApi->validateCSV: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **provenance** | **String**| Provenance URI | 
 **file** | **MultipartFile**| File | 
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

