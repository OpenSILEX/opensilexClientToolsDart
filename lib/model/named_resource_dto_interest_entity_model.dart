part of swagger.api;

class NamedResourceDTOInterestEntityModel {
  
  String uri = null;
  

  String name = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  NamedResourceDTOInterestEntityModel();

  @override
  String toString() {
    return 'NamedResourceDTOInterestEntityModel[uri=$uri, name=$name, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  NamedResourceDTOInterestEntityModel.fromJson(Map<String, dynamic> json) {
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

  static List<NamedResourceDTOInterestEntityModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<NamedResourceDTOInterestEntityModel>() : json.map((value) => new NamedResourceDTOInterestEntityModel.fromJson(value)).toList();
  }

  static Map<String, NamedResourceDTOInterestEntityModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NamedResourceDTOInterestEntityModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NamedResourceDTOInterestEntityModel.fromJson(value));
    }
    return map;
  }

}

