part of swagger.api;

class AccountGetDTO {
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
  
/* URI of the Person linked to this account */
  String linkedPerson = null;
  
/* first name of the linked person */
  String personFirstName = null;
  
/* last name of the linked person */
  String personLastName = null;
  
  AccountGetDTO();

  @override
  String toString() {
    return 'AccountGetDTO[uri=$uri, email=$email, admin=$admin, language=$language, enable=$enable, favorites=$favorites, linkedPerson=$linkedPerson, personFirstName=$personFirstName, personLastName=$personLastName, ]';
  }

  AccountGetDTO.fromJson(Map<String, dynamic> json) {
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
    linkedPerson =
        
            json['linked_person']
    ;
    personFirstName =
        
            json['person_first_name']
    ;
    personLastName =
        
            json['person_last_name']
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
      'linked_person': linkedPerson,
      'person_first_name': personFirstName,
      'person_last_name': personLastName
     };
  }

  static List<AccountGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountGetDTO>() : json.map((value) => new AccountGetDTO.fromJson(value)).toList();
  }

  static Map<String, AccountGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountGetDTO.fromJson(value));
    }
    return map;
  }

}

