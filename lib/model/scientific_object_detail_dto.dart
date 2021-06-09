part of swagger.api;

class ScientificObjectDetailDTO {
  
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
  
/* Scientific object factor levels */
  List<NamedResourceDTOFactorLevelModel> factorLevel = [];
  

  List<RDFObjectRelationDTO> relations = [];
  

  GeoJsonObject geometry = null;
  
  ScientificObjectDetailDTO();

  @override
  String toString() {
    return 'ScientificObjectDetailDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, parent=$parent, parentName=$parentName, factorLevel=$factorLevel, relations=$relations, geometry=$geometry, ]';
  }

  ScientificObjectDetailDTO.fromJson(Map<String, dynamic> json) {
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
    factorLevel =
      NamedResourceDTOFactorLevelModel.listFromJson(json['factor_level'])
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
      'rdf_type_name': rdfTypeName,
      'name': name,
      'parent': parent,
      'parent_name': parentName,
      'factor_level': factorLevel,
      'relations': relations,
      'geometry': geometry
     };
  }

  static List<ScientificObjectDetailDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScientificObjectDetailDTO>() : json.map((value) => new ScientificObjectDetailDTO.fromJson(value)).toList();
  }

  static Map<String, ScientificObjectDetailDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScientificObjectDetailDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScientificObjectDetailDTO.fromJson(value));
    }
    return map;
  }
}

