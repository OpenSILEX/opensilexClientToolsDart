part of swagger.api;

class InstanceGetDTO {
  
  String name = null;
  

  String type = null;
  

  String uri = null;
  
  InstanceGetDTO();

  @override
  String toString() {
    return 'InstanceGetDTO[name=$name, type=$type, uri=$uri, ]';
  }

  InstanceGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        
            json['name']
    ;
    type =
        
            json['type']
    ;
    uri =
        
            json['uri']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'uri': uri
     };
  }

  static List<InstanceGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstanceGetDTO>() : json.map((value) => new InstanceGetDTO.fromJson(value)).toList();
  }

  static Map<String, InstanceGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstanceGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstanceGetDTO.fromJson(value));
    }
    return map;
  }

}

