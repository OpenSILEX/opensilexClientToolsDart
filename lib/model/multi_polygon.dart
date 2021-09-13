part of swagger.api;

class MultiPolygon {
  
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];
  

  List<List<List<LngLatAlt>>> coordinates = [];
  
  MultiPolygon();

  @override
  String toString() {
    return 'MultiPolygon[type=$type, bbox=$bbox, coordinates=$coordinates, ]';
  }

  MultiPolygon.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    bbox =
        (json['bbox'] as List).map((item) => item as double).toList()
    ;
    coordinates =
      jsonDecode(json['geometry']['coordinates'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'bbox': bbox,
      'coordinates': coordinates
     };
  }

  static List<MultiPolygon> listFromJson(List<dynamic> json) {
    return json == null ? new List<MultiPolygon>() : json.map((value) => new MultiPolygon.fromJson(value)).toList();
  }

  static Map<String, MultiPolygon> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MultiPolygon>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MultiPolygon.fromJson(value));
    }
    return map;
  }
}

