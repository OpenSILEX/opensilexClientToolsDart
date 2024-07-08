part of swagger.api;

class InstanceUpdateDTO {
  /* uri */
  String uri = null;
  

  String name = null;
  

  String type = null;
  

  bool active = null;
  
  InstanceUpdateDTO();

  @override
  String toString() {
    return 'InstanceUpdateDTO[uri=$uri, name=$name, type=$type, active=$active, ]';
  }

  InstanceUpdateDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
    type =
        
            json['type']
    ;
    active =
        
            json['active']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'type': type,
      'active': active
     };
  }

  static List<InstanceUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstanceUpdateDTO>() : json.map((value) => new InstanceUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, InstanceUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstanceUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstanceUpdateDTO.fromJson(value));
    }
    return map;
  }

}

