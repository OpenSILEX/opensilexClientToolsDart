part of swagger.api;

class ApiContactInfoDTO {
  /* Opensilex Team */
  String name = null;
  
/* opensilex@gmail.com */
  String email = null;
  

  String homepage = null;
  
  ApiContactInfoDTO();

  @override
  String toString() {
    return 'ApiContactInfoDTO[name=$name, email=$email, homepage=$homepage, ]';
  }

  ApiContactInfoDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        
            json['name']
    ;
    email =
        
            json['email']
    ;
    homepage =
        
            json['homepage']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'homepage': homepage
     };
  }

  static List<ApiContactInfoDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiContactInfoDTO>() : json.map((value) => new ApiContactInfoDTO.fromJson(value)).toList();
  }

  static Map<String, ApiContactInfoDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiContactInfoDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiContactInfoDTO.fromJson(value));
    }
    return map;
  }

}

