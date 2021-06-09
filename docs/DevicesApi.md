# swagger.api.DevicesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createDevice**](DevicesApi.md#createDevice) | **POST** /core/devices | Create a device
[**deleteDevice**](DevicesApi.md#deleteDevice) | **DELETE** /core/devices/{uri} | Delete a device
[**exportDevices**](DevicesApi.md#exportDevices) | **GET** /core/devices/export | export devices
[**exportList**](DevicesApi.md#exportList) | **POST** /core/devices/export_by_uris | export devices
[**getDevice**](DevicesApi.md#getDevice) | **GET** /core/devices/{uri} | Get device detail
[**getDeviceDataFilesProvenances**](DevicesApi.md#getDeviceDataFilesProvenances) | **GET** /core/devices/{uri}/datafiles/provenances | Get provenances of datafiles linked to this device
[**getDeviceDataProvenances**](DevicesApi.md#getDeviceDataProvenances) | **GET** /core/devices/{uri}/data/provenances | Get provenances of data that have been measured on this device
[**getDeviceVariables**](DevicesApi.md#getDeviceVariables) | **GET** /core/devices/{uri}/variables | Get variables measured by the device
[**searchDeviceData**](DevicesApi.md#searchDeviceData) | **GET** /core/devices/{uri}/data | Search device data
[**searchDeviceDatafiles**](DevicesApi.md#searchDeviceDatafiles) | **GET** /core/devices/{uri}/datafiles | Search device datafiles descriptions
[**searchDevices**](DevicesApi.md#searchDevices) | **GET** /core/devices | Search devices
[**updateDevice**](DevicesApi.md#updateDevice) | **PUT** /core/devices | Update a device


# **createDevice**
> ObjectUriResponse createDevice(authorization, body, checkOnly, acceptLanguage)

Create a device



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var authorization = authorization_example; // String | Authentication token
var body = new DeviceCreationDTO(); // DeviceCreationDTO | Device description
var checkOnly = false; // bool | Checking only
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.createDevice(authorization, body, checkOnly, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->createDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**DeviceCreationDTO**](DeviceCreationDTO.md)| Device description | [optional] 
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

# **deleteDevice**
> ObjectUriResponse deleteDevice(uri, authorization, acceptLanguage)

Delete a device



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var uri = http://example.com/; // String | Device URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.deleteDevice(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->deleteDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Device URI | 
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

# **exportDevices**
> exportDevices(authorization, namePattern, rdfType, year, existenceDate, brandPattern, modelPattern, serialNumberPattern, metadata, acceptLanguage)

export devices



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var authorization = authorization_example; // String | Authentication token
var namePattern = .*; // String | Regex pattern for filtering by name
var rdfType = vocabulary:SensingDevice; // String | RDF type filter
var year = 2017; // int | Search by year
var existenceDate = 2013-10-20; // DateTime | Date to filter device existence
var brandPattern = .*; // String | Regex pattern for filtering by brand
var modelPattern = .*; // String | Regex pattern for filtering by model
var serialNumberPattern = .*; // String | Regex pattern for filtering by serial number
var metadata = {}; // String | Search by metadata
var acceptLanguage = en; // String | Request accepted language

try { 
    api_instance.exportDevices(authorization, namePattern, rdfType, year, existenceDate, brandPattern, modelPattern, serialNumberPattern, metadata, acceptLanguage);
} catch (e) {
    print("Exception when calling DevicesApi->exportDevices: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **namePattern** | **String**| Regex pattern for filtering by name | [optional] [default to .*]
 **rdfType** | **String**| RDF type filter | [optional] 
 **year** | **int**| Search by year | [optional] 
 **existenceDate** | **DateTime**| Date to filter device existence | [optional] 
 **brandPattern** | **String**| Regex pattern for filtering by brand | [optional] 
 **modelPattern** | **String**| Regex pattern for filtering by model | [optional] 
 **serialNumberPattern** | **String**| Regex pattern for filtering by serial number | [optional] 
 **metadata** | **String**| Search by metadata | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **exportList**
> exportList(authorization, body, acceptLanguage)

export devices



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var authorization = authorization_example; // String | Authentication token
var body = new URIsListPostDTO(); // URIsListPostDTO | List of device URI
var acceptLanguage = en; // String | Request accepted language

try { 
    api_instance.exportList(authorization, body, acceptLanguage);
} catch (e) {
    print("Exception when calling DevicesApi->exportList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**URIsListPostDTO**](URIsListPostDTO.md)| List of device URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevice**
> DeviceGetDetailsDTO getDevice(uri, authorization, acceptLanguage)

Get device detail



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var uri = http://example.com/; // String | device URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getDevice(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| device URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**DeviceGetDetailsDTO**](DeviceGetDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceDataFilesProvenances**
> List<ProvenanceGetDTO> getDeviceDataFilesProvenances(uri, authorization, acceptLanguage)

Get provenances of datafiles linked to this device



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var uri = http://example.com/; // String | Device URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getDeviceDataFilesProvenances(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDeviceDataFilesProvenances: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Device URI | 
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

# **getDeviceDataProvenances**
> List<ProvenanceGetDTO> getDeviceDataProvenances(uri, authorization, acceptLanguage)

Get provenances of data that have been measured on this device



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var uri = http://example.com/; // String | Device URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getDeviceDataProvenances(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDeviceDataProvenances: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Device URI | 
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

# **getDeviceVariables**
> List<NamedResourceDTO> getDeviceVariables(uri, authorization, acceptLanguage)

Get variables measured by the device



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var uri = http://example.com/; // String | Device URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getDeviceVariables(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->getDeviceVariables: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Device URI | 
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

# **searchDeviceData**
> List<DataGetDTO> searchDeviceData(uri, authorization, startDate, endDate, timezone, experiment, variable, minConfidence, maxConfidence, provenance, metadata, orderBy, page, pageSize, acceptLanguage)

Search device data



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var uri = http://example.com/; // String | Device URI
var authorization = authorization_example; // String | Authentication token
var startDate = 2020-08-21T00:00:00+01:00; // String | Search by minimal date
var endDate = 2020-09-21T00:00:00+01:00; // String | Search by maximal date
var timezone = Europe/Paris; // String | Precise the timezone corresponding to the given dates
var experiment = [http://opensilex/set/experiments/ZA17]; // List<String> | Search by experiment uris
var variable = [http://opensilex.dev/variable#variable.2020-08-21_11-21-23entity6_method6_quality6_unit6]; // List<String> | Search by variables
var minConfidence = 0.5; // double | Search by minimal confidence index
var maxConfidence = 0.5; // double | Search by maximal confidence index
var provenance = [http://opensilex.dev/provenance/1598001689415]; // List<String> | Search by provenance uri
var metadata = { "LabelView" : "side90",
"paramA" : "90"}; // String | Search by metadata
var orderBy = [date=desc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchDeviceData(uri, authorization, startDate, endDate, timezone, experiment, variable, minConfidence, maxConfidence, provenance, metadata, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->searchDeviceData: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Device URI | 
 **authorization** | **String**| Authentication token | 
 **startDate** | **String**| Search by minimal date | [optional] 
 **endDate** | **String**| Search by maximal date | [optional] 
 **timezone** | **String**| Precise the timezone corresponding to the given dates | [optional] 
 **experiment** | [**List&lt;String&gt;**](String.md)| Search by experiment uris | [optional] 
 **variable** | [**List&lt;String&gt;**](String.md)| Search by variables | [optional] 
 **minConfidence** | **double**| Search by minimal confidence index | [optional] 
 **maxConfidence** | **double**| Search by maximal confidence index | [optional] 
 **provenance** | [**List&lt;String&gt;**](String.md)| Search by provenance uri | [optional] 
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

# **searchDeviceDatafiles**
> List<DataGetDTO> searchDeviceDatafiles(uri, authorization, rdfType, startDate, endDate, timezone, experiment, scientificObjects, provenances, metadata, orderBy, page, pageSize, acceptLanguage)

Search device datafiles descriptions



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var uri = http://example.com/; // String | Device URI
var authorization = authorization_example; // String | Authentication token
var rdfType = rdfType_example; // String | Search by rdf type uri
var startDate = 2020-08-21T00:00:00+01:00; // String | Search by minimal date
var endDate = 2020-09-21T00:00:00+01:00; // String | Search by maximal date
var timezone = Europe/Paris; // String | Precise the timezone corresponding to the given dates
var experiment = [http://opensilex/set/experiments/ZA17]; // List<String> | Search by experiments
var scientificObjects = [http://opensilex.dev/opensilex/2020/o20000345]; // List<String> | Search by object uris list
var provenances = [http://opensilex.dev/provenance/1598001689415]; // List<String> | Search by provenance uris list
var metadata = { "LabelView" : "side90",
"paramA" : "90"}; // String | Search by metadata
var orderBy = [date=desc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchDeviceDatafiles(uri, authorization, rdfType, startDate, endDate, timezone, experiment, scientificObjects, provenances, metadata, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->searchDeviceDatafiles: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Device URI | 
 **authorization** | **String**| Authentication token | 
 **rdfType** | **String**| Search by rdf type uri | [optional] 
 **startDate** | **String**| Search by minimal date | [optional] 
 **endDate** | **String**| Search by maximal date | [optional] 
 **timezone** | **String**| Precise the timezone corresponding to the given dates | [optional] 
 **experiment** | [**List&lt;String&gt;**](String.md)| Search by experiments | [optional] 
 **scientificObjects** | [**List&lt;String&gt;**](String.md)| Search by object uris list | [optional] 
 **provenances** | [**List&lt;String&gt;**](String.md)| Search by provenance uris list | [optional] 
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

# **searchDevices**
> List<DeviceGetDTO> searchDevices(authorization, rdfType, name, year, existenceDate, brand, model, serialNumber, metadata, orderBy, page, pageSize, acceptLanguage)

Search devices



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var authorization = authorization_example; // String | Authentication token
var rdfType = vocabulary:SensingDevice; // String | RDF type filter
var name = .*; // String | Regex pattern for filtering by name
var year = 2017; // int | Search by year
var existenceDate = 2013-10-20; // DateTime | Date to filter device existence
var brand = .*; // String | Regex pattern for filtering by brand
var model = .*; // String | Regex pattern for filtering by model
var serialNumber = .*; // String | Regex pattern for filtering by serial number
var metadata = { "Group" : "weather station",
"Group2" : "A"}; // String | Search by metadata
var orderBy = [name=asc]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchDevices(authorization, rdfType, name, year, existenceDate, brand, model, serialNumber, metadata, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->searchDevices: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **rdfType** | **String**| RDF type filter | [optional] 
 **name** | **String**| Regex pattern for filtering by name | [optional] [default to .*]
 **year** | **int**| Search by year | [optional] 
 **existenceDate** | **DateTime**| Date to filter device existence | [optional] 
 **brand** | **String**| Regex pattern for filtering by brand | [optional] 
 **model** | **String**| Regex pattern for filtering by model | [optional] 
 **serialNumber** | **String**| Regex pattern for filtering by serial number | [optional] 
 **metadata** | **String**| Search by metadata | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<DeviceGetDTO>**](DeviceGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDevice**
> ObjectUriResponse updateDevice(body, authorization, acceptLanguage)

Update a device



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DevicesApi();
var body = new DeviceCreationDTO(); // DeviceCreationDTO | Device description
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.updateDevice(body, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling DevicesApi->updateDevice: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DeviceCreationDTO**](DeviceCreationDTO.md)| Device description | 
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

