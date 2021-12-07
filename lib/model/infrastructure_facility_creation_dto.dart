part of swagger.api;

class InfrastructureFacilityCreationDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String name = null;
  

  List<String> organizations = [];
  

  List<RDFObjectRelationDTO> relations = [];
  

  String rdfTypeName = null;
  
  InfrastructureFacilityCreationDTO();

  @override
  String toString() {
    return 'InfrastructureFacilityCreationDTO[uri=$uri, rdfType=$rdfType, name=$name, organizations=$organizations, relations=$relations, rdfTypeName=$rdfTypeName, ]';
  }

  InfrastructureFacilityCreationDTO.fromJson(Map<String, dynamic> json) {
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

  static List<InfrastructureFacilityCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InfrastructureFacilityCreationDTO>() : json.map((value) => new InfrastructureFacilityCreationDTO.fromJson(value)).toList();
  }

  static Map<String, InfrastructureFacilityCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InfrastructureFacilityCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InfrastructureFacilityCreationDTO.fromJson(value));
    }
    return map;
  }
}

