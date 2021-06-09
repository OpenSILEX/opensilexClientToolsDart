part of swagger.api;

class MultiLineString {
  
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];
  

  List<List<LngLatAlt>> coordinates = [];
  
  MultiLineString();

  @override
  String toString() {
    return 'MultiLineString[type=$type, bbox=$bbox, coordinates=$coordinates, ]';
  }

  MultiLineString.fromJson(Map<String, dynamic> json) {
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

  static List<MultiLineString> listFromJson(List<dynamic> json) {
    return json == null ? new List<MultiLineString>() : json.map((value) => new MultiLineString.fromJson(value)).toList();
  }

  static Map<String, MultiLineString> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MultiLineString>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MultiLineString.fromJson(value));
    }
    return map;
  }
}

