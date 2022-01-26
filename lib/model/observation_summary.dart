part of swagger.api;

class ObservationSummary {
  
  String collector = null;
  

  String observationDbId = null;
  

  String observationTimeStamp = null;
  

  String observationVariableDbId = null;
  

  String observationVariableName = null;
  

  Season season = null;
  
  ObservationSummary();

  @override
  String toString() {
    return 'ObservationSummary[collector=$collector, observationDbId=$observationDbId, observationTimeStamp=$observationTimeStamp, observationVariableDbId=$observationVariableDbId, observationVariableName=$observationVariableName, season=$season, ]';
  }

  ObservationSummary.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    collector =
        
            json['collector']
    ;
    observationDbId =
        
            json['observationDbId']
    ;
    observationTimeStamp =
        
            json['observationTimeStamp']
    ;
    observationVariableDbId =
        
            json['observationVariableDbId']
    ;
    observationVariableName =
        
            json['observationVariableName']
    ;
    season =
      
 
      
 
      new Season.fromJson(json['season'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'collector': collector,
      'observationDbId': observationDbId,
      'observationTimeStamp': observationTimeStamp,
      'observationVariableDbId': observationVariableDbId,
      'observationVariableName': observationVariableName,
      'season': season
     };
  }

  static List<ObservationSummary> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObservationSummary>() : json.map((value) => new ObservationSummary.fromJson(value)).toList();
  }

  static Map<String, ObservationSummary> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObservationSummary>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObservationSummary.fromJson(value));
    }
    return map;
  }

}

