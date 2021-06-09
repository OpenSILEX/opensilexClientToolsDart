part of swagger.api;

class InfrastructureFacilityGetDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  String organisation = null;
  

  List<RDFObjectRelationDTO> relations = [];
  
  InfrastructureFacilityGetDTO();

  @override
  String toString() {
    return 'InfrastructureFacilityGetDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, organisation=$organisation, relations=$relations, ]';
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

