part of swagger.api;

class UserCreationDTO {
  /* User URI */
  String uri = null;
  

  String firstName = null;
  

  String lastName = null;
  

  String email = null;
  
/* User language */
  String language = null;
  
/* User password */
  String password = null;
  
/* User admin flag */
  bool admin = null;
  
  UserCreationDTO();

  @override
  String toString() {
    return 'UserCreationDTO[uri=$uri, firstName=$firstName, lastName=$lastName, email=$email, language=$language, password=$password, admin=$admin, ]';
  }

  UserCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    firstName =
        
            json['first_name']
    ;
    lastName =
        
            json['last_name']
    ;
    email =
        
            json['email']
    ;
    language =
        
            json['language']
    ;
    password =
        
            json['password']
    ;
    admin =
        
            json['admin']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'language': language,
      'password': password,
      'admin': admin
     };
  }

  static List<UserCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserCreationDTO>() : json.map((value) => new UserCreationDTO.fromJson(value)).toList();
  }

  static Map<String, UserCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserCreationDTO.fromJson(value));
    }
    return map;
  }

}

