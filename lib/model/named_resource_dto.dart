part of swagger.api;

class NamedResourceDTO {
  
  String uri = null;
  

  String name = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  NamedResourceDTO();

  @override
  String toString() {
    return 'NamedResourceDTO[uri=$uri, name=$name, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  NamedResourceDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
    rdfType =
        
            json['rdf_type']
    ;
    rdfTypeName =
        
            json['rdf_type_name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName
     };
  }

  static List<NamedResourceDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<NamedResourceDTO>() : json.map((value) => new NamedResourceDTO.fromJson(value)).toList();
  }

  static Map<String, NamedResourceDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NamedResourceDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NamedResourceDTO.fromJson(value));
    }
    return map;
  }

}

