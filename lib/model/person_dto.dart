part of swagger.api;

class PersonDTO {
  /* Person URI */
  String uri = null;
  
/* Person first name */
  String firstName = null;
  
/* Person last name */
  String lastName = null;
  
/* email */
  String email = null;
  
/* affiliation */
  String affiliation = null;
  
/* phone number */
  String phoneNumber = null;
  
/* orcid */
  String orcid = null;
  
/* Uri of the account if this person has one */
  String account = null;
  
  PersonDTO();

  @override
  String toString() {
    return 'PersonDTO[uri=$uri, firstName=$firstName, lastName=$lastName, email=$email, affiliation=$affiliation, phoneNumber=$phoneNumber, orcid=$orcid, account=$account, ]';
  }

  PersonDTO.fromJson(Map<String, dynamic> json) {
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
    affiliation =
        
            json['affiliation']
    ;
    phoneNumber =
        
            json['phone_number']
    ;
    orcid =
        
            json['orcid']
    ;
    account =
        
            json['account']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'affiliation': affiliation,
      'phone_number': phoneNumber,
      'orcid': orcid,
      'account': account
     };
  }

  static List<PersonDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<PersonDTO>() : json.map((value) => new PersonDTO.fromJson(value)).toList();
  }

  static Map<String, PersonDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PersonDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PersonDTO.fromJson(value));
    }
    return map;
  }

}

