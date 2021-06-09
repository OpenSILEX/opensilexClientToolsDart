part of swagger.api;



class VueJsApi {
  final ApiClient apiClient;

  VueJsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Return the current configuration
  ///
  /// 
  Future<FrontConfigDTO> getConfig({ String acceptLanguage }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;

    // create path and map variables
    String path = "/vuejs/config".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
          apiClient.deserialize(response.body, 'FrontConfigDTO') as FrontConfigDTO ;
    } else {
      return null;
    }
  }
  /// Return the front Vue JS extension file to include
  ///
  /// 
  Future<MultipartFile> getExtension(String module) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(module == null) {
     throw new ApiException(400, "Missing required param: module");
    }

    // create path and map variables
    String path = "/vuejs/extension/js/{module}.js".replaceAll("{format}","json").replaceAll("{" + "module" + "}", module.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
          apiClient.deserialize(response.body, 'MultipartFile') as MultipartFile ;
    } else {
      return null;
    }
  }
  /// Return the front Vue JS extension css file to include
  ///
  /// 
  Future<MultipartFile> getExtensionStyle(String module) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(module == null) {
     throw new ApiException(400, "Missing required param: module");
    }

    // create path and map variables
    String path = "/vuejs/extension/css/{module}.css".replaceAll("{format}","json").replaceAll("{" + "module" + "}", module.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
          apiClient.deserialize(response.body, 'MultipartFile') as MultipartFile ;
    } else {
      return null;
    }
  }
  /// Return the front Vue JS theme configuration
  ///
  /// 
  Future<ThemeConfigDTO> getThemeConfig(String moduleId, String themeId) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(moduleId == null) {
     throw new ApiException(400, "Missing required param: moduleId");
    }
    if(themeId == null) {
     throw new ApiException(400, "Missing required param: themeId");
    }

    // create path and map variables
    String path = "/vuejs/theme/{moduleId}/{themeId}/config".replaceAll("{format}","json").replaceAll("{" + "moduleId" + "}", moduleId.toString()).replaceAll("{" + "themeId" + "}", themeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
          apiClient.deserialize(response.body, 'ThemeConfigDTO') as ThemeConfigDTO ;
    } else {
      return null;
    }
  }
  /// Return the theme css file
  ///
  /// 
  Future<MultipartFile> getThemeCss(String moduleId, String themeId) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(moduleId == null) {
     throw new ApiException(400, "Missing required param: moduleId");
    }
    if(themeId == null) {
     throw new ApiException(400, "Missing required param: themeId");
    }

    // create path and map variables
    String path = "/vuejs/theme/{moduleId}/{themeId}/style.css".replaceAll("{format}","json").replaceAll("{" + "moduleId" + "}", moduleId.toString()).replaceAll("{" + "themeId" + "}", themeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
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
          apiClient.deserialize(response.body, 'MultipartFile') as MultipartFile ;
    } else {
      return null;
    }
  }
  /// Return the theme requested resource
  ///
  /// 
  Future<MultipartFile> getThemeResource(String moduleId, String themeId, { String filePath }) async {
    Object postBody = null;

    // verify required params are set
    String authorization = apiClient.token;
    if(moduleId == null) {
     throw new ApiException(400, "Missing required param: moduleId");
    }
    if(themeId == null) {
     throw new ApiException(400, "Missing required param: themeId");
    }

    // create path and map variables
    String path = "/vuejs/theme/{moduleId}/{themeId}/resource".replaceAll("{format}","json").replaceAll("{" + "moduleId" + "}", moduleId.toString()).replaceAll("{" + "themeId" + "}", themeId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filePath != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "filePath", filePath));
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
          apiClient.deserialize(response.body, 'MultipartFile') as MultipartFile ;
    } else {
      return null;
    }
  }
}
