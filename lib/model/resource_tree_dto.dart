part of swagger.api;

class ResourceTreeDTO {
  
  String uri = null;
  

  String name = null;
  

  String parent = null;
  

  bool selected = null;
  

  bool disabled = null;
  

  List<ResourceTreeDTO> children = [];
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  ResourceTreeDTO();

  @override
  String toString() {
    return 'ResourceTreeDTO[uri=$uri, name=$name, parent=$parent, selected=$selected, disabled=$disabled, children=$children, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  ResourceTreeDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    parent =
        json['parent']
    ;
    selected =
        json['selected']
    ;
    disabled =
        json['disabled']
    ;
    children =
      ResourceTreeDTO.listFromJson(json['children'])
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
      'parent': parent,
      'selected': selected,
      'disabled': disabled,
      'children': children,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName
     };
  }

  static List<ResourceTreeDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResourceTreeDTO>() : json.map((value) => new ResourceTreeDTO.fromJson(value)).toList();
  }

  static Map<String, ResourceTreeDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResourceTreeDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResourceTreeDTO.fromJson(value));
    }
    return map;
  }
}

