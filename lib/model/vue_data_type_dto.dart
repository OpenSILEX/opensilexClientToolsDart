part of swagger.api;

class VueDataTypeDTO {
  
  String uri = null;
  

  String shortUri = null;
  

  String inputComponent = null;
  

  String viewComponent = null;
  

  String labelKey = null;
  
  VueDataTypeDTO();

  @override
  String toString() {
    return 'VueDataTypeDTO[uri=$uri, shortUri=$shortUri, inputComponent=$inputComponent, viewComponent=$viewComponent, labelKey=$labelKey, ]';
  }

  VueDataTypeDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    shortUri =
        
            json['short_uri']
    ;
    inputComponent =
        
            json['input_component']
    ;
    viewComponent =
        
            json['view_component']
    ;
    labelKey =
        
            json['label_key']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'short_uri': shortUri,
      'input_component': inputComponent,
      'view_component': viewComponent,
      'label_key': labelKey
     };
  }

  static List<VueDataTypeDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VueDataTypeDTO>() : json.map((value) => new VueDataTypeDTO.fromJson(value)).toList();
  }

  static Map<String, VueDataTypeDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VueDataTypeDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VueDataTypeDTO.fromJson(value));
    }
    return map;
  }

}

