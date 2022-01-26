part of swagger.api;

class InfrastructureUpdateDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String name = null;
  

  List<String> parents = [];
  

  List<String> groups = [];
  

  List<String> facilities = [];
  

  String rdfTypeName = null;
  
  InfrastructureUpdateDTO();

  @override
  String toString() {
    return 'InfrastructureUpdateDTO[uri=$uri, rdfType=$rdfType, name=$name, parents=$parents, groups=$groups, facilities=$facilities, rdfTypeName=$rdfTypeName, ]';
  }

  InfrastructureUpdateDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    rdfType =
        
            json['rdf_type']
    ;
    name =
        
            json['name']
    ;
    parents =
        (json['parents'] as List).map((item) => item as String).toList()
    ;
    groups =
        (json['groups'] as List).map((item) => item as String).toList()
    ;
    facilities =
        (json['facilities'] as List).map((item) => item as String).toList()
    ;
    rdfTypeName =
        
            json['rdf_type_name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'name': name,
      'parents': parents,
      'groups': groups,
      'facilities': facilities,
      'rdf_type_name': rdfTypeName
     };
  }

  static List<InfrastructureUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InfrastructureUpdateDTO>() : json.map((value) => new InfrastructureUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, InfrastructureUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InfrastructureUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InfrastructureUpdateDTO.fromJson(value));
    }
    return map;
  }

}

