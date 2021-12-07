# swagger.api.BRAPIApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCalls**](BRAPIApi.md#getCalls) | **GET** /brapi/v1/calls | Check the available BrAPI calls
[**getGermplasmBySearch**](BRAPIApi.md#getGermplasmBySearch) | **GET** /brapi/v1/germplasm | Submit a search request for germplasm
[**getObservationUnits**](BRAPIApi.md#getObservationUnits) | **GET** /brapi/v1/studies/{studyDbId}/observationunits | List all the observation units measured in the study.
[**getObservationVariables**](BRAPIApi.md#getObservationVariables) | **GET** /brapi/v1/studies/{studyDbId}/observationvariables | List all the observation variables measured in the study.
[**getObservations**](BRAPIApi.md#getObservations) | **GET** /brapi/v1/studies/{studyDbId}/observations | Get the observations associated to a specific study
[**getStudies**](BRAPIApi.md#getStudies) | **GET** /brapi/v1/studies | Retrieve studies information
[**getStudiesSearch**](BRAPIApi.md#getStudiesSearch) | **GET** /brapi/v1/studies-search | Retrieve studies information
[**getStudyDetails**](BRAPIApi.md#getStudyDetails) | **GET** /brapi/v1/studies/{studyDbId} | Retrieve study details
[**getVariableDetails**](BRAPIApi.md#getVariableDetails) | **GET** /brapi/v1/variables/{observationVariableDbId} | Retrieve variable details by id
[**getVariablesList**](BRAPIApi.md#getVariablesList) | **GET** /brapi/v1/variables | Call to retrieve a list of observationVariables available in the system


# **getCalls**
> List<Call> getCalls(page, pageSize, dataType)

Check the available BrAPI calls

Check the available BrAPI calls

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var dataType = "json"; // String | datatype

try { 
    var result = api_instance.getCalls(page, pageSize, dataType);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getCalls: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **dataType** | **String**| datatype | [optional] 

### Return type

[**List<Call>**](Call.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getGermplasmBySearch**
> GermplasmDTO getGermplasmBySearch(authorization, germplasmDbId, germplasmPUI, germplasmName, commonCropName, page, pageSize, acceptLanguage)

Submit a search request for germplasm



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var authorization = authorization_example; // String | Authentication token
var germplasmDbId = germplasmDbId_example; // String | Search by germplasmDbId
var germplasmPUI = germplasmPUI_example; // String | Search by germplasmPUI
var germplasmName = germplasmName_example; // String | Search by germplasmName
var commonCropName = commonCropName_example; // String | Search by commonCropName
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getGermplasmBySearch(authorization, germplasmDbId, germplasmPUI, germplasmName, commonCropName, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getGermplasmBySearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **germplasmDbId** | **String**| Search by germplasmDbId | [optional] 
 **germplasmPUI** | **String**| Search by germplasmPUI | [optional] 
 **germplasmName** | **String**| Search by germplasmName | [optional] 
 **commonCropName** | **String**| Search by commonCropName | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**GermplasmDTO**](GermplasmDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getObservationUnits**
> List<ObservationUnitDTO> getObservationUnits(studyDbId, authorization, observationLevel, pageSize, page, acceptLanguage)

List all the observation units measured in the study.

List all the observation units measured in the study.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var studyDbId = studyDbId_example; // String | studyDbId
var authorization = authorization_example; // String | Authentication token
var observationLevel = "Plot"; // String | observationLevel
var pageSize = 56; // int | pageSize
var page = 56; // int | page
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getObservationUnits(studyDbId, authorization, observationLevel, pageSize, page, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getObservationUnits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyDbId** | **String**| studyDbId | 
 **authorization** | **String**| Authentication token | 
 **observationLevel** | **String**| observationLevel | [optional] 
 **pageSize** | **int**| pageSize | [optional] [default to 20]
 **page** | **int**| page | [optional] [default to 0]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ObservationUnitDTO>**](ObservationUnitDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getObservationVariables**
> List<ObservationVariableDTO> getObservationVariables(studyDbId, authorization, pageSize, page, acceptLanguage)

List all the observation variables measured in the study.

List all the observation variables measured in the study.

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var studyDbId = studyDbId_example; // String | studyDbId
var authorization = authorization_example; // String | Authentication token
var pageSize = 56; // int | pageSize
var page = 56; // int | page
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getObservationVariables(studyDbId, authorization, pageSize, page, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getObservationVariables: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyDbId** | **String**| studyDbId | 
 **authorization** | **String**| Authentication token | 
 **pageSize** | **int**| pageSize | [optional] [default to 20]
 **page** | **int**| page | [optional] [default to 0]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ObservationVariableDTO>**](ObservationVariableDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getObservations**
> List<ObservationDTO> getObservations(studyDbId, authorization, observationVariableDbIds, pageSize, page, acceptLanguage)

Get the observations associated to a specific study

Get the observations associated to a specific study

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var studyDbId = studyDbId_example; // String | studyDbId
var authorization = authorization_example; // String | Authentication token
var observationVariableDbIds = []; // List<String> | observationVariableDbIds
var pageSize = 56; // int | pageSize
var page = 56; // int | page
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getObservations(studyDbId, authorization, observationVariableDbIds, pageSize, page, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getObservations: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyDbId** | **String**| studyDbId | 
 **authorization** | **String**| Authentication token | 
 **observationVariableDbIds** | [**List&lt;String&gt;**](String.md)| observationVariableDbIds | [optional] 
 **pageSize** | **int**| pageSize | [optional] [default to 20]
 **page** | **int**| page | [optional] [default to 0]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ObservationDTO>**](ObservationDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudies**
> List<StudyDTO> getStudies(authorization, studyDbId, active, sortBy, sortOrder, page, pageSize, acceptLanguage)

Retrieve studies information

Retrieve studies information

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var authorization = authorization_example; // String | Authentication token
var studyDbId = studyDbId_example; // String | Search by studyDbId
var active = active_example; // String | Filter active status true/false
var sortBy = sortBy_example; // String | Name of the field to sort by: studyDbId, active
var sortOrder = sortOrder_example; // String | Sort order direction - ASC or DESC
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getStudies(authorization, studyDbId, active, sortBy, sortOrder, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getStudies: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **studyDbId** | **String**| Search by studyDbId | [optional] 
 **active** | **String**| Filter active status true/false | [optional] 
 **sortBy** | **String**| Name of the field to sort by: studyDbId, active | [optional] 
 **sortOrder** | **String**| Sort order direction - ASC or DESC | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<StudyDTO>**](StudyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudiesSearch**
> List<StudyDTO> getStudiesSearch(authorization, studyDbId, active, sortBy, sortOrder, pageSize, page, acceptLanguage)

Retrieve studies information

Retrieve studies information

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var authorization = authorization_example; // String | Authentication token
var studyDbId = studyDbId_example; // String | Search by studyDbId
var active = active_example; // String | Filter active status true/false
var sortBy = sortBy_example; // String | Name of the field to sort by: studyDbId or seasonDbId
var sortOrder = sortOrder_example; // String | Sort order direction - ASC or DESC
var pageSize = 56; // int | pageSize
var page = 56; // int | page
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getStudiesSearch(authorization, studyDbId, active, sortBy, sortOrder, pageSize, page, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getStudiesSearch: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **studyDbId** | **String**| Search by studyDbId | [optional] 
 **active** | **String**| Filter active status true/false | [optional] 
 **sortBy** | **String**| Name of the field to sort by: studyDbId or seasonDbId | [optional] 
 **sortOrder** | **String**| Sort order direction - ASC or DESC | [optional] 
 **pageSize** | **int**| pageSize | [optional] [default to 20]
 **page** | **int**| page | [optional] [default to 0]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<StudyDTO>**](StudyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStudyDetails**
> List<StudyDetailsDTO> getStudyDetails(studyDbId, authorization, acceptLanguage)

Retrieve study details

Retrieve study details

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var studyDbId = studyDbId_example; // String | Search by studyDbId
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getStudyDetails(studyDbId, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getStudyDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **studyDbId** | **String**| Search by studyDbId | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<StudyDetailsDTO>**](StudyDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariableDetails**
> List<ObservationVariableDTO> getVariableDetails(observationVariableDbId, authorization, acceptLanguage)

Retrieve variable details by id

Retrieve variable details by id

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var observationVariableDbId = observationVariableDbId_example; // String | A variable URI (Unique Resource Identifier)
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getVariableDetails(observationVariableDbId, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getVariableDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **observationVariableDbId** | **String**| A variable URI (Unique Resource Identifier) | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ObservationVariableDTO>**](ObservationVariableDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariablesList**
> List<ObservationVariableDTO> getVariablesList(authorization, observationVariableDbId, pageSize, page, acceptLanguage)

Call to retrieve a list of observationVariables available in the system

retrieve variables information

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new BRAPIApi();
var authorization = authorization_example; // String | Authentication token
var observationVariableDbId = observationVariableDbId_example; // String | observationVariableDbId
var pageSize = 56; // int | pageSize
var page = 56; // int | page
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getVariablesList(authorization, observationVariableDbId, pageSize, page, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling BRAPIApi->getVariablesList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **observationVariableDbId** | **String**| observationVariableDbId | [optional] 
 **pageSize** | **int**| pageSize | [optional] [default to 20]
 **page** | **int**| page | [optional] [default to 0]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ObservationVariableDTO>**](ObservationVariableDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

