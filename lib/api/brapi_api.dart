part of swagger.api;



class BRAPIApi {
  final ApiClient apiClient;

  BRAPIApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Check the available BrAPI calls
  ///
  /// Check the available BrAPI calls
  Future<List<Call>> getCalls({ int page, int pageSize, String dataType }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;

    // create path and map variables
    String path = "/brapi/v1/calls".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(dataType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "dataType", dataType));
    }
    
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
        (apiClient.deserialize(response.body, 'List<Call>') as List).map((item) => item as Call).toList();
    } else {
      return null;
    }
  }
  /// Submit a search request for germplasm
  ///
  /// 
  Future<GermplasmDTO> getGermplasmBySearch( { String germplasmDbId, String germplasmPUI, String germplasmName, String commonCropName, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/brapi/v1/germplasm".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(germplasmDbId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "germplasmDbId", germplasmDbId));
    }
    if(germplasmPUI != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "germplasmPUI", germplasmPUI));
    }
    if(germplasmName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "germplasmName", germplasmName));
    }
    if(commonCropName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "commonCropName", commonCropName));
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
          apiClient.deserialize(response.body, 'GermplasmDTO') as GermplasmDTO ;
    } else {
      return null;
    }
  }
  /// List all the observation units measured in the study.
  ///
  /// List all the observation units measured in the study.
  Future<List<ObservationUnitDTO>> getObservationUnits(String studyDbId,  { String observationLevel, int pageSize, int page, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(studyDbId == null) {
     throw new ApiException(400, "Missing required param: studyDbId");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/brapi/v1/studies/{studyDbId}/observationunits".replaceAll("{format}","json").replaceAll("{" + "studyDbId" + "}", studyDbId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(observationLevel != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "observationLevel", observationLevel));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
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
        (apiClient.deserialize(response.body, 'List<ObservationUnitDTO>') as List).map((item) => item as ObservationUnitDTO).toList();
    } else {
      return null;
    }
  }
  /// List all the observation variables measured in the study.
  ///
  /// List all the observation variables measured in the study.
  Future<List<ObservationVariableDTO>> getObservationVariables(String studyDbId,  { int pageSize, int page, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(studyDbId == null) {
     throw new ApiException(400, "Missing required param: studyDbId");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/brapi/v1/studies/{studyDbId}/observationvariables".replaceAll("{format}","json").replaceAll("{" + "studyDbId" + "}", studyDbId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
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
        (apiClient.deserialize(response.body, 'List<ObservationVariableDTO>') as List).map((item) => item as ObservationVariableDTO).toList();
    } else {
      return null;
    }
  }
  /// Get the observations associated to a specific study
  ///
  /// Get the observations associated to a specific study
  Future<List<ObservationDTO>> getObservations(String studyDbId,  { List<String> observationVariableDbIds, int pageSize, int page, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(studyDbId == null) {
     throw new ApiException(400, "Missing required param: studyDbId");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/brapi/v1/studies/{studyDbId}/observations".replaceAll("{format}","json").replaceAll("{" + "studyDbId" + "}", studyDbId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(observationVariableDbIds != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "observationVariableDbIds", observationVariableDbIds));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
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
        (apiClient.deserialize(response.body, 'List<ObservationDTO>') as List).map((item) => item as ObservationDTO).toList();
    } else {
      return null;
    }
  }
  /// Retrieve studies information
  ///
  /// Retrieve studies information
  Future<List<StudyDTO>> getStudies( { String studyDbId, String active, String sortBy, String sortOrder, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/brapi/v1/studies".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(studyDbId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "studyDbId", studyDbId));
    }
    if(active != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "active", active));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }
    if(sortOrder != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortOrder", sortOrder));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
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
        (apiClient.deserialize(response.body, 'List<StudyDTO>') as List).map((item) => item as StudyDTO).toList();
    } else {
      return null;
    }
  }
  /// Retrieve studies information
  ///
  /// Retrieve studies information
  Future<List<StudyDTO>> getStudiesSearch( { String studyDbId, String active, String sortBy, String sortOrder, int pageSize, int page, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/brapi/v1/studies-search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(studyDbId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "studyDbId", studyDbId));
    }
    if(active != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "active", active));
    }
    if(sortBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortBy", sortBy));
    }
    if(sortOrder != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "sortOrder", sortOrder));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
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
        (apiClient.deserialize(response.body, 'List<StudyDTO>') as List).map((item) => item as StudyDTO).toList();
    } else {
      return null;
    }
  }
  /// Retrieve study details
  ///
  /// Retrieve study details
  Future<List<StudyDetailsDTO>> getStudyDetails(String studyDbId,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(studyDbId == null) {
     throw new ApiException(400, "Missing required param: studyDbId");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/brapi/v1/studies/{studyDbId}".replaceAll("{format}","json").replaceAll("{" + "studyDbId" + "}", studyDbId.toString());

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
        (apiClient.deserialize(response.body, 'List<StudyDetailsDTO>') as List).map((item) => item as StudyDetailsDTO).toList();
    } else {
      return null;
    }
  }
  /// Retrieve variable details by id
  ///
  /// Retrieve variable details by id
  Future<List<ObservationVariableDTO>> getVariableDetails(String observationVariableDbId,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(observationVariableDbId == null) {
     throw new ApiException(400, "Missing required param: observationVariableDbId");
    }
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/brapi/v1/variables/{observationVariableDbId}".replaceAll("{format}","json").replaceAll("{" + "observationVariableDbId" + "}", observationVariableDbId.toString());

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
        (apiClient.deserialize(response.body, 'List<ObservationVariableDTO>') as List).map((item) => item as ObservationVariableDTO).toList();
    } else {
      return null;
    }
  }
  /// Call to retrieve a list of observationVariables available in the system
  ///
  /// retrieve variables information
  Future<List<ObservationVariableDTO>> getVariablesList( { String observationVariableDbId, int pageSize, int page, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/brapi/v1/variables".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(observationVariableDbId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "observationVariableDbId", observationVariableDbId));
    }
    if(pageSize != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "pageSize", pageSize));
    }
    if(page != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "page", page));
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
        (apiClient.deserialize(response.body, 'List<ObservationVariableDTO>') as List).map((item) => item as ObservationVariableDTO).toList();
    } else {
      return null;
    }
  }
}
