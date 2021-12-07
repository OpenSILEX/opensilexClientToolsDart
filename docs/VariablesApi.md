# swagger.api.VariablesApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**classicExportVariableByURIs**](VariablesApi.md#classicExportVariableByURIs) | **POST** /core/variables/export_classic_by_uris | export variable by list of uris
[**createCharacteristic**](VariablesApi.md#createCharacteristic) | **POST** /core/characteristics | Add a characteristic
[**createEntity**](VariablesApi.md#createEntity) | **POST** /core/entities | Add an entity
[**createInterestEntity**](VariablesApi.md#createInterestEntity) | **POST** /core/entities_of_interest | Add an entity of interest
[**createMethod**](VariablesApi.md#createMethod) | **POST** /core/methods | Add a method
[**createUnit**](VariablesApi.md#createUnit) | **POST** /core/units | Add an unit
[**createVariable**](VariablesApi.md#createVariable) | **POST** /core/variables | Add a variable
[**createVariablesGroup**](VariablesApi.md#createVariablesGroup) | **POST** /core/variables_group | Add a variables group
[**deleteCharacteristic**](VariablesApi.md#deleteCharacteristic) | **DELETE** /core/characteristics/{uri} | Delete a characteristic
[**deleteEntity**](VariablesApi.md#deleteEntity) | **DELETE** /core/entities/{uri} | Delete an entity
[**deleteInterestEntity**](VariablesApi.md#deleteInterestEntity) | **DELETE** /core/entities_of_interest/{uri} | Delete an entity of interest
[**deleteMethod**](VariablesApi.md#deleteMethod) | **DELETE** /core/methods/{uri} | Delete a method
[**deleteUnit**](VariablesApi.md#deleteUnit) | **DELETE** /core/units/{uri} | Delete an unit
[**deleteVariable**](VariablesApi.md#deleteVariable) | **DELETE** /core/variables/{uri} | Delete a variable
[**deleteVariablesGroup**](VariablesApi.md#deleteVariablesGroup) | **DELETE** /core/variables_group/{uri} | Delete a variables group
[**detailsExportVariableByURIs**](VariablesApi.md#detailsExportVariableByURIs) | **POST** /core/variables/export_details_by_uris | export detailed variable by list of uris
[**getCharacteristic**](VariablesApi.md#getCharacteristic) | **GET** /core/characteristics/{uri} | Get a characteristic
[**getDatatypes**](VariablesApi.md#getDatatypes) | **GET** /core/variables/datatypes | Get variables datatypes
[**getEntity**](VariablesApi.md#getEntity) | **GET** /core/entities/{uri} | Get an entity
[**getInterestEntity**](VariablesApi.md#getInterestEntity) | **GET** /core/entities_of_interest/{uri} | Get an entity of interest
[**getMethod**](VariablesApi.md#getMethod) | **GET** /core/methods/{uri} | Get a method
[**getUnit**](VariablesApi.md#getUnit) | **GET** /core/units/{uri} | Get an unit
[**getVariable**](VariablesApi.md#getVariable) | **GET** /core/variables/{uri} | Get a variable
[**getVariablesByURIs**](VariablesApi.md#getVariablesByURIs) | **GET** /core/variables/by_uris | Get detailed variables by uris
[**getVariablesGroup**](VariablesApi.md#getVariablesGroup) | **GET** /core/variables_group/{uri} | Get a variables group
[**getVariablesGroupByURIs**](VariablesApi.md#getVariablesGroupByURIs) | **GET** /core/variables_group/by_uris | Get variables groups by their URIs
[**searchCharacteristics**](VariablesApi.md#searchCharacteristics) | **GET** /core/characteristics | Search characteristics by name
[**searchEntities**](VariablesApi.md#searchEntities) | **GET** /core/entities | Search entities by name
[**searchInterestEntity**](VariablesApi.md#searchInterestEntity) | **GET** /core/entities_of_interest | Search entities of interest by name
[**searchMethods**](VariablesApi.md#searchMethods) | **GET** /core/methods | Search methods by name
[**searchUnits**](VariablesApi.md#searchUnits) | **GET** /core/units | Search units by name
[**searchVariables**](VariablesApi.md#searchVariables) | **GET** /core/variables | Search variables by name, long name, entity, characteristic, method or unit name
[**searchVariablesDetails**](VariablesApi.md#searchVariablesDetails) | **GET** /core/variables/details | Search detailed variables by name, long name, entity, characteristic, method or unit name
[**searchVariablesGroups**](VariablesApi.md#searchVariablesGroups) | **GET** /core/variables_group | Search variables groups
[**updateCharacteristic**](VariablesApi.md#updateCharacteristic) | **PUT** /core/characteristics | Update a characteristic
[**updateEntity**](VariablesApi.md#updateEntity) | **PUT** /core/entities | Update an entity
[**updateInterestEntity**](VariablesApi.md#updateInterestEntity) | **PUT** /core/entities_of_interest | Update an entity of interest
[**updateMethod**](VariablesApi.md#updateMethod) | **PUT** /core/methods | Update a method
[**updateUnit**](VariablesApi.md#updateUnit) | **PUT** /core/units | Update an unit
[**updateVariable**](VariablesApi.md#updateVariable) | **PUT** /core/variables | Update a variable
[**updateVariablesGroup**](VariablesApi.md#updateVariablesGroup) | **PUT** /core/variables_group | Update a variables group


# **classicExportVariableByURIs**
> classicExportVariableByURIs(authorization, body, acceptLanguage)

export variable by list of uris



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new URIsListPostDTO(); // URIsListPostDTO | List of variable URI
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.classicExportVariableByURIs(authorization, body, acceptLanguage);
} catch (e) {
    print("Exception when calling VariablesApi->classicExportVariableByURIs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**URIsListPostDTO**](URIsListPostDTO.md)| List of variable URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCharacteristic**
> ObjectUriResponse createCharacteristic(authorization, body, acceptLanguage)

Add a characteristic



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new CharacteristicCreationDTO(); // CharacteristicCreationDTO | Characteristic description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createCharacteristic(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->createCharacteristic: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**CharacteristicCreationDTO**](CharacteristicCreationDTO.md)| Characteristic description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEntity**
> ObjectUriResponse createEntity(authorization, body, acceptLanguage)

Add an entity



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new EntityCreationDTO(); // EntityCreationDTO | Entity description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createEntity(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->createEntity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**EntityCreationDTO**](EntityCreationDTO.md)| Entity description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createInterestEntity**
> ObjectUriResponse createInterestEntity(authorization, body, acceptLanguage)

Add an entity of interest



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new InterestEntityCreationDTO(); // InterestEntityCreationDTO | Entity of interest description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createInterestEntity(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->createInterestEntity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**InterestEntityCreationDTO**](InterestEntityCreationDTO.md)| Entity of interest description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMethod**
> ObjectUriResponse createMethod(authorization, body, acceptLanguage)

Add a method



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new MethodCreationDTO(); // MethodCreationDTO | Method description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createMethod(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->createMethod: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**MethodCreationDTO**](MethodCreationDTO.md)| Method description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUnit**
> ObjectUriResponse createUnit(authorization, body, acceptLanguage)

Add an unit



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new UnitCreationDTO(); // UnitCreationDTO | Unit description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createUnit(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->createUnit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**UnitCreationDTO**](UnitCreationDTO.md)| Unit description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVariable**
> ObjectUriResponse createVariable(authorization, body, acceptLanguage)

Add a variable



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new VariableCreationDTO(); // VariableCreationDTO | Variable description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createVariable(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->createVariable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**VariableCreationDTO**](VariableCreationDTO.md)| Variable description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createVariablesGroup**
> ObjectUriResponse createVariablesGroup(authorization, body, acceptLanguage)

Add a variables group



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new VariablesGroupCreationDTO(); // VariablesGroupCreationDTO | Variables group description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createVariablesGroup(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->createVariablesGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**VariablesGroupCreationDTO**](VariablesGroupCreationDTO.md)| Variables group description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteCharacteristic**
> ObjectUriResponse deleteCharacteristic(uri, authorization, acceptLanguage)

Delete a characteristic



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/characteristic/Height"; // String | Characteristic URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteCharacteristic(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->deleteCharacteristic: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Characteristic URI | 
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

# **deleteEntity**
> ObjectUriResponse deleteEntity(uri, authorization, acceptLanguage)

Delete an entity



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/entity/Plant"; // String | Entity URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteEntity(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->deleteEntity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Entity URI | 
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

# **deleteInterestEntity**
> ObjectUriResponse deleteInterestEntity(uri, authorization, acceptLanguage)

Delete an entity of interest



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/entity_of_interest/Plot"; // String | Entity of interest URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteInterestEntity(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->deleteInterestEntity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Entity of interest URI | 
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

# **deleteMethod**
> ObjectUriResponse deleteMethod(uri, authorization, acceptLanguage)

Delete a method



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/method/ImageAnalysis"; // String | Method URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteMethod(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->deleteMethod: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Method URI | 
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

# **deleteUnit**
> ObjectUriResponse deleteUnit(uri, authorization, acceptLanguage)

Delete an unit



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/unit/Centimeter"; // String | Unit URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteUnit(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->deleteUnit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Unit URI | 
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

# **deleteVariable**
> ObjectUriResponse deleteVariable(uri, authorization, acceptLanguage)

Delete a variable



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/Plant_Height"; // String | Variable URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteVariable(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->deleteVariable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Variable URI | 
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

# **deleteVariablesGroup**
> ObjectUriResponse deleteVariablesGroup(uri, authorization, acceptLanguage)

Delete a variables group



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = uri_example; // String | Variables group URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteVariablesGroup(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->deleteVariablesGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Variables group URI | 
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

# **detailsExportVariableByURIs**
> detailsExportVariableByURIs(authorization, body, acceptLanguage)

export detailed variable by list of uris



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new URIsListPostDTO(); // URIsListPostDTO | List of variable URI
var acceptLanguage = "en"; // String | Request accepted language

try { 
    api_instance.detailsExportVariableByURIs(authorization, body, acceptLanguage);
} catch (e) {
    print("Exception when calling VariablesApi->detailsExportVariableByURIs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**URIsListPostDTO**](URIsListPostDTO.md)| List of variable URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCharacteristic**
> CharacteristicDetailsDTO getCharacteristic(uri, authorization, acceptLanguage)

Get a characteristic



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/characteristic/Height"; // String | Characteristic URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getCharacteristic(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getCharacteristic: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Characteristic URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**CharacteristicDetailsDTO**](CharacteristicDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDatatypes**
> List<VariableDatatypeDTO> getDatatypes(authorization, acceptLanguage)

Get variables datatypes



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getDatatypes(authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getDatatypes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<VariableDatatypeDTO>**](VariableDatatypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEntity**
> EntityDetailsDTO getEntity(uri, authorization, acceptLanguage)

Get an entity



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/entity/Plant"; // String | Entity URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getEntity(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getEntity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Entity URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**EntityDetailsDTO**](EntityDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInterestEntity**
> InterestEntityDetailsDTO getInterestEntity(uri, authorization, acceptLanguage)

Get an entity of interest



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/entity_of_interest/Plot"; // String | Entity of interest URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getInterestEntity(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getInterestEntity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Entity of interest URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**InterestEntityDetailsDTO**](InterestEntityDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMethod**
> MethodDetailsDTO getMethod(uri, authorization, acceptLanguage)

Get a method



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/method/ImageAnalysis"; // String | Method URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getMethod(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getMethod: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Method URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**MethodDetailsDTO**](MethodDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnit**
> UnitDetailsDTO getUnit(uri, authorization, acceptLanguage)

Get an unit



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/unit/Centimeter"; // String | Unit URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getUnit(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getUnit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Unit URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**UnitDetailsDTO**](UnitDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariable**
> VariableDetailsDTO getVariable(uri, authorization, acceptLanguage)

Get a variable



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = "http://opensilex.dev/set/variables/Plant_Height"; // String | Variable URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getVariable(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getVariable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Variable URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**VariableDetailsDTO**](VariableDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariablesByURIs**
> List<VariableDetailsDTO> getVariablesByURIs(uris, authorization, acceptLanguage)

Get detailed variables by uris



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uris = []; // List<String> | Variables URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getVariablesByURIs(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getVariablesByURIs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Variables URIs | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<VariableDetailsDTO>**](VariableDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariablesGroup**
> VariablesGroupGetDTO getVariablesGroup(uri, authorization, acceptLanguage)

Get a variables group



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uri = uri_example; // String | Variables group URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getVariablesGroup(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getVariablesGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Variables group URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**VariablesGroupGetDTO**](VariablesGroupGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVariablesGroupByURIs**
> List<VariablesGroupGetDTO> getVariablesGroupByURIs(uris, authorization, acceptLanguage)

Get variables groups by their URIs



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var uris = []; // List<String> | Variables group URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getVariablesGroupByURIs(uris, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->getVariablesGroupByURIs: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uris** | [**List&lt;String&gt;**](String.md)| Variables group URIs | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<VariablesGroupGetDTO>**](VariablesGroupGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCharacteristics**
> List<CharacteristicGetDTO> searchCharacteristics(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search characteristics by name



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var name = "Height"; // String | Name (regex)
var orderBy = ["uri=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchCharacteristics(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->searchCharacteristics: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Name (regex) | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<CharacteristicGetDTO>**](CharacteristicGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchEntities**
> List<EntityGetDTO> searchEntities(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search entities by name



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var name = "plant"; // String | Name (regex)
var orderBy = ["uri=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchEntities(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->searchEntities: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Name (regex) | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<EntityGetDTO>**](EntityGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchInterestEntity**
> List<InterestEntityGetDTO> searchInterestEntity(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search entities of interest by name



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var name = "plot"; // String | Name (regex)
var orderBy = ["uri=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchInterestEntity(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->searchInterestEntity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Name (regex) | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<InterestEntityGetDTO>**](InterestEntityGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchMethods**
> List<MethodGetDTO> searchMethods(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search methods by name



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var name = "ImageAnalysis"; // String | Name (regex)
var orderBy = ["uri=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchMethods(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->searchMethods: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Name (regex) | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<MethodGetDTO>**](MethodGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUnits**
> List<UnitGetDTO> searchUnits(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search units by name



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var name = "Centimeter"; // String | Name (regex)
var orderBy = ["uri=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchUnits(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->searchUnits: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Name (regex) | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<UnitGetDTO>**](UnitGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchVariables**
> List<VariableGetDTO> searchVariables(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search variables by name, long name, entity, characteristic, method or unit name

The following fields could be used for sorting :    _entity_name/entityName : the name of the variable entity   _characteristic_name/characteristicName : the name of the variable characteristic   _method_name/methodName : the name of the variable method   _unit_name/unitName : the name of the variable unit  

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var name = "plant_height"; // String | Name regex pattern
var orderBy = ["uri=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchVariables(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->searchVariables: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Name regex pattern | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<VariableGetDTO>**](VariableGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchVariablesDetails**
> List<VariableDetailsDTO> searchVariablesDetails(authorization, name, orderBy, page, pageSize, acceptLanguage)

Search detailed variables by name, long name, entity, characteristic, method or unit name

The following fields could be used for sorting :    _entity_name : the name of the variable entity   _characteristic_name : the name of the variable characteristic   _method_name : the name of the variable method   _unit_name : the name of the variable unit  

### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var name = "plant_height"; // String | Name regex pattern
var orderBy = ["uri=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchVariablesDetails(authorization, name, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->searchVariablesDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Name regex pattern | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<VariableDetailsDTO>**](VariableDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchVariablesGroups**
> List<VariablesGroupGetDTO> searchVariablesGroups(authorization, name, variableUri, orderBy, page, pageSize, acceptLanguage)

Search variables groups



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var name = name_example; // String | Regex pattern for filtering by name
var variableUri = variableUri_example; // String | Variable URI
var orderBy = ["uri=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 0; // int | Page number
var pageSize = 20; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchVariablesGroups(authorization, name, variableUri, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->searchVariablesGroups: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **name** | **String**| Regex pattern for filtering by name | [optional] 
 **variableUri** | **String**| Variable URI | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] [default to 0]
 **pageSize** | **int**| Page size | [optional] [default to 20]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<VariablesGroupGetDTO>**](VariablesGroupGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateCharacteristic**
> ObjectUriResponse updateCharacteristic(authorization, body, acceptLanguage)

Update a characteristic



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new CharacteristicUpdateDTO(); // CharacteristicUpdateDTO | Characteristic description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateCharacteristic(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->updateCharacteristic: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**CharacteristicUpdateDTO**](CharacteristicUpdateDTO.md)| Characteristic description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEntity**
> ObjectUriResponse updateEntity(authorization, body, acceptLanguage)

Update an entity



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new EntityUpdateDTO(); // EntityUpdateDTO | Entity description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateEntity(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->updateEntity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**EntityUpdateDTO**](EntityUpdateDTO.md)| Entity description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInterestEntity**
> ObjectUriResponse updateInterestEntity(authorization, body, acceptLanguage)

Update an entity of interest



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new InterestEntityUpdateDTO(); // InterestEntityUpdateDTO | Entity of interest description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateInterestEntity(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->updateInterestEntity: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**InterestEntityUpdateDTO**](InterestEntityUpdateDTO.md)| Entity of interest description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMethod**
> ObjectUriResponse updateMethod(authorization, body, acceptLanguage)

Update a method



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new MethodUpdateDTO(); // MethodUpdateDTO | Method description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateMethod(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->updateMethod: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**MethodUpdateDTO**](MethodUpdateDTO.md)| Method description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUnit**
> ObjectUriResponse updateUnit(authorization, body, acceptLanguage)

Update an unit



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new UnitUpdateDTO(); // UnitUpdateDTO | Unit description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateUnit(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->updateUnit: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**UnitUpdateDTO**](UnitUpdateDTO.md)| Unit description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVariable**
> ObjectUriResponse updateVariable(authorization, body, acceptLanguage)

Update a variable



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new VariableUpdateDTO(); // VariableUpdateDTO | Variable description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateVariable(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->updateVariable: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**VariableUpdateDTO**](VariableUpdateDTO.md)| Variable description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateVariablesGroup**
> ObjectUriResponse updateVariablesGroup(authorization, body, acceptLanguage)

Update a variables group



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VariablesApi();
var authorization = authorization_example; // String | Authentication token
var body = new VariablesGroupUpdateDTO(); // VariablesGroupUpdateDTO | Variables group description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateVariablesGroup(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VariablesApi->updateVariablesGroup: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**VariablesGroupUpdateDTO**](VariablesGroupUpdateDTO.md)| Variables group description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

