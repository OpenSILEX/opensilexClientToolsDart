part of swagger.api;

class ScientificObjectNodeDTO {
  
  String uri = null;
  

  String name = null;
  

  GeoJsonObject geometry = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
/* Scientific object creation date */
  DateTime creationDate = null;
  
/* Scientific object creation date */
  DateTime destructionDate = null;
  
  ScientificObjectNodeDTO();

  @override
  String toString() {
    return 'ScientificObjectNodeDTO[uri=$uri, name=$name, geometry=$geometry, rdfType=$rdfType, rdfTypeName=$rdfTypeName, creationDate=$creationDate, destructionDate=$destructionDate, ]';
  }

  ScientificObjectNodeDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    geometry =
      
 
      
 
      new GeoJsonObject.fromJson(json['geometry'])
;
    rdfType =
        json['rdf_type']
    ;
    rdfTypeName =
        json['rdf_type_name']
    ;
    creationDate =
      
 
      
 
       json['creation_date'] == null ? null : DateTime.parse(json['creation_date'])
;
    destructionDate =
      
 
      
 
       json['destruction_date'] == null ? null : DateTime.parse(json['destruction_date'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'geometry': geometry,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'creation_date': creationDate,
      'destruction_date': destructionDate
     };
  }

  static List<ScientificObjectNodeDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScientificObjectNodeDTO>() : json.map((value) => new ScientificObjectNodeDTO.fromJson(value)).toList();
  }

  static Map<String, ScientificObjectNodeDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScientificObjectNodeDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScientificObjectNodeDTO.fromJson(value));
    }
    return map;
  }
}

