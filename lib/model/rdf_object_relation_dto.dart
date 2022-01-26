part of swagger.api;

class RDFObjectRelationDTO {
  
  String property = null;
  

  String value = null;
  
  RDFObjectRelationDTO();

  @override
  String toString() {
    return 'RDFObjectRelationDTO[property=$property, value=$value, ]';
  }

  RDFObjectRelationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    property =
        
            json['property']
    ;
    value =
        
            json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'property': property,
      'value': value
     };
  }

  static List<RDFObjectRelationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<RDFObjectRelationDTO>() : json.map((value) => new RDFObjectRelationDTO.fromJson(value)).toList();
  }

  static Map<String, RDFObjectRelationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RDFObjectRelationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RDFObjectRelationDTO.fromJson(value));
    }
    return map;
  }

}

