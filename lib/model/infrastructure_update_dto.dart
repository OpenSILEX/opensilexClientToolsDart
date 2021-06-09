part of swagger.api;

class InfrastructureUpdateDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  String parent = null;
  

  List<String> children = [];
  
  InfrastructureUpdateDTO();

  @override
  String toString() {
    return 'InfrastructureUpdateDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, parent=$parent, children=$children, ]';
  }

  InfrastructureUpdateDTO.fromJson(Map<String, dynamic> json) {
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
    parent =
        json['parent']
    ;
    children =
        (json['children'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'parent': parent,
      'children': children
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

