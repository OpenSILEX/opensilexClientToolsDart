# swagger.api.EventsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**countEvents**](EventsApi.md#countEvents) | **GET** /core/events/count | Count events
[**createEvents**](EventsApi.md#createEvents) | **POST** /core/events | Create a list of event
[**createMoves**](EventsApi.md#createMoves) | **POST** /core/events/moves | Create a list of move event
[**deleteEvent**](EventsApi.md#deleteEvent) | **DELETE** /core/events/{uri} | Delete an event
[**deleteMoveEvent**](EventsApi.md#deleteMoveEvent) | **DELETE** /core/events/moves/{uri} | Delete a move event
[**getEvent**](EventsApi.md#getEvent) | **GET** /core/events/{uri} | Get an event
[**getEventDetails**](EventsApi.md#getEventDetails) | **GET** /core/events/{uri}/details | Get an event with all it&#39;s properties
[**getMoveEvent**](EventsApi.md#getMoveEvent) | **GET** /core/events/moves/{uri} | Get a move with all it&#39;s properties
[**importEventCSV**](EventsApi.md#importEventCSV) | **POST** /core/events/import | Import a CSV file with one move and one target per line
[**importMoveCSV**](EventsApi.md#importMoveCSV) | **POST** /core/events/moves/import | Import a CSV file with one move and one target per line
[**searchEvents**](EventsApi.md#searchEvents) | **GET** /core/events | Search events
[**updateEvent**](EventsApi.md#updateEvent) | **PUT** /core/events | Update an event
[**updateMoveEvent**](EventsApi.md#updateMoveEvent) | **PUT** /core/events/moves | Update a move event
[**validateEventCSV**](EventsApi.md#validateEventCSV) | **POST** /core/events/import_validation | Check a CSV file with one move and one target per line
[**validateMoveCSV**](EventsApi.md#validateMoveCSV) | **POST** /core/events/moves/import_validation | Check a CSV file with one move and one target per line


# **countEvents**
> int countEvents(targets, authorization, acceptLanguage)

Count events



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var targets = []; // List<String> | Targets URIs
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.countEvents(targets, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->countEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **targets** | [**List&lt;String&gt;**](String.md)| Targets URIs | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createEvents**
> ObjectUriResponse createEvents(authorization, body, acceptLanguage)

Create a list of event



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var authorization = authorization_example; // String | Authentication token
var body = [new List&lt;EventCreationDTO&gt;()]; // List<EventCreationDTO> | 
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createEvents(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->createEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**List&lt;EventCreationDTO&gt;**](EventCreationDTO.md)|  | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMoves**
> ObjectUriResponse createMoves(authorization, body, acceptLanguage)

Create a list of move event



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var authorization = authorization_example; // String | Authentication token
var body = [new List&lt;MoveCreationDTO&gt;()]; // List<MoveCreationDTO> | 
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.createMoves(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->createMoves: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**List&lt;MoveCreationDTO&gt;**](MoveCreationDTO.md)|  | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteEvent**
> ObjectUriResponse deleteEvent(uri, authorization, acceptLanguage)

Delete an event



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var uri = "http://opensilex.dev/events/deplacement/1865162374"; // String | Event URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteEvent(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->deleteEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Event URI | 
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

# **deleteMoveEvent**
> ObjectUriResponse deleteMoveEvent(uri, authorization, acceptLanguage)

Delete a move event



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var uri = "http://opensilex.dev/events/deplacement/1865162374"; // String | Event URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.deleteMoveEvent(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->deleteMoveEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Event URI | 
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

# **getEvent**
> EventGetDTO getEvent(uri, authorization, acceptLanguage)

Get an event



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var uri = "http://opensilex.dev/events/1865162374"; // String | Event URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getEvent(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->getEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Event URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**EventGetDTO**](EventGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getEventDetails**
> EventDetailsDTO getEventDetails(uri, authorization, acceptLanguage)

Get an event with all it's properties



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var uri = "http://opensilex.dev/events/1865162374"; // String | Event URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getEventDetails(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->getEventDetails: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Event URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**EventDetailsDTO**](EventDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMoveEvent**
> MoveDetailsDTO getMoveEvent(uri, authorization, acceptLanguage)

Get a move with all it's properties



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var uri = "http://opensilex.dev/events/1865162374"; // String | Move URI
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.getMoveEvent(uri, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->getMoveEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| Move URI | 
 **authorization** | **String**| Authentication token | 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**MoveDetailsDTO**](MoveDetailsDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **importEventCSV**
> CSVValidationDTO importEventCSV(file, authorization, acceptLanguage)

Import a CSV file with one move and one target per line



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var file = /path/to/file.txt; // MultipartFile | Event file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.importEventCSV(file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->importEventCSV: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| Event file | 
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

# **importMoveCSV**
> CSVValidationDTO importMoveCSV(file, authorization, acceptLanguage)

Import a CSV file with one move and one target per line



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var file = /path/to/file.txt; // MultipartFile | Move file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.importMoveCSV(file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->importMoveCSV: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| Move file | 
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

# **searchEvents**
> List<EventGetDTO> searchEvents(authorization, rdfType, start, end, target, description, orderBy, page, pageSize, acceptLanguage)

Search events



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var authorization = authorization_example; // String | Authentication token
var rdfType = "http://www.opensilex.org/vocabulary/oeev#MoveFrom"; // String | Event type
var start = "2019-09-08T12:00:00+01:00"; // String | Start date : match event after the given start date
var end = "2021-09-08T12:00:00+01:00"; // String | End date : match event before the given end date
var target = "http://www.opensilex.org/demo/2018/o18000076(exact match) or o18000076(partial match)"; // String | Target partial/exact URI
var description = "The pest attack"; // String | Description regex pattern
var orderBy = ["end=asc"]; // List<String> | List of fields to sort as an array of fieldName=asc|desc
var page = 56; // int | Page number
var pageSize = 56; // int | Page size
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.searchEvents(authorization, rdfType, start, end, target, description, orderBy, page, pageSize, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->searchEvents: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **rdfType** | **String**| Event type | [optional] 
 **start** | **String**| Start date : match event after the given start date | [optional] 
 **end** | **String**| End date : match event before the given end date | [optional] 
 **target** | **String**| Target partial/exact URI | [optional] 
 **description** | **String**| Description regex pattern | [optional] 
 **orderBy** | [**List&lt;String&gt;**](String.md)| List of fields to sort as an array of fieldName&#x3D;asc|desc | [optional] 
 **page** | **int**| Page number | [optional] 
 **pageSize** | **int**| Page size | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**List<EventGetDTO>**](EventGetDTO.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateEvent**
> ObjectUriResponse updateEvent(authorization, body, acceptLanguage)

Update an event



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var authorization = authorization_example; // String | Authentication token
var body = new EventUpdateDTO(); // EventUpdateDTO | Event description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateEvent(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->updateEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**EventUpdateDTO**](EventUpdateDTO.md)| Event description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateMoveEvent**
> ObjectUriResponse updateMoveEvent(authorization, body, acceptLanguage)

Update a move event



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var authorization = authorization_example; // String | Authentication token
var body = new MoveUpdateDTO(); // MoveUpdateDTO | Event description
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.updateMoveEvent(authorization, body, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->updateMoveEvent: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Authentication token | 
 **body** | [**MoveUpdateDTO**](MoveUpdateDTO.md)| Event description | [optional] 
 **acceptLanguage** | **String**| Request accepted language | [optional] 

### Return type

[**ObjectUriResponse**](ObjectUriResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateEventCSV**
> CSVValidationDTO validateEventCSV(file, authorization, acceptLanguage)

Check a CSV file with one move and one target per line



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var file = /path/to/file.txt; // MultipartFile | Event file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.validateEventCSV(file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->validateEventCSV: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| Event file | 
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

# **validateMoveCSV**
> CSVValidationDTO validateMoveCSV(file, authorization, acceptLanguage)

Check a CSV file with one move and one target per line



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EventsApi();
var file = /path/to/file.txt; // MultipartFile | Move file
var authorization = authorization_example; // String | Authentication token
var acceptLanguage = "en"; // String | Request accepted language

try { 
    var result = api_instance.validateMoveCSV(file, authorization, acceptLanguage);
    print(result);
} catch (e) {
    print("Exception when calling EventsApi->validateMoveCSV: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| Move file | 
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

