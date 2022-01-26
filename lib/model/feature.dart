part of swagger.api;

class Feature {
  
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];
  

  List<double> coordinates = [];
  

  Map<String, Object> properties = {};
  

  GeoJsonObject geometry = null;
  

  String id = null;
  
  Feature();

  @override
  String toString() {
    return 'Feature[type=$type, bbox=$bbox, coordinates=$coordinates, properties=$properties, geometry=$geometry, id=$id, ]';
  }

  Feature.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        
            json['type']
    ;
    bbox =
        (json['bbox'] as List).map((item) => item as double).toList()
    ;
    coordinates =
        (json['geometry']['coordinates'] as List).map((item) => item as double).toList()
    ;
    properties =
      
 
       ((json['properties'] as Map).map((key, value) => MapEntry(key as dynamic, (value as Map<String, dynamic>))))
 
      
;
    geometry =
      
 
      
 
      new GeoJsonObject.fromJson(json['geometry'])
;
    id =
        
            json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'bbox': bbox,
      'coordinates': coordinates,
      'properties': properties,
      'geometry': geometry,
      'id': id
     };
  }

  static List<Feature> listFromJson(List<dynamic> json) {
    return json == null ? new List<Feature>() : json.map((value) => new Feature.fromJson(value)).toList();
  }

  static Map<String, Feature> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Feature>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Feature.fromJson(value));
    }
    return map;
  }

}

