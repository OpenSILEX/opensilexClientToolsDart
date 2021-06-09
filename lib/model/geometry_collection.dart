part of swagger.api;

class GeometryCollection {
  
  String type = null;
  //enum typeEnum {  Feature,  Polygon,  MultiPolygon,  FeatureCollection,  Point,  MultiPoint,  MultiLineString,  LineString,  GeometryCollection,  };

  List<double> bbox = [];
  

  List<double> coordinates = [];
  

  List<GeoJsonObject> geometries = [];
  
  GeometryCollection();

  @override
  String toString() {
    return 'GeometryCollection[type=$type, bbox=$bbox, coordinates=$coordinates, geometries=$geometries, ]';
  }

  GeometryCollection.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    bbox =
        (json['bbox'] as List).map((item) => item as double).toList()
    ;
    coordinates =
        (json['coordinates'] as List).map((item) => item as double).toList()
    ;
    geometries =
      GeoJsonObject.listFromJson(json['geometries'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'bbox': bbox,
      'coordinates': coordinates,
      'geometries': geometries
     };
  }

  static List<GeometryCollection> listFromJson(List<dynamic> json) {
    return json == null ? new List<GeometryCollection>() : json.map((value) => new GeometryCollection.fromJson(value)).toList();
  }

  static Map<String, GeometryCollection> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeometryCollection>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GeometryCollection.fromJson(value));
    }
    return map;
  }
}

