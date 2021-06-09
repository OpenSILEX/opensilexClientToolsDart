part of swagger.api;

class ProfileGetDTO {
  /* User URI */
  String uri = null;
  
/* Profile name */
  String name = null;
  
/* Profile credentials */
  List<String> credentials = [];
  
  ProfileGetDTO();

  @override
  String toString() {
    return 'ProfileGetDTO[uri=$uri, name=$name, credentials=$credentials, ]';
  }

  ProfileGetDTO.fromJson(Map<String, dynamic> json) {
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

  static List<ProfileGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProfileGetDTO>() : json.map((value) => new ProfileGetDTO.fromJson(value)).toList();
  }

  static Map<String, ProfileGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProfileGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProfileGetDTO.fromJson(value));
    }
    return map;
  }
}

