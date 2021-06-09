part of swagger.api;



class ProjectsApi {
  final ApiClient apiClient;

  ProjectsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a project
  ///
  /// 
  Future<ObjectUriResponse> createProject( { ProjectCreationDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/projects".replaceAll("{format}","json");

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
  /// Delete a project
  ///
  /// 
  Future<ObjectUriResponse> deleteProject(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/projects/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
  /// Get a project
  ///
  /// 
  Future<ProjectGetDetailDTO> getProject(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/projects/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
          apiClient.deserialize(response.body, 'ProjectGetDetailDTO') as ProjectGetDetailDTO ;
    } else {
      return null;
    }
  }
  /// Get projects by their URIs
  ///
  /// 
  Future<List<ProjectGetDTO>> getProjectsByURI(List<String> uris,  { String acceptLanguage }) async {
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
    String path = "/core/projects/by_uris".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<ProjectGetDTO>') as List).map((item) => item as ProjectGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Search projects
  ///
  /// 
  Future<List<ProjectGetDTO>> searchProjects( { String name, int year, String keyword, String financialFunding, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/projects".replaceAll("{format}","json");

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
    if(keyword != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "keyword", keyword));
    }
    if(financialFunding != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "financial_funding", financialFunding));
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
        (apiClient.deserialize(response.body, 'List<ProjectGetDTO>') as List).map((item) => item as ProjectGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Update a project
  ///
  /// 
  Future<ObjectUriResponse> updateProject( { ProjectCreationDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/projects".replaceAll("{format}","json");

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
