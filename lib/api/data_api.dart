part of swagger.api;



class DataApi {
  final ApiClient apiClient;

  DataApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add data
  ///
  /// 
  Future<dynamic> addListData( { List<DataCreationDTO> body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data".replaceAll("{format}","json");

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
      return response.body;
    } else {
      return null;
    }
  }
  /// Count data
  ///
  /// 
  Future<int> countData( { String startDate, String endDate, String timezone, List<String> experiments, List<String> targets, List<String> variables, List<String> devices, double minConfidence, double maxConfidence, List<String> provenances, String metadata, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data/count".replaceAll("{format}","json");

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
    if(experiments != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiments", experiments));
    }
    if(targets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "targets", targets));
    }
    if(variables != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "variables", variables));
    }
    if(devices != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "devices", devices));
    }
    if(minConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min_confidence", minConfidence));
    }
    if(maxConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_confidence", maxConfidence));
    }
    if(provenances != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "provenances", provenances));
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
  /// Add a provenance
  ///
  /// 
  Future<ObjectUriResponse> createProvenance( { ProvenanceCreationDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/provenances".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ObjectUriResponse') as ObjectUriResponse ;
    } else {
      return null;
    }
  }
  /// Delete data
  ///
  /// 
  Future<ObjectUriResponse> deleteData(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/data/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
  /// Delete data on criteria
  ///
  /// 
  Future<ObjectUriResponse> deleteDataOnSearch( { String experiment, String target, String variable, String provenance, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(experiment != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "experiment", experiment));
    }
    if(target != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "target", target));
    }
    if(variable != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "variable", variable));
    }
    if(provenance != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "provenance", provenance));
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
  /// Delete a provenance that doesn&#39;t describe data
  ///
  /// 
  Future<ObjectUriResponse> deleteProvenance(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/provenances/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
  /// Export data
  ///
  /// 
  Future exportData( { String startDate, String endDate, String timezone, List<String> experiments, List<String> targets, List<String> variables, List<String> devices, double minConfidence, double maxConfidence, List<String> provenances, String metadata, String mode, bool withRawData, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data/export".replaceAll("{format}","json");

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
    if(experiments != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiments", experiments));
    }
    if(targets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "targets", targets));
    }
    if(variables != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "variables", variables));
    }
    if(devices != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "devices", devices));
    }
    if(minConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min_confidence", minConfidence));
    }
    if(maxConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_confidence", maxConfidence));
    }
    if(provenances != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "provenances", provenances));
    }
    if(metadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "metadata", metadata));
    }
    if(mode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "mode", mode));
    }
    if(withRawData != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "with_raw_data", withRawData));
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
          ;
    } else {
      return ;
    }
  }
  /// Get data
  ///
  /// 
  Future<DataGetDTO> getData(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/data/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
          apiClient.deserialize(response.body, 'DataGetDTO') as DataGetDTO ;
    } else {
      return null;
    }
  }
  /// Get a data file
  ///
  /// 
  Future getDataFile(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/datafiles/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
          ;
    } else {
      return ;
    }
  }
  /// Get a data file description
  ///
  /// 
  Future<DataFileGetDTO> getDataFileDescription(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/datafiles/{uri}/description".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = [];

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
          apiClient.deserialize(response.body, 'DataFileGetDTO') as DataFileGetDTO ;
    } else {
      return null;
    }
  }
  /// Search data files
  ///
  /// 
  Future<List<DataFileGetDTO>> getDataFileDescriptionsBySearch( { String rdfType, String startDate, String endDate, String timezone, List<String> experiments, List<String> targets, List<String> devices, List<String> provenances, String metadata, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/datafiles".replaceAll("{format}","json");

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
    if(experiments != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiments", experiments));
    }
    if(targets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "targets", targets));
    }
    if(devices != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "devices", devices));
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

    List<String> contentTypes = [];

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
        (apiClient.deserialize(response.body, 'List<DataFileGetDTO>') as List).map((item) => item as DataFileGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get provenances linked to datafiles
  ///
  /// 
  Future<List<ProvenanceGetDTO>> getDatafilesProvenances( { List<String> experiments, List<String> targets, List<String> devices, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/datafiles/provenances".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(experiments != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiments", experiments));
    }
    if(targets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "targets", targets));
    }
    if(devices != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "devices", devices));
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
        (apiClient.deserialize(response.body, 'List<ProvenanceGetDTO>') as List).map((item) => item as ProvenanceGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get a picture thumbnail
  ///
  /// 
  Future getPicturesThumbnails(String uri,  { int scaledWidth, int scaledHeight, String acceptLanguage }) async {
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
    String path = "/core/datafiles/{uri}/thumbnail".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(scaledWidth != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "scaled_width", scaledWidth));
    }
    if(scaledHeight != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "scaled_height", scaledHeight));
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
  /// Get a provenance
  ///
  /// 
  Future<ProvenanceGetDTO> getProvenance(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/provenances/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
          apiClient.deserialize(response.body, 'ProvenanceGetDTO') as ProvenanceGetDTO ;
    } else {
      return null;
    }
  }
  /// Get a list of provenances by their URIs
  ///
  /// 
  Future<List<ProvenanceGetDTO>> getProvenancesByURIs(List<String> uris,  { String acceptLanguage }) async {
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
    String path = "/core/provenances/by_uris".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<ProvenanceGetDTO>') as List).map((item) => item as ProvenanceGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get provenances linked to data
  ///
  /// 
  Future<List<ProvenanceGetDTO>> getUsedProvenances( { List<String> experiments, List<String> targets, List<String> variables, List<String> devices, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data/provenances".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(experiments != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiments", experiments));
    }
    if(targets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "targets", targets));
    }
    if(variables != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "variables", variables));
    }
    if(devices != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "devices", devices));
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
        (apiClient.deserialize(response.body, 'List<ProvenanceGetDTO>') as List).map((item) => item as ProvenanceGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get variables linked to data
  ///
  /// 
  Future<List<ProvenanceGetDTO>> getUsedVariables( { List<String> experiments, List<String> targets, List<String> provenances, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data/variables".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(experiments != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiments", experiments));
    }
    if(targets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "targets", targets));
    }
    if(provenances != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "provenances", provenances));
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
        (apiClient.deserialize(response.body, 'List<ProvenanceGetDTO>') as List).map((item) => item as ProvenanceGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Import a CSV file for the given provenanceURI
  ///
  /// 
  Future<DataCSVValidationDTO> importCSVData(String provenance, MultipartFile file,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(provenance == null) {
     throw new ApiException(400, "Missing required param: provenance");
    }
    if(file == null) {
     throw new ApiException(400, "Missing required param: file");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data/import".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "provenance", provenance));
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if (file != null) {
        hasFields = true;
        mp.files.add(file);
      }
      
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
          apiClient.deserialize(response.body, 'DataCSVValidationDTO') as DataCSVValidationDTO ;
    } else {
      return null;
    }
  }
  /// Add a data file
  ///
  /// {\&quot;rdf_type\&quot;:\&quot;http://www.opensilex.org/vocabulary/oeso#Image\&quot;, \&quot;date\&quot;:\&quot;2020-08-21T00:00:00+01:00\&quot;, \&quot;target\&quot;:\&quot;http://plot01\&quot;, \&quot;provenance\&quot;: { \&quot;uri\&quot;:\&quot;http://opensilex.dev/provenance/1598001689415\&quot; }, \&quot;metadata\&quot;:{ \&quot;LabelView\&quot; : \&quot;side90\&quot;, \&quot;paramA\&quot; : \&quot;90\&quot;}}
  Future<ObjectUriResponse> postDataFile(String description, MultipartFile file,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(description == null) {
     throw new ApiException(400, "Missing required param: description");
    }
    if(file == null) {
     throw new ApiException(400, "Missing required param: file");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/datafiles".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if (description != null) {
        hasFields = true;
        mp.fields['description'] = parameterToString(description);
      }
      
      if (file != null) {
        hasFields = true;
        mp.files.add(file);
      }
      
      if(hasFields)
        postBody = mp;
    }
    else {
      if (description != null)
        formParams['description'] = parameterToString(description);

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
  /// Describe datafiles and give their relative paths in the configured storage system. In the case of already stored datafiles.
  ///
  /// 
  Future<ObjectUriResponse> postDataFilePaths(List<DataFilePathCreationDTO> body,  { String acceptLanguage }) async {
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
    String path = "/core/datafiles/description".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ObjectUriResponse') as ObjectUriResponse ;
    } else {
      return null;
    }
  }
  /// Search data
  ///
  /// 
  Future<List<DataGetDTO>> searchDataList( { String startDate, String endDate, String timezone, List<String> experiments, List<String> targets, List<String> variables, List<String> devices, double minConfidence, double maxConfidence, List<String> provenances, String metadata, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data".replaceAll("{format}","json");

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
    if(experiments != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "experiments", experiments));
    }
    if(targets != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "targets", targets));
    }
    if(variables != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "variables", variables));
    }
    if(devices != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "devices", devices));
    }
    if(minConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min_confidence", minConfidence));
    }
    if(maxConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_confidence", maxConfidence));
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
  /// Get provenances
  ///
  /// 
  Future<List<ProvenanceGetDTO>> searchProvenance( { String name, String description, String activity, String activityType, String agent, String agentType, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/provenances".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(description != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "description", description));
    }
    if(activity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "activity", activity));
    }
    if(activityType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "activity_type", activityType));
    }
    if(agent != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "agent", agent));
    }
    if(agentType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "agent_type", agentType));
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
        (apiClient.deserialize(response.body, 'List<ProvenanceGetDTO>') as List).map((item) => item as ProvenanceGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Update data
  ///
  /// 
  Future<dynamic> update( { DataUpdateDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data".replaceAll("{format}","json");

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
      return response.body;
    } else {
      return null;
    }
  }
  /// Update confidence index
  ///
  /// 
  Future<ObjectUriResponse> updateConfidence(String uri,  { DataConfidenceDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data/{uri}/confidence".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
  /// Update a provenance
  ///
  /// 
  Future<ObjectUriResponse> updateProvenance( { ProvenanceUpdateDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/provenances".replaceAll("{format}","json");

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
  /// Import a CSV file for the given provenanceURI.
  ///
  /// 
  Future<DataCSVValidationDTO> validateCSV(String provenance, MultipartFile file,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(provenance == null) {
     throw new ApiException(400, "Missing required param: provenance");
    }
    if(file == null) {
     throw new ApiException(400, "Missing required param: file");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/data/import_validation".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "provenance", provenance));
    headerParams["Authorization"] = authorization;
headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if (file != null) {
        hasFields = true;
        mp.files.add(file);
      }
      
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
          apiClient.deserialize(response.body, 'DataCSVValidationDTO') as DataCSVValidationDTO ;
    } else {
      return null;
    }
  }
}
