part of swagger.api;

class EntityGetDTO {
  
  String uri = null;
  

  String name = null;
  
  EntityGetDTO();

  @override
  String toString() {
    return 'EntityGetDTO[uri=$uri, name=$name, ]';
  }

  EntityGetDTO.fromJson(Map<String, dynamic> json) {
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

  static List<EntityGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<EntityGetDTO>() : json.map((value) => new EntityGetDTO.fromJson(value)).toList();
  }

  static Map<String, EntityGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EntityGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EntityGetDTO.fromJson(value));
    }
    return map;
  }
}

