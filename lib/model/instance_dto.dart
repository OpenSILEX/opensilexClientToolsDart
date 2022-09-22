part of swagger.api;

class InstanceDTO {
  
  String name = null;
  

  String type = null;
  
  InstanceDTO();

  @override
  String toString() {
    return 'InstanceDTO[name=$name, type=$type, ]';
  }

  InstanceDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        
            json['name']
    ;
    type =
        
            json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type
     };
  }

  static List<InstanceDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstanceDTO>() : json.map((value) => new InstanceDTO.fromJson(value)).toList();
  }

  static Map<String, InstanceDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstanceDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstanceDTO.fromJson(value));
    }
    return map;
  }

}

