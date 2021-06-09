part of swagger.api;

class URITypesDTO {
  
  String uri = null;
  

  List<String> rdfTypes = [];
  
  URITypesDTO();

  @override
  String toString() {
    return 'URITypesDTO[uri=$uri, rdfTypes=$rdfTypes, ]';
  }

  URITypesDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    rdfTypes =
        (json['rdf_types'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_types': rdfTypes
     };
  }

  static List<URITypesDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<URITypesDTO>() : json.map((value) => new URITypesDTO.fromJson(value)).toList();
  }

  static Map<String, URITypesDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, URITypesDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new URITypesDTO.fromJson(value));
    }
    return map;
  }
}

