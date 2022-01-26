part of swagger.api;

class FactorLevelGetDetailDTO {
  
  String uri = null;
  

  String name = null;
  

  String description = null;
  

  String factor = null;
  

  String factorName = null;
  
  FactorLevelGetDetailDTO();

  @override
  String toString() {
    return 'FactorLevelGetDetailDTO[uri=$uri, name=$name, description=$description, factor=$factor, factorName=$factorName, ]';
  }

  FactorLevelGetDetailDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
    description =
        
            json['description']
    ;
    factor =
        
            json['factor']
    ;
    factorName =
        
            json['factor_name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'description': description,
      'factor': factor,
      'factor_name': factorName
     };
  }

  static List<FactorLevelGetDetailDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FactorLevelGetDetailDTO>() : json.map((value) => new FactorLevelGetDetailDTO.fromJson(value)).toList();
  }

  static Map<String, FactorLevelGetDetailDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FactorLevelGetDetailDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FactorLevelGetDetailDTO.fromJson(value));
    }
    return map;
  }

}

