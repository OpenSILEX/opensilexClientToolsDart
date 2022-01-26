part of swagger.api;

class CredentialDTO {
  /* Credential identifier */
  String id = null;
  
/* Credential name */
  String name = null;
  
  CredentialDTO();

  @override
  String toString() {
    return 'CredentialDTO[id=$id, name=$name, ]';
  }

  CredentialDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        
            json['id']
    ;
    name =
        
            json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name
     };
  }

  static List<CredentialDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<CredentialDTO>() : json.map((value) => new CredentialDTO.fromJson(value)).toList();
  }

  static Map<String, CredentialDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CredentialDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CredentialDTO.fromJson(value));
    }
    return map;
  }

}

