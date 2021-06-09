part of swagger.api;



class AnnotationsApi {
  final ApiClient apiClient;

  AnnotationsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Count annotations
  ///
  /// 
  Future<int> countAnnotations( { String target, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/annotations/count".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(target != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "target", target));
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
  /// Create an annotation
  ///
  /// 
  Future<ObjectUriResponse> createAnnotation( { AnnotationCreationDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/annotations".replaceAll("{format}","json");

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
  /// Delete an annotation
  ///
  /// 
  Future<ObjectUriResponse> deleteAnnotation(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/annotations/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
  /// Get an annotation
  ///
  /// 
  Future<AnnotationGetDTO> getAnnotation(String uri,  { String acceptLanguage }) async {
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
    String path = "/core/annotations/{uri}".replaceAll("{format}","json").replaceAll("{" + "uri" + "}", uri.toString());

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
          apiClient.deserialize(response.body, 'AnnotationGetDTO') as AnnotationGetDTO ;
    } else {
      return null;
    }
  }
  /// Search annotations
  ///
  /// 
  Future<List<AnnotationGetDTO>> searchAnnotations( { String description, String target, String motivation, String author, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/annotations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(description != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "description", description));
    }
    if(target != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "target", target));
    }
    if(motivation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "motivation", motivation));
    }
    if(author != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "author", author));
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
        (apiClient.deserialize(response.body, 'List<AnnotationGetDTO>') as List).map((item) => item as AnnotationGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Search motivations
  ///
  /// 
  Future<List<MotivationGetDTO>> searchMotivations( { String name, List<String> orderBy, int page, int pageSize, String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/annotations/motivations".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(name != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "name", name));
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
        (apiClient.deserialize(response.body, 'List<MotivationGetDTO>') as List).map((item) => item as MotivationGetDTO).toList();
    } else {
      return null;
    }
  }
  /// Update an annotation
  ///
  /// 
  Future<ObjectUriResponse> updateAnnotation( { AnnotationUpdateDTO body, String acceptLanguage }) async {
    Object postBody = body;

    // verify required params are set
    String authorization = apiClient.token;
    if(authorization == null) {
     throw new ApiException(400, "First connect with connectToOpenSILEX function");
    }

    // create path and map variables
    String path = "/core/annotations".replaceAll("{format}","json");

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
