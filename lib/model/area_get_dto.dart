part of swagger.api;

class AreaGetDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String name = null;
  

  String description = null;
  

  String author = null;
  

  GeoJsonObject geometry = null;
  
  AreaGetDTO();

  @override
  String toString() {
    return 'AreaGetDTO[uri=$uri, rdfType=$rdfType, name=$name, description=$description, author=$author, geometry=$geometry, ]';
  }

  AreaGetDTO.fromJson(Map<String, dynamic> json) {
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
    author =
        json['author']
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
      'author': author,
      'geometry': geometry
     };
  }

  static List<AreaGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<AreaGetDTO>() : json.map((value) => new AreaGetDTO.fromJson(value)).toList();
  }

  static Map<String, AreaGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AreaGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AreaGetDTO.fromJson(value));
    }
    return map;
  }
}

