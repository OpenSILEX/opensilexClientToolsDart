part of swagger.api;

class NamedResourceDTOInfrastructureFacilityModel {
  
  String uri = null;
  

  String name = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  NamedResourceDTOInfrastructureFacilityModel();

  @override
  String toString() {
    return 'NamedResourceDTOInfrastructureFacilityModel[uri=$uri, name=$name, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  NamedResourceDTOInfrastructureFacilityModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
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
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName
     };
  }

  static List<NamedResourceDTOInfrastructureFacilityModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<NamedResourceDTOInfrastructureFacilityModel>() : json.map((value) => new NamedResourceDTOInfrastructureFacilityModel.fromJson(value)).toList();
  }

  static Map<String, NamedResourceDTOInfrastructureFacilityModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NamedResourceDTOInfrastructureFacilityModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NamedResourceDTOInfrastructureFacilityModel.fromJson(value));
    }
    return map;
  }
}

