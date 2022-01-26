part of swagger.api;

class UserGetDTO {
  /* User URI */
  String uri = null;
  
/* User first name */
  String firstName = null;
  
/* User last name */
  String lastName = null;
  
/* User email */
  String email = null;
  
/* User language */
  String language = null;
  
/* User admin flag */
  bool admin = null;
  
  UserGetDTO();

  @override
  String toString() {
    return 'UserGetDTO[uri=$uri, firstName=$firstName, lastName=$lastName, email=$email, language=$language, admin=$admin, ]';
  }

  UserGetDTO.fromJson(Map<String, dynamic> json) {
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
      'admin': admin
     };
  }

  static List<UserGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserGetDTO>() : json.map((value) => new UserGetDTO.fromJson(value)).toList();
  }

  static Map<String, UserGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserGetDTO.fromJson(value));
    }
    return map;
  }

}

