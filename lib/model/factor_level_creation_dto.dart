part of swagger.api;

class FactorLevelCreationDTO {
  
  String uri = null;
  

  String name = null;
  

  String description = null;
  
  FactorLevelCreationDTO();

  @override
  String toString() {
    return 'FactorLevelCreationDTO[uri=$uri, name=$name, description=$description, ]';
  }

  FactorLevelCreationDTO.fromJson(Map<String, dynamic> json) {
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

  static List<FactorLevelCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FactorLevelCreationDTO>() : json.map((value) => new FactorLevelCreationDTO.fromJson(value)).toList();
  }

  static Map<String, FactorLevelCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FactorLevelCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FactorLevelCreationDTO.fromJson(value));
    }
    return map;
  }

}

