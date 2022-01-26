part of swagger.api;

class NamedResourceDTOExperimentModel {
  
  String uri = null;
  

  String name = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  NamedResourceDTOExperimentModel();

  @override
  String toString() {
    return 'NamedResourceDTOExperimentModel[uri=$uri, name=$name, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  NamedResourceDTOExperimentModel.fromJson(Map<String, dynamic> json) {
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

  static List<NamedResourceDTOExperimentModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<NamedResourceDTOExperimentModel>() : json.map((value) => new NamedResourceDTOExperimentModel.fromJson(value)).toList();
  }

  static Map<String, NamedResourceDTOExperimentModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NamedResourceDTOExperimentModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NamedResourceDTOExperimentModel.fromJson(value));
    }
    return map;
  }

}

