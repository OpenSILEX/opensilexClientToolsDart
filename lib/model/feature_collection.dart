part of swagger.api;

class FeatureCollection {
  
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];
  

  List<double> coordinates = [];
  

  List<Feature> features = [];
  
  FeatureCollection();

  @override
  String toString() {
    return 'FeatureCollection[type=$type, bbox=$bbox, coordinates=$coordinates, features=$features, ]';
  }

  FeatureCollection.fromJson(Map<String, dynamic> json) {
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
    features =
      Feature.listFromJson(json['features'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'bbox': bbox,
      'coordinates': coordinates,
      'features': features
     };
  }

  static List<FeatureCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<FeatureCollection>() : json.map((value) => new FeatureCollection.fromJson(value)).toList();
  }

  static Map<String, FeatureCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FeatureCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FeatureCollection.fromJson(value));
    }
    return map;
  }
}

