part of swagger.api;

class NamedResourceDTOFactorLevelModel {
  
  String uri = null;
  

  String name = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
  NamedResourceDTOFactorLevelModel();

  @override
  String toString() {
    return 'NamedResourceDTOFactorLevelModel[uri=$uri, name=$name, rdfType=$rdfType, rdfTypeName=$rdfTypeName, ]';
  }

  NamedResourceDTOFactorLevelModel.fromJson(Map<String, dynamic> json) {
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

  static List<NamedResourceDTOFactorLevelModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<NamedResourceDTOFactorLevelModel>() : json.map((value) => new NamedResourceDTOFactorLevelModel.fromJson(value)).toList();
  }

  static Map<String, NamedResourceDTOFactorLevelModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NamedResourceDTOFactorLevelModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NamedResourceDTOFactorLevelModel.fromJson(value));
    }
    return map;
  }
}

