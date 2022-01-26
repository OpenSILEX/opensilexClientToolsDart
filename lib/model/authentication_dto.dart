part of swagger.api;

class AuthenticationDTO {
  /* User identifier, email or URI */
  String identifier = null;
  
/* User password */
  String password = null;
  
  AuthenticationDTO();

  @override
  String toString() {
    return 'AuthenticationDTO[identifier=$identifier, password=$password, ]';
  }

  AuthenticationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    identifier =
        
            json['identifier']
    ;
    password =
        
            json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'identifier': identifier,
      'password': password
     };
  }

  static List<AuthenticationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuthenticationDTO>() : json.map((value) => new AuthenticationDTO.fromJson(value)).toList();
  }

  static Map<String, AuthenticationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuthenticationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AuthenticationDTO.fromJson(value));
    }
    return map;
  }

}

