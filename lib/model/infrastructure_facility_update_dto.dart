part of swagger.api;

class InfrastructureFacilityUpdateDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  String organisation = null;
  

  List<RDFObjectRelationDTO> relations = [];
  
  InfrastructureFacilityUpdateDTO();

  @override
  String toString() {
    return 'InfrastructureFacilityUpdateDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, organisation=$organisation, relations=$relations, ]';
  }

  InfrastructureFacilityUpdateDTO.fromJson(Map<String, dynamic> json) {
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

