part of swagger.api;



class ExperimentsApi {
  final ApiClient apiClient;

  ExperimentsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add an experiment
  ///
  /// 
  Future<ObjectUriResponse> createExperiment( { ExperimentCreationDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/experiments".replaceAll("{format}","json");

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
  /// Delete an experiment
  ///
  /// 
  Future<ObjectUriResponse> deleteExperiment(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
  /// export experiment data
  ///
  /// 
  @deprecated
  Future exportExperimentDataList(String uri,  { String startDate, String endDate, String timezone, List<String> scientificObjects, List<String> variables, double minConfidence, double maxConfidence, String provenance, String metadata, String mode, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}/data/export".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
    if(scientificObjects != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "scientific_objects", scientificObjects));
    }
    if(variables != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "variables", variables));
    }
    if(minConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "min_confidence", minConfidence));
    }
    if(maxConfidence != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "max_confidence", maxConfidence));
    }
    if(provenance != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "provenance", provenance));
    }
    if(metadata != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "metadata", metadata));
    }
    if(mode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "mode", mode));
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
  /// Get facilities available for an experiment
  ///
  /// 
  Future<List<InfrastructureFacilityGetDTO>> getAvailableFacilities(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}/available_facilities".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
        (apiClient.deserialize(response.body, 'List<InfrastructureFacilityGetDTO>') as List).map((item) => item as InfrastructureFacilityGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get factors with their levels associated to an experiment
  ///
  /// 
  Future<List<FactorDetailsGetDTO>> getAvailableFactors(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}/factors".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
        (apiClient.deserialize(response.body, 'List<FactorDetailsGetDTO>') as List).map((item) => item as FactorDetailsGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get species present in an experiment
  ///
  /// 
  Future<List<SpeciesDTO>> getAvailableSpecies(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}/species".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
        (apiClient.deserialize(response.body, 'List<SpeciesDTO>') as List).map((item) => item as SpeciesDTO).toList();
    } else {
      return null;
    }
  }
  /// Get an experiment
  ///
  /// 
  Future<ExperimentGetDTO> getExperiment(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
          apiClient.deserialize(response.body, 'ExperimentGetDTO') as ExperimentGetDTO ;
    } else {
      return null;
    }
  }
  /// Get experiments URIs
  ///
  /// 
  Future<List<ExperimentGetListDTO>> getExperimentsByURIs(List<String> uris,  { String acceptLanguage }) async {
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
    String path = "/core/experiments/by_uris".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<ExperimentGetListDTO>') as List).map((item) => item as ExperimentGetListDTO).toList();
    } else {
      return null;
    }
  }
  /// Get facilities involved in an experiment
  ///
  /// 
  Future<List<InfrastructureFacilityGetDTO>> getFacilities(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}/facilities".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
        (apiClient.deserialize(response.body, 'List<InfrastructureFacilityGetDTO>') as List).map((item) => item as InfrastructureFacilityGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Get variables involved in an experiment
  ///
  /// 
  @deprecated
  Future<List<NamedResourceDTO>> getUsedVariables1(String uri,  { List<String> scientificObjects, String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}/variables".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(scientificObjects != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "scientific_objects", scientificObjects));
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
        (apiClient.deserialize(response.body, 'List<NamedResourceDTO>') as List).map((item) => item as NamedResourceDTO).toList();
    } else {
      return null;
    }
  }
  /// Import a CSV file for the given experiment URI and scientific object type.
  ///
  /// 
  Future<DataCSVValidationDTO> importCSVData1(String uri, String provenance, MultipartFile file,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
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
    String path = "/core/experiments/{uri}/data/import".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
        mp.fields['file'] = file.field;
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
  /// Search data
  ///
  /// 
  @deprecated
  Future<List<DataGetDTO>> searchExperimentDataList(String uri,  { String startDate, String endDate, String timezone, List<String> scientificObjects, List<String> variables, double minConfidence, double maxConfidence, List<String> provenances, String metadata, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}/data".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
    if(scientificObjects != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "scientific_objects", scientificObjects));
    }
    if(variables != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "variables", variables));
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
  /// Get provenances involved in an experiment
  ///
  /// 
  @deprecated
  Future<List<ProvenanceGetDTO>> searchExperimentProvenances(String uri,  { String name, String description, String activity, String activityType, String agent, String agentType, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
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
    String path = "/core/experiments/{uri}/provenances".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
  /// Search experiments
  ///
  /// 
  Future<List<ExperimentGetListDTO>> searchExperiments( { String name, int year, bool isEnded, List<String> species, List<String> factors, List<String> projects, bool isPublic, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/experiments".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(year != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "year", year));
    }
    if(isEnded != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "is_ended", isEnded));
    }
    if(species != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "species", species));
    }
    if(factors != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "factors", factors));
    }
    if(projects != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "projects", projects));
    }
    if(isPublic != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "is_public", isPublic));
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
        (apiClient.deserialize(response.body, 'List<ExperimentGetListDTO>') as List).map((item) => item as ExperimentGetListDTO).toList();
    } else {
      return null;
    }
  }
  /// Update an experiment
  ///
  /// 
  Future<ObjectUriResponse> updateExperiment( { ExperimentCreationDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/experiments".replaceAll("{format}","json");

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
  /// Import a CSV file for the given experiment URI and scientific object type.
  ///
  /// 
  Future<DataCSVValidationDTO> validateCSV1(String uri, String provenance, MultipartFile file,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
     throw new ApiException(400, "Missing required param: uri");
    }
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
    String path = "/core/experiments/{uri}/data/import_validation".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
        mp.fields['file'] = file.field;
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
