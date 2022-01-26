part of swagger.api;

class Contact {
  
  String contactDbId = null;
  

  String email = null;
  

  String institutionName = null;
  

  String name = null;
  

  String orcid = null;
  

  String type = null;
  
  Contact();

  @override
  String toString() {
    return 'Contact[contactDbId=$contactDbId, email=$email, institutionName=$institutionName, name=$name, orcid=$orcid, type=$type, ]';
  }

  Contact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    contactDbId =
        
            json['contactDbId']
    ;
    email =
        
            json['email']
    ;
    institutionName =
        
            json['institutionName']
    ;
    name =
        
            json['name']
    ;
    orcid =
        
            json['orcid']
    ;
    type =
        
            json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'contactDbId': contactDbId,
      'email': email,
      'institutionName': institutionName,
      'name': name,
      'orcid': orcid,
      'type': type
     };
  }

  static List<Contact> listFromJson(List<dynamic> json) {
    return json == null ? new List<Contact>() : json.map((value) => new Contact.fromJson(value)).toList();
  }

  static Map<String, Contact> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Contact>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Contact.fromJson(value));
    }
    return map;
  }

}

