part of swagger.api;

class VueObjectTypeDTO {
  
  String uri = null;
  

  String name = null;
  

  String shortUri = null;
  

  String inputComponent = null;
  

  Map<String, String> inputComponentsByProperty = {};
  

  String viewComponent = null;
  

  RDFTypeDTO rdfType = null;
  
  VueObjectTypeDTO();

  @override
  String toString() {
    return 'VueObjectTypeDTO[uri=$uri, name=$name, shortUri=$shortUri, inputComponent=$inputComponent, inputComponentsByProperty=$inputComponentsByProperty, viewComponent=$viewComponent, rdfType=$rdfType, ]';
  }

  VueObjectTypeDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
    shortUri =
        
            json['short_uri']
    ;
    inputComponent =
        
            json['input_component']
    ;
    inputComponentsByProperty =
        (json['input_components_by_property'] as Map).map((key, value) => MapEntry(key as dynamic, value as dynamic))
    ;
    viewComponent =
        
            json['view_component']
    ;
    rdfType =
      
 
      
 
      new RDFTypeDTO.fromJson(json['rdf_type'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'short_uri': shortUri,
      'input_component': inputComponent,
      'input_components_by_property': inputComponentsByProperty,
      'view_component': viewComponent,
      'rdf_type': rdfType
     };
  }

  static List<VueObjectTypeDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VueObjectTypeDTO>() : json.map((value) => new VueObjectTypeDTO.fromJson(value)).toList();
  }

  static Map<String, VueObjectTypeDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VueObjectTypeDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VueObjectTypeDTO.fromJson(value));
    }
    return map;
  }

}

