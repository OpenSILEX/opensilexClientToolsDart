part of swagger.api;

class InfrastructureFacilityUpdateDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String name = null;
  

  List<String> organizations = [];
  

  List<RDFObjectRelationDTO> relations = [];
  

  String rdfTypeName = null;
  
  InfrastructureFacilityUpdateDTO();

  @override
  String toString() {
    return 'InfrastructureFacilityUpdateDTO[uri=$uri, rdfType=$rdfType, name=$name, organizations=$organizations, relations=$relations, rdfTypeName=$rdfTypeName, ]';
  }

  InfrastructureFacilityUpdateDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    rdfType =
        json['rdf_type']
    ;
    name =
        json['name']
    ;
    organizations =
        (json['organizations'] as List).map((item) => item as String).toList()
    ;
    relations =
      RDFObjectRelationDTO.listFromJson(json['relations'])
;
    rdfTypeName =
        json['rdf_type_name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'name': name,
      'organizations': organizations,
      'relations': relations,
      'rdf_type_name': rdfTypeName
     };
  }

  static List<InfrastructureFacilityUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InfrastructureFacilityUpdateDTO>() : json.map((value) => new InfrastructureFacilityUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, InfrastructureFacilityUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InfrastructureFacilityUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InfrastructureFacilityUpdateDTO.fromJson(value));
    }
    return map;
  }
}

