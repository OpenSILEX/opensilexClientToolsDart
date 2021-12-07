part of swagger.api;

class InterestEntityGetDTO {
  
  String uri = null;
  

  String name = null;
  
  InterestEntityGetDTO();

  @override
  String toString() {
    return 'InterestEntityGetDTO[uri=$uri, name=$name, ]';
  }

  InterestEntityGetDTO.fromJson(Map<String, dynamic> json) {
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

  static List<InterestEntityGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InterestEntityGetDTO>() : json.map((value) => new InterestEntityGetDTO.fromJson(value)).toList();
  }

  static Map<String, InterestEntityGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InterestEntityGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InterestEntityGetDTO.fromJson(value));
    }
    return map;
  }
}

