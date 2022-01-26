part of swagger.api;

class NamedResourceDTOInfrastructureModel {
  
  String uri = null;
  

  String name = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  NamedResourceDTOInfrastructureModel();

  @override
  String toString() {
    return 'NamedResourceDTOInfrastructureModel[uri=$uri, name=$name, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  NamedResourceDTOInfrastructureModel.fromJson(Map<String, dynamic> json) {
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

  static List<NamedResourceDTOInfrastructureModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<NamedResourceDTOInfrastructureModel>() : json.map((value) => new NamedResourceDTOInfrastructureModel.fromJson(value)).toList();
  }

  static Map<String, NamedResourceDTOInfrastructureModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NamedResourceDTOInfrastructureModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NamedResourceDTOInfrastructureModel.fromJson(value));
    }
    return map;
  }

}

