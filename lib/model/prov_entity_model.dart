part of swagger.api;

class ProvEntityModel {
  
  String uri = null;
  

  String rdfType = null;
  
  ProvEntityModel();

  @override
  String toString() {
    return 'ProvEntityModel[uri=$uri, rdfType=$rdfType, ]';
  }

  ProvEntityModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    rdfType =
        json['rdf_type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType
     };
  }

  static List<ProvEntityModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProvEntityModel>() : json.map((value) => new ProvEntityModel.fromJson(value)).toList();
  }

  static Map<String, ProvEntityModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProvEntityModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProvEntityModel.fromJson(value));
    }
    return map;
  }
}

