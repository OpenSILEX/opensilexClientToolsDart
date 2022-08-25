part of swagger.api;



class MobileApi {
  final ApiClient apiClient;

  MobileApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a form
  ///
  /// 
  Future<dynamic> createForm( { FormCreationDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
      throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/forms".replaceAll("{format}","json");

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
        response.body ;
    } else {
      return null;
    }
  }
  /// Search forms by density
  ///
  ///
  Future<List<FormGetDTO>> searchFormsByDensityData(bool isCurrentWeek, bool showFinishedSuivies, String startDate, String endDate,  { List<String> variableUris, List<String> orderBy, String timezone, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(isCurrentWeek == null) {
      throw new ApiException(400, "Missing required param: isCurrentWeek");
    }
    if(showFinishedSuivies == null) {
      throw new ApiException(400, "Missing required param: showFinishedSuivies");
    }
    if(startDate == null) {
      throw new ApiException(400, "Missing required param: startDate");
    }
    if(endDate == null) {
      throw new ApiException(400, "Missing required param: endDate");
    }
    if(authorization == null) {
      throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/forms/density".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(variableUris != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "variableUris", variableUris));
    }
    queryParams.addAll(_convertParametersForCollectionFormat("", "isCurrentWeek", isCurrentWeek));
    queryParams.addAll(_convertParametersForCollectionFormat("", "showFinishedSuivies", showFinishedSuivies));
    queryParams.addAll(_convertParametersForCollectionFormat("", "start_date", startDate));
    queryParams.addAll(_convertParametersForCollectionFormat("", "end_date", endDate));
    if(orderBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "order_by", orderBy));
    }
    if(timezone != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timezone", timezone));
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
        (apiClient.deserialize(response.body, 'List<FormGetDTO>') as List).map((item) => item as FormGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Add a section
  ///
  ///
  Future<dynamic> createSection( { SectionCreationDTO body, String formCode, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
      throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/sections".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(formCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "form_code", formCode));
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
        response.body ;
    } else {
      return null;
    }
  }
  /// Delete form
  ///
  /// 
  Future<dynamic> deleteForm(String uri, bool deleteChildren,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(uri == null) {
      throw new ApiException(400, "Missing required param: uri");
    }
    if(deleteChildren == null) {
      throw new ApiException(400, "Missing required param: deleteChildren");
    }
    if(authorization == null) {
      throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/forms/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", Uri.encodeComponent(uri.toString()));

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    queryParams.addAll(_convertParametersForCollectionFormat("", "deleteChildren", deleteChildren));
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
      return response.body;
    } else {
      return null;
    }
  }

  /// Update form name
  ///
  ///
  Future<dynamic> updateFormNameByUri(String uri,  { String name, String acceptLanguage }) async {
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
    String path = "/mobile/forms/{uri}/name".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", Uri.encodeComponent(uri.toString()));

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
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

  /// Delete section
  ///
  /// 
  Future<dynamic> deleteSection(String uri,  { String acceptLanguage }) async {
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
    String path = "/mobile/sections/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", Uri.encodeComponent(uri.toString()));

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
        response.body ;
    } else {
      return null;
    }
  }
  /// Import a CSV file containing parent and child code-lots
  ///
  /// 
  Future<CodeLotCSVValidationDTO> importCSVCodes(MultipartFile file,  { String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(file == null) {
      throw new ApiException(400, "Missing required param: file");
    }
    if(authorization == null) {
      throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/forms/import".replaceAll("{format}","json");

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
        apiClient.deserialize(response.body, 'CodeLotCSVValidationDTO') as CodeLotCSVValidationDTO ;
    } else {
      return null;
    }
  }
  /// Search forms
  ///
  ///
  Future<List<FormGetDTO>> searchForms( { String name, List<String> uris, bool byRoot, List<String> codes, List<String> orderBy, int page, int pageSize, bool codesOnly, bool urisOnly, Object body, String timezone, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
      throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/forms/search".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
    }
    if(uris != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "uris", uris));
    }
    if(byRoot != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "byRoot", byRoot));
    }
    if(codes != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "codes", codes));
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
    if(codesOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "codesOnly", codesOnly));
    }
    if(urisOnly != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "urisOnly", urisOnly));
    }
    if(timezone != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "timezone", timezone));
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
        (apiClient.deserialize(response.body, 'List<FormGetDTO>') as List).map((item) => item as FormGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Search sections
  ///
  /// 
  Future<List<SectionGetDTO>> searchSections( { List<String> uris, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
      throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/sections".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(uris != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "uris", uris));
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
        (apiClient.deserialize(response.body, 'List<SectionGetDTO>') as List).map((item) => item as SectionGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Update form
  ///
  /// 
  Future<dynamic> updateForm( { FormUpdateDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
      throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/forms".replaceAll("{format}","json");

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
        response.body ;
    } else {
      return null;
    }
  }
  /// Update section
  ///
  /// 
  Future<dynamic> updateSection( { SectionUpdateDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
      throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/mobile/sections".replaceAll("{format}","json");

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
        response.body ;
    } else {
      return null;
    }
  }
}
