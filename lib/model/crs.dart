part of swagger.api;

class Crs {
  
  String type = null;
  //enum typeEnum {  name,  link,  };

  Map<String, Object> properties = {};
  
  Crs();

  @override
  String toString() {
    return 'Crs[type=$type, properties=$properties, ]';
  }

  Crs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    properties =
      
 
      jsonDecode(json['properties'].toString())
 
      
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'properties': properties
     };
  }

  static List<Crs> listFromJson(List<dynamic> json) {
    return json == null ? new List<Crs>() : json.map((value) => new Crs.fromJson(value)).toList();
  }

  static Map<String, Crs> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Crs>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Crs.fromJson(value));
    }
    return map;
  }
}

