part of swagger.api;

class NamedResourceDTOGroupModel {
  
  String uri = null;
  

  String name = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  NamedResourceDTOGroupModel();

  @override
  String toString() {
    return 'NamedResourceDTOGroupModel[uri=$uri, name=$name, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  NamedResourceDTOGroupModel.fromJson(Map<String, dynamic> json) {
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

  static List<NamedResourceDTOGroupModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<NamedResourceDTOGroupModel>() : json.map((value) => new NamedResourceDTOGroupModel.fromJson(value)).toList();
  }

  static Map<String, NamedResourceDTOGroupModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NamedResourceDTOGroupModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NamedResourceDTOGroupModel.fromJson(value));
    }
    return map;
  }

}

