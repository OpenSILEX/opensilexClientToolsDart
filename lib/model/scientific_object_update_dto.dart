part of swagger.api;

class ScientificObjectUpdateDTO {
  /* Scientific object URI */
  String uri = null;
  
/* Scientific object type */
  String rdfType = null;
  
/* Scientific object name */
  String name = null;
  
/* Scientific object experiment URI */
  String experiment = null;
  

  List<RDFObjectRelationDTO> relations = [];
  
/* The geographical coordinates of the Geospatial */
  GeoJsonObject geometry = null;
  
  ScientificObjectUpdateDTO();

  @override
  String toString() {
    return 'ScientificObjectUpdateDTO[uri=$uri, rdfType=$rdfType, name=$name, experiment=$experiment, relations=$relations, geometry=$geometry, ]';
  }

  ScientificObjectUpdateDTO.fromJson(Map<String, dynamic> json) {
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
    experiment =
        
            json['experiment']
    ;
    relations =
      RDFObjectRelationDTO.listFromJson((json['relations'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    geometry =
      
 
      
 
      new GeoJsonObject.fromJson(json['geometry'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'name': name,
      'experiment': experiment,
      'relations': relations,
      'geometry': geometry
     };
  }

  static List<ScientificObjectUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScientificObjectUpdateDTO>() : json.map((value) => new ScientificObjectUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, ScientificObjectUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScientificObjectUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScientificObjectUpdateDTO.fromJson(value));
    }
    return map;
  }

}

