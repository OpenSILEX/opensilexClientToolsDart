part of swagger.api;

class RDFTypeDTO {
  
  String uri = null;
  

  String name = null;
  

  String comment = null;
  

  String parent = null;
  
  RDFTypeDTO();

  @override
  String toString() {
    return 'RDFTypeDTO[uri=$uri, name=$name, comment=$comment, parent=$parent, ]';
  }

  RDFTypeDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    comment =
        json['comment']
    ;
    parent =
        json['parent']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'comment': comment,
      'parent': parent
     };
  }

  static List<RDFTypeDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<RDFTypeDTO>() : json.map((value) => new RDFTypeDTO.fromJson(value)).toList();
  }

  static Map<String, RDFTypeDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RDFTypeDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RDFTypeDTO.fromJson(value));
    }
    return map;
  }
}

