part of swagger.api;

class ResourceDagDTO {
  
  String uri = null;
  

  String name = null;
  

  List<String> parents = [];
  

  List<String> children = [];
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  ResourceDagDTO();

  @override
  String toString() {
    return 'ResourceDagDTO[uri=$uri, name=$name, parents=$parents, children=$children, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  ResourceDagDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
    parents =
        (json['parents'] as List).map((item) => item as String).toList()
    ;
    children =
        (json['children'] as List).map((item) => item as String).toList()
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
      'parents': parents,
      'children': children,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName
     };
  }

  static List<ResourceDagDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResourceDagDTO>() : json.map((value) => new ResourceDagDTO.fromJson(value)).toList();
  }

  static Map<String, ResourceDagDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResourceDagDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResourceDagDTO.fromJson(value));
    }
    return map;
  }

}

