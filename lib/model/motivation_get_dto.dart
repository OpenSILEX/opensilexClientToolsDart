part of swagger.api;

class MotivationGetDTO {
  /* URI of the motivation */
  String uri = null;
  
/* Name of the annotation motivation */
  String name = null;
  
  MotivationGetDTO();

  @override
  String toString() {
    return 'MotivationGetDTO[uri=$uri, name=$name, ]';
  }

  MotivationGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name
     };
  }

  static List<MotivationGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<MotivationGetDTO>() : json.map((value) => new MotivationGetDTO.fromJson(value)).toList();
  }

  static Map<String, MotivationGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MotivationGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MotivationGetDTO.fromJson(value));
    }
    return map;
  }
}

