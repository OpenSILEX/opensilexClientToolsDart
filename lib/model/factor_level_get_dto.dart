part of swagger.api;

class FactorLevelGetDTO {
  
  String uri = null;
  

  String name = null;
  

  String description = null;
  
  FactorLevelGetDTO();

  @override
  String toString() {
    return 'FactorLevelGetDTO[uri=$uri, name=$name, description=$description, ]';
  }

  FactorLevelGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
    description =
        
            json['description']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'description': description
     };
  }

  static List<FactorLevelGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FactorLevelGetDTO>() : json.map((value) => new FactorLevelGetDTO.fromJson(value)).toList();
  }

  static Map<String, FactorLevelGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FactorLevelGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FactorLevelGetDTO.fromJson(value));
    }
    return map;
  }

}

