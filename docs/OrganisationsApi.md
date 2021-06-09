# swagger.api.OrganisationsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInfrastructure**](OrganisationsApi.md#createInfrastructure) | **POST** /core/organisations | Create an organisation
[**createInfrastructureFacility**](OrganisationsApi.md#createInfrastructureFacility) | **POST** /core/facilities | Create a facility
[**createInfrastructureTeam**](OrganisationsApi.md#createInfrastructureTeam) | **POST** /core/teams | Create a team
[**deleteInfrastructure**](OrganisationsApi.md#deleteInfrastructure) | **DELETE** /core/organisations/{uri} | Delete an organisation
[**deleteInfrastructureFacility**](OrganisationsApi.md#deleteInfrastructureFacility) | **DELETE** /core/facilities/{uri} | Delete a facility
[**deleteInfrastructureTeam**](OrganisationsApi.md#deleteInfrastructureTeam) | **DELETE** /core/teams/{uri} | Delete a team
[**getAllFacilities**](OrganisationsApi.md#getAllFacilities) | **GET** /core/facilities/all_facilities | Get all facilities
[**getFacilitiesByURI**](OrganisationsApi.md#getFacilitiesByURI) | **GET** /core/facilities/by_uris | Get facilities by their URIs
[**getInfrastructure**](OrganisationsApi.md#getInfrastructure) | **GET** /core/organisations/{uri} | Get an organisation 
[**getInfrastructureFacility**](OrganisationsApi.md#getInfrastructureFacility) | **GET** /core/facilities/{uri} | Get a facility
[**getInfrastructureTeam**](OrganisationsApi.md#getInfrastructureTeam) | **GET** /core/teams/{uri} | Get a team
[**searchInfrastructureFacilities**](OrganisationsApi.md#searchInfrastructureFacilities) | **GET** /core/facilities | Search facilities
[**searchInfrastructuresTree**](OrganisationsApi.md#searchInfrastructuresTree) | **GET** /core/organisations | Search organisations
[**updateInfrastructure**](OrganisationsApi.md#updateInfrastructure) | **PUT** /core/organisations | Update an organisation
[**updateInfrastructureFacility**](OrganisationsApi.md#updateInfrastructureFacility) | **PUT** /core/facilities | Update a facility
[**updateInfrastructureTeam**](OrganisationsApi.md#updateInfrastructureTeam) | **PUT** /core/teams | Update a team


# **createInfrastructure**
> ObjectUriResponse createInfrastructure(authorization, body, acceptLanguage)

Create an organisation



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var authorization = authorization_example; // String | Authentication token
var body = new InfrastructureCreationDTO(); // InfrastructureCreationDTO | Organisation description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.createInfrastructure(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->createInfrastructure: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**InfrastructureCreationDTO**](InfrastructureCreationDTO.md)| Organisation description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInfrastructureFacility**
> ObjectUriResponse createInfrastructureFacility(authorization, body, acceptLanguage)

Create a facility



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var authorization = authorization_example; // String | Authentication token
var body = new InfrastructureFacilityCreationDTO(); // InfrastructureFacilityCreationDTO | Facility description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.createInfrastructureFacility(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->createInfrastructureFacility: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**InfrastructureFacilityCreationDTO**](InfrastructureFacilityCreationDTO.md)| Facility description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInfrastructureTeam**
> ObjectUriResponse createInfrastructureTeam(authorization, body, acceptLanguage)

Create a team



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var authorization = authorization_example; // String | Authentication token
var body = new InfrastructureTeamDTO(); // InfrastructureTeamDTO | Team description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.createInfrastructureTeam(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->createInfrastructureTeam: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**InfrastructureTeamDTO**](InfrastructureTeamDTO.md)| Team description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteInfrastructure**
> ObjectUriResponse deleteInfrastructure(uri, authorization, acceptLanguage)

Delete an organisation



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var uri = http://example.com/; // String | Organisation URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.deleteInfrastructure(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->deleteInfrastructure: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Organisation URI | 
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

# **deleteInfrastructureFacility**
> ObjectUriResponse deleteInfrastructureFacility(uri, authorization, acceptLanguage)

Delete a facility



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var uri = http://example.com/; // String | Facility URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.deleteInfrastructureFacility(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->deleteInfrastructureFacility: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Facility URI | 
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

# **deleteInfrastructureTeam**
> ObjectUriResponse deleteInfrastructureTeam(uri, authorization, acceptLanguage)

Delete a team



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var uri = http://example.com/; // String | Team URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.deleteInfrastructureTeam(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->deleteInfrastructureTeam: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Team URI | 
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

# **getAllFacilities**
> List<NamedResourceDTO> getAllFacilities(authorization, acceptLanguage)

Get all facilities



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getAllFacilities(authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->getAllFacilities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
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

# **getFacilitiesByURI**
> List<InfrastructureFacilityNamedDTO> getFacilitiesByURI(uris, authorization, acceptLanguage)

Get facilities by their URIs



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var uris = []; // List<String> | Facilities URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getFacilitiesByURI(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->getFacilitiesByURI: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Facilities URIs | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<InfrastructureFacilityNamedDTO>**](InfrastructureFacilityNamedDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInfrastructure**
> InfrastructureGetDTO getInfrastructure(uri, authorization, acceptLanguage)

Get an organisation 



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var uri = http://opensilex.dev/organisation/phenoarch; // String | Organisation URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getInfrastructure(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->getInfrastructure: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Organisation URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**InfrastructureGetDTO**](InfrastructureGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInfrastructureFacility**
> InfrastructureFacilityGetDTO getInfrastructureFacility(uri, authorization, acceptLanguage)

Get a facility



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var uri = http://opensilex.dev/organisations/facility/phenoarch; // String | facility URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getInfrastructureFacility(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->getInfrastructureFacility: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| facility URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**InfrastructureFacilityGetDTO**](InfrastructureFacilityGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInfrastructureTeam**
> InfrastructureTeamDTO getInfrastructureTeam(uri, authorization, acceptLanguage)

Get a team



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var uri = http://example.com/; // String | Team URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.getInfrastructureTeam(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->getInfrastructureTeam: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Team URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**InfrastructureTeamDTO**](InfrastructureTeamDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchInfrastructureFacilities**
> List<InfrastructureFacilityNamedDTO> searchInfrastructureFacilities(authorization, pattern, orderBy, page, pageSize, acceptLanguage)

Search facilities



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var authorization = authorization_example; // String | Authentication token
var pattern = .*; // String | Regex pattern for filtering facilities by names
var orderBy = []; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 56; // int | Page number
var pageSize = 56; // int | Page size
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchInfrastructureFacilities(authorization, pattern, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->searchInfrastructureFacilities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **pattern** | **String**| Regex pattern for filtering facilities by names | [optional] [default to .*]
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] 
 **pageSize** | **int**| Page size | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<InfrastructureFacilityNamedDTO>**](InfrastructureFacilityNamedDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchInfrastructuresTree**
> List<ResourceTreeDTO> searchInfrastructuresTree(authorization, pattern, organisationUris, acceptLanguage)

Search organisations



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var authorization = authorization_example; // String | Authentication token
var pattern = .*; // String | Regex pattern for filtering list by names
var organisationUris = []; // List<String> |  organisation URIs
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.searchInfrastructuresTree(authorization, pattern, organisationUris, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->searchInfrastructuresTree: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **pattern** | **String**| Regex pattern for filtering list by names | [optional] [default to .*]
 **organisationUris** | [**List&lt;String&gt;**](String.md)|  organisation URIs | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ResourceTreeDTO>**](ResourceTreeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInfrastructure**
> ObjectUriResponse updateInfrastructure(authorization, body, acceptLanguage)

Update an organisation



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var authorization = authorization_example; // String | Authentication token
var body = new InfrastructureUpdateDTO(); // InfrastructureUpdateDTO | Organisation description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.updateInfrastructure(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->updateInfrastructure: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**InfrastructureUpdateDTO**](InfrastructureUpdateDTO.md)| Organisation description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInfrastructureFacility**
> ObjectUriResponse updateInfrastructureFacility(authorization, body, acceptLanguage)

Update a facility



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var authorization = authorization_example; // String | Authentication token
var body = new InfrastructureFacilityUpdateDTO(); // InfrastructureFacilityUpdateDTO | Facility description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.updateInfrastructureFacility(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->updateInfrastructureFacility: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**InfrastructureFacilityUpdateDTO**](InfrastructureFacilityUpdateDTO.md)| Facility description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInfrastructureTeam**
> ObjectUriResponse updateInfrastructureTeam(authorization, body, acceptLanguage)

Update a team



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganisationsApi();
var authorization = authorization_example; // String | Authentication token
var body = new InfrastructureTeamDTO(); // InfrastructureTeamDTO | Team description
var acceptLanguage = en; // String | Request accepted language

try { 
    var result = api_instance.updateInfrastructureTeam(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OrganisationsApi->updateInfrastructureTeam: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**InfrastructureTeamDTO**](InfrastructureTeamDTO.md)| Team description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

