part of swagger.api;

class GeoJsonObject {
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];

  List<double> coordinates = [];

  GeoJsonObject();

  @override
  String toString() {
    return 'GeoJsonObject[type=$type, bbox=$bbox, coordinates=$coordinates, ]';
  }

  GeoJsonObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    bbox = (json['bbox'] as List).map((item) => item as double).toList();
    coordinates =
        (json['coordinates'] as List).map((item) => item as double).toList();
  }

  Map<String, dynamic> toJson() {
    return {'type': type, 'bbox': bbox, 'coordinates': coordinates};
  }

  static List<GeoJsonObject> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<GeoJsonObject>()
        : json.map((value) => new GeoJsonObject.fromJson(value)).toList();
  }

  static Map<String, GeoJsonObject> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeoJsonObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new GeoJsonObject.fromJson(value));
    }
    return map;
  }
}
