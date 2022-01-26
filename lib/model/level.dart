part of swagger.api;

class Level {
  
  int levelInt = null;
  

  String levelStr = null;
  
  Level();

  @override
  String toString() {
    return 'Level[levelInt=$levelInt, levelStr=$levelStr, ]';
  }

  Level.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    levelInt =
        
            json['levelInt']
    ;
    levelStr =
        
            json['levelStr']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'levelInt': levelInt,
      'levelStr': levelStr
     };
  }

  static List<Level> listFromJson(List<dynamic> json) {
    return json == null ? new List<Level>() : json.map((value) => new Level.fromJson(value)).toList();
  }

  static Map<String, Level> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Level>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Level.fromJson(value));
    }
    return map;
  }

}

