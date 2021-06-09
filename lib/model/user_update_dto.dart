part of swagger.api;

class UserUpdateDTO {
  /* User URI */
  String uri = null;
  

  String firstName = null;
  

  String lastName = null;
  

  String email = null;
  
/* User language */
  String language = null;
  
/* Optional user password */
  String password = null;
  
/* User admin flag */
  bool admin = null;
  
  UserUpdateDTO();

  @override
  String toString() {
    return 'UserUpdateDTO[uri=$uri, firstName=$firstName, lastName=$lastName, email=$email, language=$language, password=$password, admin=$admin, ]';
  }

  UserUpdateDTO.fromJson(Map<String, dynamic> json) {
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

  static List<UserUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserUpdateDTO>() : json.map((value) => new UserUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, UserUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserUpdateDTO.fromJson(value));
    }
    return map;
  }
}

