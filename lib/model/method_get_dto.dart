part of swagger.api;

class MethodGetDTO {
  
  String uri = null;
  

  String name = null;
  
  MethodGetDTO();

  @override
  String toString() {
    return 'MethodGetDTO[uri=$uri, name=$name, ]';
  }

  MethodGetDTO.fromJson(Map<String, dynamic> json) {
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

  static List<MethodGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<MethodGetDTO>() : json.map((value) => new MethodGetDTO.fromJson(value)).toList();
  }

  static Map<String, MethodGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MethodGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MethodGetDTO.fromJson(value));
    }
    return map;
  }
}

