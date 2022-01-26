part of swagger.api;

class LineString {
  
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];
  

  List<LngLatAlt> coordinates = [];
  
  LineString();

  @override
  String toString() {
    return 'LineString[type=$type, bbox=$bbox, coordinates=$coordinates, ]';
  }

  LineString.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        
            json['type']
    ;
    bbox =
        (json['bbox'] as List).map((item) => item as double).toList()
    ;
    coordinates =
      LngLatAlt.listFromJson((json['geometry']['coordinates'] as List).map((e) => e as Map<String, dynamic>).toList())
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'bbox': bbox,
      'coordinates': coordinates
     };
  }

  static List<LineString> listFromJson(List<dynamic> json) {
    return json == null ? new List<LineString>() : json.map((value) => new LineString.fromJson(value)).toList();
  }

  static Map<String, LineString> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LineString>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LineString.fromJson(value));
    }
    return map;
  }

}

