part of swagger.api;

class InfrastructureGetDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  String parent = null;
  

  List<String> children = [];
  

  List<InfrastructureTeamDTO> groups = [];
  

  List<InfrastructureFacilityGetDTO> facilities = [];
  
  InfrastructureGetDTO();

  @override
  String toString() {
    return 'InfrastructureGetDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, parent=$parent, children=$children, groups=$groups, facilities=$facilities, ]';
  }

  InfrastructureGetDTO.fromJson(Map<String, dynamic> json) {
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
    groups =
      InfrastructureTeamDTO.listFromJson(json['groups'])
;
    facilities =
      InfrastructureFacilityGetDTO.listFromJson(json['facilities'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'parent': parent,
      'children': children,
      'groups': groups,
      'facilities': facilities
     };
  }

  static List<InfrastructureGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InfrastructureGetDTO>() : json.map((value) => new InfrastructureGetDTO.fromJson(value)).toList();
  }

  static Map<String, InfrastructureGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InfrastructureGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InfrastructureGetDTO.fromJson(value));
    }
    return map;
  }
}

