part of swagger.api;

class AreaUpdateDTO {
  /* Area URI */
  String uri = null;
  
/* Area rdf_type */
  String rdfType = null;
  
/* Area name */
  String name = null;
  
/* Description of the area */
  String description = null;
  
/* The geographical coordinates of the area */
  GeoJsonObject geometry = null;
  
  AreaUpdateDTO();

  @override
  String toString() {
    return 'AreaUpdateDTO[uri=$uri, rdfType=$rdfType, name=$name, description=$description, geometry=$geometry, ]';
  }

  AreaUpdateDTO.fromJson(Map<String, dynamic> json) {
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
    description =
        
            json['description']
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
      'description': description,
      'geometry': geometry
     };
  }

  static List<AreaUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<AreaUpdateDTO>() : json.map((value) => new AreaUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, AreaUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AreaUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AreaUpdateDTO.fromJson(value));
    }
    return map;
  }

}

