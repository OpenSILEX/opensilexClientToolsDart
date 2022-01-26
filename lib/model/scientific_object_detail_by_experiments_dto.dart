part of swagger.api;

class ScientificObjectDetailByExperimentsDTO {
  
  String uri = null;
  
/* Scientific object type */
  String rdfType = null;
  
/* Scientific object type */
  String rdfTypeName = null;
  

  String name = null;
  
/* Scientific object parent URI */
  String parent = null;
  
/* Scientific object parent name */
  String parentName = null;
  
/* Scientific object experiment URI */
  String experiment = null;
  
/* Scientific object experiment name */
  String experimentName = null;
  
/* Scientific object factor levels */
  List<NamedResourceDTOFactorLevelModel> factorLevel = [];
  

  List<RDFObjectRelationDTO> relations = [];
  

  GeoJsonObject geometry = null;
  
  ScientificObjectDetailByExperimentsDTO();

  @override
  String toString() {
    return 'ScientificObjectDetailByExperimentsDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, parent=$parent, parentName=$parentName, experiment=$experiment, experimentName=$experimentName, factorLevel=$factorLevel, relations=$relations, geometry=$geometry, ]';
  }

  ScientificObjectDetailByExperimentsDTO.fromJson(Map<String, dynamic> json) {
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
    parentName =
        
            json['parent_name']
    ;
    experiment =
        
            json['experiment']
    ;
    experimentName =
        
            json['experiment_name']
    ;
    factorLevel =
      NamedResourceDTOFactorLevelModel.listFromJson((json['factor_level'] as List).map((e) => e as Map<String, dynamic>).toList())
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
      'rdf_type_name': rdfTypeName,
      'name': name,
      'parent': parent,
      'parent_name': parentName,
      'experiment': experiment,
      'experiment_name': experimentName,
      'factor_level': factorLevel,
      'relations': relations,
      'geometry': geometry
     };
  }

  static List<ScientificObjectDetailByExperimentsDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScientificObjectDetailByExperimentsDTO>() : json.map((value) => new ScientificObjectDetailByExperimentsDTO.fromJson(value)).toList();
  }

  static Map<String, ScientificObjectDetailByExperimentsDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScientificObjectDetailByExperimentsDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScientificObjectDetailByExperimentsDTO.fromJson(value));
    }
    return map;
  }

}

