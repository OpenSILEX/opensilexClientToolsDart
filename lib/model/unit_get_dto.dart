part of swagger.api;

class UnitGetDTO {
  
  String uri = null;
  

  String name = null;
  
  UnitGetDTO();

  @override
  String toString() {
    return 'UnitGetDTO[uri=$uri, name=$name, ]';
  }

  UnitGetDTO.fromJson(Map<String, dynamic> json) {
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

  static List<UnitGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnitGetDTO>() : json.map((value) => new UnitGetDTO.fromJson(value)).toList();
  }

  static Map<String, UnitGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnitGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnitGetDTO.fromJson(value));
    }
    return map;
  }

}

