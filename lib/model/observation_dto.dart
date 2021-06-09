part of swagger.api;

class ObservationDTO {
  
  String germplasmDbId = null;
  

  String germplasmName = null;
  

  String observationDbId = null;
  

  String observationLevel = null;
  

  String observationTimeStamp = null;
  

  String observationUnitDbId = null;
  

  String observationUnitName = null;
  

  String observationVariableDbId = null;
  

  String observationVariableName = null;
  

  String operator_ = null;
  

  Season season = null;
  

  String studyDbId = null;
  

  String uploadedBy = null;
  

  String value = null;
  
  ObservationDTO();

  @override
  String toString() {
    return 'ObservationDTO[germplasmDbId=$germplasmDbId, germplasmName=$germplasmName, observationDbId=$observationDbId, observationLevel=$observationLevel, observationTimeStamp=$observationTimeStamp, observationUnitDbId=$observationUnitDbId, observationUnitName=$observationUnitName, observationVariableDbId=$observationVariableDbId, observationVariableName=$observationVariableName, operator_=$operator_, season=$season, studyDbId=$studyDbId, uploadedBy=$uploadedBy, value=$value, ]';
  }

  ObservationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    germplasmDbId =
        json['germplasmDbId']
    ;
    germplasmName =
        json['germplasmName']
    ;
    observationDbId =
        json['observationDbId']
    ;
    observationLevel =
        json['observationLevel']
    ;
    observationTimeStamp =
        json['observationTimeStamp']
    ;
    observationUnitDbId =
        json['observationUnitDbId']
    ;
    observationUnitName =
        json['observationUnitName']
    ;
    observationVariableDbId =
        json['observationVariableDbId']
    ;
    observationVariableName =
        json['observationVariableName']
    ;
    operator_ =
        json['operator']
    ;
    season =
      
 
      
 
      new Season.fromJson(json['season'])
;
    studyDbId =
        json['studyDbId']
    ;
    uploadedBy =
        json['uploadedBy']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'germplasmDbId': germplasmDbId,
      'germplasmName': germplasmName,
      'observationDbId': observationDbId,
      'observationLevel': observationLevel,
      'observationTimeStamp': observationTimeStamp,
      'observationUnitDbId': observationUnitDbId,
      'observationUnitName': observationUnitName,
      'observationVariableDbId': observationVariableDbId,
      'observationVariableName': observationVariableName,
      'operator': operator_,
      'season': season,
      'studyDbId': studyDbId,
      'uploadedBy': uploadedBy,
      'value': value
     };
  }

  static List<ObservationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObservationDTO>() : json.map((value) => new ObservationDTO.fromJson(value)).toList();
  }

  static Map<String, ObservationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObservationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObservationDTO.fromJson(value));
    }
    return map;
  }
}

