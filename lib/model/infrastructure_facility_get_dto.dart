part of swagger.api;

class InfrastructureFacilityGetDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  List<NamedResourceDTOInfrastructureModel> organizations = [];
  

  List<RDFObjectRelationDTO> relations = [];
  
  InfrastructureFacilityGetDTO();

  @override
  String toString() {
    return 'InfrastructureFacilityGetDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, organizations=$organizations, relations=$relations, ]';
  }

  InfrastructureFacilityGetDTO.fromJson(Map<String, dynamic> json) {
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
    organizations =
      NamedResourceDTOInfrastructureModel.listFromJson((json['organizations'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    relations =
      RDFObjectRelationDTO.listFromJson((json['relations'] as List).map((e) => e as Map<String, dynamic>).toList())
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'organizations': organizations,
      'relations': relations
     };
  }

  static List<InfrastructureFacilityGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InfrastructureFacilityGetDTO>() : json.map((value) => new InfrastructureFacilityGetDTO.fromJson(value)).toList();
  }

  static Map<String, InfrastructureFacilityGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InfrastructureFacilityGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InfrastructureFacilityGetDTO.fromJson(value));
    }
    return map;
  }

}

