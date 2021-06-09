part of swagger.api;

class SpeciesDTO {
  
  String uri = null;
  

  String name = null;
  
  SpeciesDTO();

  @override
  String toString() {
    return 'SpeciesDTO[uri=$uri, name=$name, ]';
  }

  SpeciesDTO.fromJson(Map<String, dynamic> json) {
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

  static List<SpeciesDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<SpeciesDTO>() : json.map((value) => new SpeciesDTO.fromJson(value)).toList();
  }

  static Map<String, SpeciesDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SpeciesDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SpeciesDTO.fromJson(value));
    }
    return map;
  }
}

