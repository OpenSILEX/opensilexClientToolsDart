part of swagger.api;

class ProfileCreationDTO {
  /* User URI */
  String uri = null;
  
/* Profile name */
  String name = null;
  
/* Profile credentials */
  List<String> credentials = [];
  
  ProfileCreationDTO();

  @override
  String toString() {
    return 'ProfileCreationDTO[uri=$uri, name=$name, credentials=$credentials, ]';
  }

  ProfileCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    credentials =
        (json['credentials'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'credentials': credentials
     };
  }

  static List<ProfileCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProfileCreationDTO>() : json.map((value) => new ProfileCreationDTO.fromJson(value)).toList();
  }

  static Map<String, ProfileCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProfileCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProfileCreationDTO.fromJson(value));
    }
    return map;
  }
}

