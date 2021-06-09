part of swagger.api;

class InfrastructureFacilityCreationDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  String organisation = null;
  

  List<RDFObjectRelationDTO> relations = [];
  
  InfrastructureFacilityCreationDTO();

  @override
  String toString() {
    return 'InfrastructureFacilityCreationDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, organisation=$organisation, relations=$relations, ]';
  }

  InfrastructureFacilityCreationDTO.fromJson(Map<String, dynamic> json) {
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
    organisation =
        json['organisation']
    ;
    relations =
      RDFObjectRelationDTO.listFromJson(json['relations'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'organisation': organisation,
      'relations': relations
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

