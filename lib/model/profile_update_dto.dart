part of swagger.api;

class ProfileUpdateDTO {
  /* User URI */
  String uri = null;
  
/* Profile name */
  String name = null;
  
/* Profile credentials */
  List<String> credentials = [];
  
  ProfileUpdateDTO();

  @override
  String toString() {
    return 'ProfileUpdateDTO[uri=$uri, name=$name, credentials=$credentials, ]';
  }

  ProfileUpdateDTO.fromJson(Map<String, dynamic> json) {
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

  static List<ProfileUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProfileUpdateDTO>() : json.map((value) => new ProfileUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, ProfileUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProfileUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProfileUpdateDTO.fromJson(value));
    }
    return map;
  }
}

