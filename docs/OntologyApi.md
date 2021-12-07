# swagger.api.OntologyApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addClassPropertyRestriction**](OntologyApi.md#addClassPropertyRestriction) | **POST** /ontology/rdf_type_property_restriction | Add a rdf type property restriction
[**checkURIsTypes**](OntologyApi.md#checkURIsTypes) | **POST** /ontology/check_rdf_types | Check the given rdf-types on the given uris
[**createProperty**](OntologyApi.md#createProperty) | **POST** /ontology/property | Create a RDF property
[**deleteClassPropertyRestriction**](OntologyApi.md#deleteClassPropertyRestriction) | **DELETE** /ontology/rdf_type_property_restriction | Delete a rdf type property restriction
[**deleteProperty**](OntologyApi.md#deleteProperty) | **DELETE** /ontology/property | Delete a property
[**getClasses**](OntologyApi.md#getClasses) | **GET** /ontology/rdf_types | Return classes models definitions with properties for a list of rdf types
[**getDataProperties**](OntologyApi.md#getDataProperties) | **GET** /ontology/data_properties | Search data properties tree
[**getObjectProperties**](OntologyApi.md#getObjectProperties) | **GET** /ontology/object_properties | Search object properties tree
[**getProperties**](OntologyApi.md#getProperties) | **GET** /ontology/properties | Search properties tree
[**getProperty**](OntologyApi.md#getProperty) | **GET** /ontology/property | Return property model definition detail
[**getRDFType**](OntologyApi.md#getRDFType) | **GET** /ontology/rdf_type | Return class model definition with properties
[**getSubClassesOf**](OntologyApi.md#getSubClassesOf) | **GET** /ontology/subclasses_of | Search sub-classes tree of an RDF class
[**getURILabel**](OntologyApi.md#getURILabel) | **GET** /ontology/uri_label | Return associated rdfs:label of an uri if exists
[**getURILabelsList**](OntologyApi.md#getURILabelsList) | **GET** /ontology/uris_labels | Return associated rdfs:label of uris if they exist
[**searchSubClassesOf**](OntologyApi.md#searchSubClassesOf) | **GET** /ontology/subclasses_of/search | Search sub-classes tree of an RDF class
[**updateClassPropertyRestriction**](OntologyApi.md#updateClassPropertyRestriction) | **PUT** /ontology/rdf_type_property_restriction | Update a rdf type property restriction
[**updateProperty**](OntologyApi.md#updateProperty) | **PUT** /ontology/property | Update a RDF property


# **addClassPropertyRestriction**
> ObjectUriResponse addClassPropertyRestriction(authorization, body, acceptLanguage)

Add a rdf type property restriction



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var body = new OWLClassPropertyRestrictionDTO(); // OWLClassPropertyRestrictionDTO | Property description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.addClassPropertyRestriction(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->addClassPropertyRestriction: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**OWLClassPropertyRestrictionDTO**](OWLClassPropertyRestrictionDTO.md)| Property description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **checkURIsTypes**
> List<URITypesDTO> checkURIsTypes(rdfTypes, authorization, body, acceptLanguage)

Check the given rdf-types on the given uris



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var rdfTypes = []; // List<String> | rdf_types list you want to check on the given uris list
var authorization = authorization_example; // String | Authentication token
var body = new URIsListPostDTO(); // URIsListPostDTO | URIs list
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.checkURIsTypes(rdfTypes, authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->checkURIsTypes: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rdfTypes** | [**List&lt;String&gt;**](String.md)| rdf_types list you want to check on the given uris list | 
 **authorization** | **String**| Authentication token | 
 **body** | [**URIsListPostDTO**](URIsListPostDTO.md)| URIs list | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<URITypesDTO>**](URITypesDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createProperty**
> ObjectUriResponse createProperty(authorization, body, acceptLanguage)

Create a RDF property



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var body = new RDFPropertyDTO(); // RDFPropertyDTO | Property description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createProperty(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->createProperty: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**RDFPropertyDTO**](RDFPropertyDTO.md)| Property description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteClassPropertyRestriction**
> ObjectUriResponse deleteClassPropertyRestriction(rdfType, propertyURI, authorization, acceptLanguage)

Delete a rdf type property restriction



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var rdfType = rdfType_example; // String | RDF type
var propertyURI = propertyURI_example; // String | Property URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteClassPropertyRestriction(rdfType, propertyURI, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->deleteClassPropertyRestriction: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rdfType** | **String**| RDF type | 
 **propertyURI** | **String**| Property URI | 
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

# **deleteProperty**
> ObjectUriResponse deleteProperty(authorization, propertyURI, propertyType, acceptLanguage)

Delete a property



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var propertyURI = propertyURI_example; // String | Property URI
var propertyType = propertyType_example; // String | Property type
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteProperty(authorization, propertyURI, propertyType, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->deleteProperty: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **propertyURI** | **String**| Property URI | [optional] 
 **propertyType** | **String**| Property type | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClasses**
> List<RDFTypeDTO> getClasses(rdfType, authorization, parentType, acceptLanguage)

Return classes models definitions with properties for a list of rdf types



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var rdfType = []; // List<String> | RDF classes URI
var authorization = authorization_example; // String | Authentication token
var parentType = parentType_example; // String | Parent RDF class URI
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getClasses(rdfType, authorization, parentType, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->getClasses: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rdfType** | [**List&lt;String&gt;**](String.md)| RDF classes URI | 
 **authorization** | **String**| Authentication token | 
 **parentType** | **String**| Parent RDF class URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<RDFTypeDTO>**](RDFTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDataProperties**
> List<ResourceTreeDTO> getDataProperties(authorization, domain, acceptLanguage)

Search data properties tree



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var domain = domain_example; // String | Domain URI
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getDataProperties(authorization, domain, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->getDataProperties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **domain** | **String**| Domain URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ResourceTreeDTO>**](ResourceTreeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getObjectProperties**
> List<ResourceTreeDTO> getObjectProperties(authorization, domain, acceptLanguage)

Search object properties tree



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var domain = domain_example; // String | Domain URI
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getObjectProperties(authorization, domain, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->getObjectProperties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **domain** | **String**| Domain URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ResourceTreeDTO>**](ResourceTreeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProperties**
> List<ResourceTreeDTO> getProperties(authorization, domain, acceptLanguage)

Search properties tree



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var domain = domain_example; // String | Domain URI
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getProperties(authorization, domain, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->getProperties: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **domain** | **String**| Domain URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ResourceTreeDTO>**](ResourceTreeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProperty**
> RDFPropertyDTO getProperty(authorization, uri, rdfType, domainRdfType, acceptLanguage)

Return property model definition detail



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var uri = uri_example; // String | Property URI
var rdfType = rdfType_example; // String | Property type
var domainRdfType = domainRdfType_example; // String | Property type
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getProperty(authorization, uri, rdfType, domainRdfType, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->getProperty: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **uri** | **String**| Property URI | [optional] 
 **rdfType** | **String**| Property type | [optional] 
 **domainRdfType** | **String**| Property type | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**RDFPropertyDTO**](RDFPropertyDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRDFType**
> RDFTypeDTO getRDFType(rdfType, authorization, parentType, acceptLanguage)

Return class model definition with properties



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var rdfType = rdfType_example; // String | RDF type URI
var authorization = authorization_example; // String | Authentication token
var parentType = parentType_example; // String | Parent RDF class URI
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getRDFType(rdfType, authorization, parentType, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->getRDFType: $e\n");
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

[**RDFTypeDTO**](RDFTypeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubClassesOf**
> List<ResourceTreeDTO> getSubClassesOf(authorization, parentType, ignoreRootClasses, acceptLanguage)

Search sub-classes tree of an RDF class



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var parentType = parentType_example; // String | Parent RDF class URI
var ignoreRootClasses = true; // bool | Flag to determine if only sub-classes must be include in result
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getSubClassesOf(authorization, parentType, ignoreRootClasses, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->getSubClassesOf: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **parentType** | **String**| Parent RDF class URI | [optional] 
 **ignoreRootClasses** | **bool**| Flag to determine if only sub-classes must be include in result | [optional] [default to false]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ResourceTreeDTO>**](ResourceTreeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getURILabel**
> String getURILabel(uri, authorization, acceptLanguage)

Return associated rdfs:label of an uri if exists



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var uri = uri_example; // String | URI to get label from
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getURILabel(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->getURILabel: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| URI to get label from | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getURILabelsList**
> String getURILabelsList(uri, authorization, context, acceptLanguage)

Return associated rdfs:label of uris if they exist



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var uri = []; // List<String> | URIs to get label from
var authorization = authorization_example; // String | Authentication token
var context = context_example; // String | Context URI
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getURILabelsList(uri, authorization, context, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->getURILabelsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | [**List&lt;String&gt;**](String.md)| URIs to get label from | 
 **authorization** | **String**| Authentication token | 
 **context** | **String**| Context URI | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchSubClassesOf**
> List<ResourceTreeDTO> searchSubClassesOf(authorization, parentType, name, ignoreRootClasses, acceptLanguage)

Search sub-classes tree of an RDF class



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var parentType = parentType_example; // String | Parent RDF class URI
var name = "plant_height"; // String | Name regex pattern
var ignoreRootClasses = true; // bool | Flag to determine if only sub-classes must be include in result
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchSubClassesOf(authorization, parentType, name, ignoreRootClasses, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->searchSubClassesOf: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **parentType** | **String**| Parent RDF class URI | [optional] 
 **name** | **String**| Name regex pattern | [optional] 
 **ignoreRootClasses** | **bool**| Flag to determine if only sub-classes must be include in result | [optional] [default to false]
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<ResourceTreeDTO>**](ResourceTreeDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateClassPropertyRestriction**
> ObjectUriResponse updateClassPropertyRestriction(authorization, body, acceptLanguage)

Update a rdf type property restriction



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var body = new OWLClassPropertyRestrictionDTO(); // OWLClassPropertyRestrictionDTO | Property description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateClassPropertyRestriction(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->updateClassPropertyRestriction: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**OWLClassPropertyRestrictionDTO**](OWLClassPropertyRestrictionDTO.md)| Property description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateProperty**
> ObjectUriResponse updateProperty(authorization, body, acceptLanguage)

Update a RDF property



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OntologyApi();
var authorization = authorization_example; // String | Authentication token
var body = new RDFPropertyDTO(); // RDFPropertyDTO | Property description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateProperty(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling OntologyApi->updateProperty: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**RDFPropertyDTO**](RDFPropertyDTO.md)| Property description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

