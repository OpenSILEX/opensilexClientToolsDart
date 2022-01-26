part of swagger.api;

class LngLatAlt {
  
  double longitude = null;
  

  double latitude = null;
  

  double altitude = null;
  

  List<double> additionalElements = [];
  
  LngLatAlt();

  @override
  String toString() {
    return 'LngLatAlt[longitude=$longitude, latitude=$latitude, altitude=$altitude, additionalElements=$additionalElements, ]';
  }

  LngLatAlt.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    longitude =
        
            json['longitude'] == null ? null : json['longitude'].toDouble()
    ;
    latitude =
        
            json['latitude'] == null ? null : json['latitude'].toDouble()
    ;
    altitude =
        
            json['altitude'] == null ? null : json['altitude'].toDouble()
    ;
    additionalElements =
        (json['additionalElements'] as List).map((item) => item as double).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'longitude': longitude,
      'latitude': latitude,
      'altitude': altitude,
      'additionalElements': additionalElements
     };
  }

  static List<LngLatAlt> listFromJson(List<dynamic> json) {
    return json == null ? new List<LngLatAlt>() : json.map((value) => new LngLatAlt.fromJson(value)).toList();
  }

  static Map<String, LngLatAlt> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LngLatAlt>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LngLatAlt.fromJson(value));
    }
    return map;
  }

}

