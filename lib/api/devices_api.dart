part of swagger.api;



class DevicesApi {
  final ApiClient apiClient;

  DevicesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Count device data
  ///
  /// 
  @deprecated
  Future<int> countDeviceData(String uri,  { String startDate, String endDate, String timezone, List<String> experiment, List<String> variable, double minConfidence, double maxConfidence, List<String> provenance, String metadata, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/{uri}/data/count".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    }
    if(timezone != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timezone", timezone));
    }
    if(experiment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiment", experiment));
    }
    if(variable != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "variable", variable));
    }
    if(minConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min_confidence", minConfidence));
    }
    if(maxConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_confidence", maxConfidence));
    }
    if(provenance != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "provenance", provenance));
    }
    if(metadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "metadata", metadata));
    }
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
  /// Create a device
  ///
  /// 
  Future<ObjectUriResponse> createDevice( { DeviceCreationDTO body, bool checkOnly, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(checkOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "checkOnly", checkOnly));
    }
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ObjectUriResponse') as ObjectUriResponse ;
    } else {
      return null;
    }
  }
  /// Delete a device
  ///
  /// 
  Future<ObjectUriResponse> deleteDevice(String uri,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ObjectUriResponse') as ObjectUriResponse ;
    } else {
      return null;
    }
  }
  /// export devices
  ///
  /// 
  Future exportDevices( { String rdfType, bool includeSubtypes, String name, int year, DateTime existenceDate, String brand, String model, String serialNumber, String metadata, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/export".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(rdfType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "rdf_type", rdfType));
    }
    if(includeSubtypes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "include_subtypes", includeSubtypes));
    }
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(year != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "year", year));
    }
    if(existenceDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "existence_date", existenceDate));
    }
    if(brand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "brand", brand));
    }
    if(model != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "model", model));
    }
    if(serialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "serial_number", serialNumber));
    }
    if(metadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "metadata", metadata));
    }
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// export devices
  ///
  /// 
  Future exportList( { URIsListPostDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/export_by_uris".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// Get device detail
  ///
  /// 
  Future<DeviceGetDetailsDTO> getDevice(String uri,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'DeviceGetDetailsDTO') as DeviceGetDetailsDTO ;
    } else {
      return null;
    }
  }
  /// Get devices by uris
  ///
  /// 
  Future<List<DeviceGetDTO>> getDeviceByUris(List<String> uris,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uris == null) {
     throw new ApiException(400, "Missing required param: uris");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/by_uris".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "uris", uris));
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<DeviceGetDTO>') as List).map((item) => item as DeviceGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get provenances of datafiles linked to this device
  ///
  /// 
  @deprecated
  Future<List<ProvenanceGetDTO>> getDeviceDataFilesProvenances(String uri,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/{uri}/datafiles/provenances".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<ProvenanceGetDTO>') as List).map((item) => item as ProvenanceGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get provenances of data that have been measured on this device
  ///
  /// 
  @deprecated
  Future<List<ProvenanceGetDTO>> getDeviceDataProvenances(String uri,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/{uri}/data/provenances".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<ProvenanceGetDTO>') as List).map((item) => item as ProvenanceGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get variables linked to the device
  ///
  /// 
  Future<List<NamedResourceDTO>> getDeviceVariables(String uri,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/{uri}/variables".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<NamedResourceDTO>') as List).map((item) => item as NamedResourceDTO).toList();
    } else {
      return null;
    }
  }
  /// Search device data
  ///
  /// 
  @deprecated
  Future<List<DataGetDTO>> searchDeviceData(String uri,  { String startDate, String endDate, String timezone, List<String> experiment, List<String> variable, double minConfidence, double maxConfidence, List<String> provenance, String metadata, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/{uri}/data".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    }
    if(timezone != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timezone", timezone));
    }
    if(experiment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiment", experiment));
    }
    if(variable != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "variable", variable));
    }
    if(minConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min_confidence", minConfidence));
    }
    if(maxConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_confidence", maxConfidence));
    }
    if(provenance != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "provenance", provenance));
    }
    if(metadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "metadata", metadata));
    }
    if(orderBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "order_by", orderBy));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page_size", pageSize));
    }
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<DataGetDTO>') as List).map((item) => item as DataGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Search device datafiles descriptions
  ///
  /// 
  @deprecated
  Future<List<DataGetDTO>> searchDeviceDatafiles(String uri,  { String rdfType, String startDate, String endDate, String timezone, List<String> experiment, List<String> scientificObjects, List<String> provenances, String metadata, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices/{uri}/datafiles".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(rdfType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "rdf_type", rdfType));
    }
    if(startDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
    }
    if(endDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    }
    if(timezone != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timezone", timezone));
    }
    if(experiment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiment", experiment));
    }
    if(scientificObjects != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "scientific_objects", scientificObjects));
    }
    if(provenances != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "provenances", provenances));
    }
    if(metadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "metadata", metadata));
    }
    if(orderBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "order_by", orderBy));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page_size", pageSize));
    }
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<DataGetDTO>') as List).map((item) => item as DataGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Search devices
  ///
  /// 
  Future<List<DeviceGetDTO>> searchDevices( { String rdfType, bool includeSubtypes, String name, int year, DateTime existenceDate, String brand, String model, String serialNumber, String metadata, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(rdfType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "rdf_type", rdfType));
    }
    if(includeSubtypes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "include_subtypes", includeSubtypes));
    }
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(year != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "year", year));
    }
    if(existenceDate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "existence_date", existenceDate));
    }
    if(brand != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "brand", brand));
    }
    if(model != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "model", model));
    }
    if(serialNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "serial_number", serialNumber));
    }
    if(metadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "metadata", metadata));
    }
    if(orderBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "order_by", orderBy));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page_size", pageSize));
    }
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<DeviceGetDTO>') as List).map((item) => item as DeviceGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Update a device
  ///
  /// 
  Future<ObjectUriResponse> updateDevice(DeviceCreationDTO body,  { String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/devices".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ObjectUriResponse') as ObjectUriResponse ;
    } else {
      return null;
    }
  }
}
