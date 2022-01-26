part of swagger.api;

class ObservationUnitXref {
  
  String id = null;
  

  String source = null;
  
  ObservationUnitXref();

  @override
  String toString() {
    return 'ObservationUnitXref[id=$id, source=$source, ]';
  }

  ObservationUnitXref.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        
            json['id']
    ;
    source =
        
            json['source']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'source': source
     };
  }

  static List<ObservationUnitXref> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObservationUnitXref>() : json.map((value) => new ObservationUnitXref.fromJson(value)).toList();
  }

  static Map<String, ObservationUnitXref> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObservationUnitXref>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObservationUnitXref.fromJson(value));
    }
    return map;
  }

}

