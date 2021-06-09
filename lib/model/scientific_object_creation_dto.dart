part of swagger.api;

class ScientificObjectCreationDTO {
  
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
  
  ScientificObjectCreationDTO();

  @override
  String toString() {
    return 'ScientificObjectCreationDTO[uri=$uri, rdfType=$rdfType, name=$name, experiment=$experiment, relations=$relations, geometry=$geometry, ]';
  }

  ScientificObjectCreationDTO.fromJson(Map<String, dynamic> json) {
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
      RDFObjectRelationDTO.listFromJson(json['relations'])
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

  static List<ScientificObjectCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScientificObjectCreationDTO>() : json.map((value) => new ScientificObjectCreationDTO.fromJson(value)).toList();
  }

  static Map<String, ScientificObjectCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScientificObjectCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScientificObjectCreationDTO.fromJson(value));
    }
    return map;
  }
}

