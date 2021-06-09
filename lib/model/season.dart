part of swagger.api;

class Season {
  
  String season = null;
  

  String seasonDbId = null;
  

  int year = null;
  
  Season();

  @override
  String toString() {
    return 'Season[season=$season, seasonDbId=$seasonDbId, year=$year, ]';
  }

  Season.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    season =
        json['season']
    ;
    seasonDbId =
        json['seasonDbId']
    ;
    year =
        json['year']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'season': season,
      'seasonDbId': seasonDbId,
      'year': year
     };
  }

  static List<Season> listFromJson(List<dynamic> json) {
    return json == null ? new List<Season>() : json.map((value) => new Season.fromJson(value)).toList();
  }

  static Map<String, Season> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Season>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Season.fromJson(value));
    }
    return map;
  }
}

