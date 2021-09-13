part of swagger.api;

class MultiPoint {
  
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];
  

  List<LngLatAlt> coordinates = [];
  
  MultiPoint();

  @override
  String toString() {
    return 'MultiPoint[type=$type, bbox=$bbox, coordinates=$coordinates, ]';
  }

  MultiPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    bbox =
        (json['bbox'] as List).map((item) => item as double).toList()
    ;
    coordinates =
      LngLatAlt.listFromJson(json['coordinates'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'bbox': bbox,
      'coordinates': coordinates
     };
  }

  static List<MultiPoint> listFromJson(List<dynamic> json) {
    return json == null ? new List<MultiPoint>() : json.map((value) => new MultiPoint.fromJson(value)).toList();
  }

  static Map<String, MultiPoint> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MultiPoint>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MultiPoint.fromJson(value));
    }
    return map;
  }
}

