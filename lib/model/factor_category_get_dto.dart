part of swagger.api;

class FactorCategoryGetDTO {
  /* URI of the factor category */
  String uri = null;
  
/* Name of the factor category */
  String name = null;
  
  FactorCategoryGetDTO();

  @override
  String toString() {
    return 'FactorCategoryGetDTO[uri=$uri, name=$name, ]';
  }

  FactorCategoryGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name
     };
  }

  static List<FactorCategoryGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FactorCategoryGetDTO>() : json.map((value) => new FactorCategoryGetDTO.fromJson(value)).toList();
  }

  static Map<String, FactorCategoryGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FactorCategoryGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FactorCategoryGetDTO.fromJson(value));
    }
    return map;
  }

}

