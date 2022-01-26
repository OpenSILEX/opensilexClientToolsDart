part of swagger.api;

class VariableDatatypeDTO {
  
  String uri = null;
  

  String name = null;
  
  VariableDatatypeDTO();

  @override
  String toString() {
    return 'VariableDatatypeDTO[uri=$uri, name=$name, ]';
  }

  VariableDatatypeDTO.fromJson(Map<String, dynamic> json) {
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

  static List<VariableDatatypeDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VariableDatatypeDTO>() : json.map((value) => new VariableDatatypeDTO.fromJson(value)).toList();
  }

  static Map<String, VariableDatatypeDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VariableDatatypeDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VariableDatatypeDTO.fromJson(value));
    }
    return map;
  }

}

