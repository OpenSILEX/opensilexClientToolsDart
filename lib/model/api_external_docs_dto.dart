part of swagger.api;

class ApiExternalDocsDTO {
  /* Opensilex api docs */
  String description = null;
  
/* https://github.com/OpenSILEX/opensilex/blob/master/opensilex-doc/src/main/resources/index.md */
  String url = null;
  
  ApiExternalDocsDTO();

  @override
  String toString() {
    return 'ApiExternalDocsDTO[description=$description, url=$url, ]';
  }

  ApiExternalDocsDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description =
        
            json['description']
    ;
    url =
        
            json['url']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'url': url
     };
  }

  static List<ApiExternalDocsDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiExternalDocsDTO>() : json.map((value) => new ApiExternalDocsDTO.fromJson(value)).toList();
  }

  static Map<String, ApiExternalDocsDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiExternalDocsDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiExternalDocsDTO.fromJson(value));
    }
    return map;
  }

}

