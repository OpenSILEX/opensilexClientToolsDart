part of swagger.api;

class Point {
  
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];
  

  LngLatAlt coordinates = null;
  
  Point();

  @override
  String toString() {
    return 'Point[type=$type, bbox=$bbox, coordinates=$coordinates, ]';
  }

  Point.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        
            json['type']
    ;
    bbox =
        (json['bbox'] as List).map((item) => item as double).toList()
    ;
    coordinates =
      
 
      
 
      new LngLatAlt.fromJson(json['geometry']['coordinates'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'bbox': bbox,
      'coordinates': coordinates
     };
  }

  static List<Point> listFromJson(List<dynamic> json) {
    return json == null ? new List<Point>() : json.map((value) => new Point.fromJson(value)).toList();
  }

  static Map<String, Point> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Point>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Point.fromJson(value));
    }
    return map;
  }

}

