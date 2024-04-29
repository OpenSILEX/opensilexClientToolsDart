part of swagger.api;

class AccountCreationDTO {
  /* Account URI */
  String uri = null;
  
/* Account email */
  String email = null;
  
/* Account admin flag */
  bool admin = null;
  
/* Account language */
  String language = null;
  
/* Account is enable */
  bool enable = null;
  
/* Favorites URI */
  List<String> favorites = [];
  
/* Account password */
  String password = null;
  
/* URI of the Person linked to this account */
  String linkedPerson = null;
  
  AccountCreationDTO();

  @override
  String toString() {
    return 'AccountCreationDTO[uri=$uri, email=$email, admin=$admin, language=$language, enable=$enable, favorites=$favorites, password=$password, linkedPerson=$linkedPerson, ]';
  }

  AccountCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    email =
        
            json['email']
    ;
    admin =
        
            json['admin']
    ;
    language =
        
            json['language']
    ;
    enable =
        
            json['enable']
    ;
    favorites =
        (json['favorites'] as List).map((item) => item as String).toList()
    ;
    password =
        
            json['password']
    ;
    linkedPerson =
        
            json['linked_person']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'email': email,
      'admin': admin,
      'language': language,
      'enable': enable,
      'favorites': favorites,
      'password': password,
      'linked_person': linkedPerson
     };
  }

  static List<AccountCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountCreationDTO>() : json.map((value) => new AccountCreationDTO.fromJson(value)).toList();
  }

  static Map<String, AccountCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountCreationDTO.fromJson(value));
    }
    return map;
  }

}

