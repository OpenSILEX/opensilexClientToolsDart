part of swagger.api;

class Polygon {
  
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];
  

  List<List<LngLatAlt>> coordinates = [];
  
  Polygon();

  @override
  String toString() {
    return 'Polygon[type=$type, bbox=$bbox, coordinates=$coordinates, ]';
  }

  Polygon.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    bbox =
        (json['bbox'] as List).map((item) => item as double).toList()
    ;
    coordinates =
      jsonDecode(json['coordinates'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'bbox': bbox,
      'coordinates': coordinates
     };
  }

  static List<Polygon> listFromJson(List<dynamic> json) {
    return json == null ? new List<Polygon>() : json.map((value) => new Polygon.fromJson(value)).toList();
  }

  static Map<String, Polygon> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Polygon>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Polygon.fromJson(value));
    }
    return map;
  }
}

