part of swagger.api;

class NamedResourceDTOProjectModel {
  
  String uri = null;
  

  String name = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  NamedResourceDTOProjectModel();

  @override
  String toString() {
    return 'NamedResourceDTOProjectModel[uri=$uri, name=$name, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  NamedResourceDTOProjectModel.fromJson(Map<String, dynamic> json) {
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

  static List<NamedResourceDTOProjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<NamedResourceDTOProjectModel>() : json.map((value) => new NamedResourceDTOProjectModel.fromJson(value)).toList();
  }

  static Map<String, NamedResourceDTOProjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NamedResourceDTOProjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NamedResourceDTOProjectModel.fromJson(value));
    }
    return map;
  }

}

