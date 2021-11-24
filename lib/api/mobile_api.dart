part of swagger.api;

class MobileApi {
  final ApiClient apiClient;

  MobileApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a form
  ///
  ///
  //Future<ObjectUriResponse> createForm(
  Future<dynamic> createForm(
      {FormCreationDTO body, String acceptLanguage}) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if (authorization == null) {
      throw new ApiException(
          400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/forms".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return response.body;
      //return apiClient.deserialize(response.body, 'ObjectUriResponse')
      //as ObjectUriResponse;
      // not this apiClient.deserialize(response.body, 'FormCreationDTO') as ObjectUriResponse;
      // not this (apiClient.deserialize(response.body, 'List<FormGetDTO>') as List).map((item) => item as FormGetDTO).toList();
    } else {
      return null;
    }
  }

  /// Delete form
  ///
  ///
  Future<ObjectUriResponse> deleteForm(String uri,
      {String acceptLanguage}) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if (uri == null) {
      throw new ApiException(400, "Missing required param: uri");
    }
    if (authorization == null) {
      throw new ApiException(
          400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/{uri}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "uri" + "}", uri.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'ObjectUriResponse')
          as ObjectUriResponse;
    } else {
      return null;
    }
  }

  /// Search forms
  ///
  ///
  Future<List<FormGetDTO>> searchFormList(
      {List<String> uris,
      List<String> orderBy,
      int page,
      int pageSize,
      String acceptLanguage}) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if (authorization == null) {
      throw new ApiException(
          400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if (uris != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("multi", "uris", uris));
    }
    if (orderBy != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("multi", "order_by", orderBy));
    }
    if (page != null) {
      queryParams
          .addAll(_convertParametersForCollectionFormat("", "page", page));
    }
    if (pageSize != null) {
      queryParams.addAll(
          _convertParametersForCollectionFormat("", "page_size", pageSize));
    }
    headerParams["Authorization"] = authorization;
    headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<FormGetDTO>') as List)
          .map((item) => item as FormGetDTO)
          .toList();
    } else {
      return null;
    }
  }

  /// Update form
  ///
  ///
  //Future<ObjectUriResponse> update1(
  Future<dynamic> update1(
      {FormUpdateDTO body, String acceptLanguage}) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if (authorization == null) {
      throw new ApiException(
          400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["Accept-Language"] = acceptLanguage;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);

      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'PUT', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return response.body;
      //return apiClient.deserialize(response.body, 'ObjectUriResponse') as ObjectUriResponse;
    } else {
      return null;
    }
  }
}
