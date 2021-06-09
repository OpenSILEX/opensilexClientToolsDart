part of swagger.api;

class InfrastructureCreationDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  String parent = null;
  

  List<String> children = [];
  
  InfrastructureCreationDTO();

  @override
  String toString() {
    return 'InfrastructureCreationDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, parent=$parent, children=$children, ]';
  }

  InfrastructureCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    rdfType =
        json['rdf_type']
    ;
    rdfTypeName =
        json['rdf_type_name']
    ;
    name =
        json['name']
    ;
    parent =
        json['parent']
    ;
    children =
        (json['children'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'parent': parent,
      'children': children
     };
  }

  static List<InfrastructureCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InfrastructureCreationDTO>() : json.map((value) => new InfrastructureCreationDTO.fromJson(value)).toList();
  }

  static Map<String, InfrastructureCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InfrastructureCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InfrastructureCreationDTO.fromJson(value));
    }
    return map;
  }
}

