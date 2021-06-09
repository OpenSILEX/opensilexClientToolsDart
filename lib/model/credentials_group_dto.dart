part of swagger.api;

class CredentialsGroupDTO {
  /* Credential group identifier */
  String groupId = null;
  
/* Credential group key label */
  String groupKeyName = null;
  
/* Credentials Map */
  List<CredentialDTO> credentials = [];
  
  CredentialsGroupDTO();

  @override
  String toString() {
    return 'CredentialsGroupDTO[groupId=$groupId, groupKeyName=$groupKeyName, credentials=$credentials, ]';
  }

  CredentialsGroupDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    groupId =
        json['group_id']
    ;
    groupKeyName =
        json['group_key_name']
    ;
    credentials =
      CredentialDTO.listFromJson(json['credentials'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'group_id': groupId,
      'group_key_name': groupKeyName,
      'credentials': credentials
     };
  }

  static List<CredentialsGroupDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<CredentialsGroupDTO>() : json.map((value) => new CredentialsGroupDTO.fromJson(value)).toList();
  }

  static Map<String, CredentialsGroupDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CredentialsGroupDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CredentialsGroupDTO.fromJson(value));
    }
    return map;
  }
}

