part of swagger.api;

class VueRDFTypeParameterDTO {
  
  String uri = null;
  

  String icon = null;
  

  bool isAbstract = null;
  
  VueRDFTypeParameterDTO();

  @override
  String toString() {
    return 'VueRDFTypeParameterDTO[uri=$uri, icon=$icon, isAbstract=$isAbstract, ]';
  }

  VueRDFTypeParameterDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    icon =
        json['icon']
    ;
    isAbstract =
        json['is_abstract']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'icon': icon,
      'is_abstract': isAbstract
     };
  }

  static List<VueRDFTypeParameterDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VueRDFTypeParameterDTO>() : json.map((value) => new VueRDFTypeParameterDTO.fromJson(value)).toList();
  }

  static Map<String, VueRDFTypeParameterDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VueRDFTypeParameterDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VueRDFTypeParameterDTO.fromJson(value));
    }
    return map;
  }
}

