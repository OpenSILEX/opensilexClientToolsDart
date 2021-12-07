# swagger.api.VueJsOntologyExtensionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createRDFType**](VueJsOntologyExtensionApi.md#createRDFType) | **POST** /vuejs/owl_extension/rdf_type | Create a custom class
[**deleteRDFType**](VueJsOntologyExtensionApi.md#deleteRDFType) | **DELETE** /vuejs/owl_extension/rdf_type | Delete a RDF type
[**getDataTypes1**](VueJsOntologyExtensionApi.md#getDataTypes1) | **GET** /vuejs/owl_extension/data_types | Return literal datatypes definition
[**getObjectTypes**](VueJsOntologyExtensionApi.md#getObjectTypes) | **GET** /vuejs/owl_extension/object_types | Return object types definition
[**getRDFType1**](VueJsOntologyExtensionApi.md#getRDFType1) | **GET** /vuejs/owl_extension/rdf_type | Return rdf type model definition with properties
[**getRDFTypeProperties**](VueJsOntologyExtensionApi.md#getRDFTypeProperties) | **GET** /vuejs/owl_extension/rdf_type_properties | Return class model properties definitions
[**getRDFTypesParameters**](VueJsOntologyExtensionApi.md#getRDFTypesParameters) | **GET** /vuejs/owl_extension/rdf_types_parameters | Return RDF types parameters for Vue.js application
[**setRDFTypePropertiesOrder**](VueJsOntologyExtensionApi.md#setRDFTypePropertiesOrder) | **PUT** /vuejs/owl_extension/properties_order | Define properties order
[**updateRDFType**](VueJsOntologyExtensionApi.md#updateRDFType) | **PUT** /vuejs/owl_extension/rdf_type | Update a custom class


# **createRDFType**
> ObjectUriResponse createRDFType(authorization, body, acceptLanguage)

Create a custom class



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsOntologyExtensionApi();
var authorization = authorization_example; // String | Authentication token
var body = new VueRDFTypeDTO(); // VueRDFTypeDTO | Class description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createRDFType(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VueJsOntologyExtensionApi->createRDFType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**VueRDFTypeDTO**](VueRDFTypeDTO.md)| Class description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteRDFType**
> RDFPropertyDTO deleteRDFType(authorization, rdfType, acceptLanguage)

Delete a RDF type



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsOntologyExtensionApi();
var authorization = authorization_example; // String | Authentication token
var rdfType = rdfType_example; // String | RDF type
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteRDFType(authorization, rdfType, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VueJsOntologyExtensionApi->deleteRDFType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **rdfType** | **String**| RDF type | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**RDFPropertyDTO**](RDFPropertyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataTypes1**
> List<VueDataTypeDTO> getDataTypes1()

Return literal datatypes definition



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsOntologyExtensionApi();

try { 
    var result = api_instance.getDataTypes1();
    print(result);
} catch (e) {
    print("Exception when calling VueJsOntologyExtensionApi->getDataTypes1: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<VueDataTypeDTO>**](VueDataTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getObjectTypes**
> List<VueObjectTypeDTO> getObjectTypes()

Return object types definition



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsOntologyExtensionApi();

try { 
    var result = api_instance.getObjectTypes();
    print(result);
} catch (e) {
    print("Exception when calling VueJsOntologyExtensionApi->getObjectTypes: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<VueObjectTypeDTO>**](VueObjectTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRDFType1**
> VueRDFTypeDTO getRDFType1(rdfType, authorization, parentType, acceptLanguage)

Return rdf type model definition with properties



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsOntologyExtensionApi();
var rdfType = rdfType_example; // String | RDF type URI
var authorization = authorization_example; // String | Authentication token
var parentType = parentType_example; // String | Parent RDF class URI
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getRDFType1(rdfType, authorization, parentType, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VueJsOntologyExtensionApi->getRDFType1: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rdfType** | **String**| RDF type URI | 
 **authorization** | **String**| Authentication token | 
 **parentType** | **String**| Parent RDF class URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**VueRDFTypeDTO**](VueRDFTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRDFTypeProperties**
> VueRDFTypeDTO getRDFTypeProperties(rdfType, parentType, authorization, acceptLanguage)

Return class model properties definitions



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsOntologyExtensionApi();
var rdfType = rdfType_example; // String | RDF class URI
var parentType = parentType_example; // String | Parent RDF class URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getRDFTypeProperties(rdfType, parentType, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VueJsOntologyExtensionApi->getRDFTypeProperties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rdfType** | **String**| RDF class URI | 
 **parentType** | **String**| Parent RDF class URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**VueRDFTypeDTO**](VueRDFTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRDFTypesParameters**
> List<VueRDFTypeParameterDTO> getRDFTypesParameters()

Return RDF types parameters for Vue.js application



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsOntologyExtensionApi();

try { 
    var result = api_instance.getRDFTypesParameters();
    print(result);
} catch (e) {
    print("Exception when calling VueJsOntologyExtensionApi->getRDFTypesParameters: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<VueRDFTypeParameterDTO>**](VueRDFTypeParameterDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRDFTypePropertiesOrder**
> ObjectUriResponse setRDFTypePropertiesOrder(rdfType, authorization, body, acceptLanguage)

Define properties order



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsOntologyExtensionApi();
var rdfType = rdfType_example; // String | RDF type
var authorization = authorization_example; // String | Authentication token
var body = [new List&lt;String&gt;()]; // List<String> | Array of properties
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.setRDFTypePropertiesOrder(rdfType, authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VueJsOntologyExtensionApi->setRDFTypePropertiesOrder: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rdfType** | **String**| RDF type | 
 **authorization** | **String**| Authentication token | 
 **body** | **List&lt;String&gt;**| Array of properties | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateRDFType**
> ObjectUriResponse updateRDFType(authorization, body, acceptLanguage)

Update a custom class



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new VueJsOntologyExtensionApi();
var authorization = authorization_example; // String | Authentication token
var body = new VueRDFTypeDTO(); // VueRDFTypeDTO | RDF type definition
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateRDFType(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling VueJsOntologyExtensionApi->updateRDFType: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**VueRDFTypeDTO**](VueRDFTypeDTO.md)| RDF type definition | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

