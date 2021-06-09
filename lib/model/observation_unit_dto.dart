part of swagger.api;

class ObservationUnitDTO {
  
  String blockNumber = null;
  

  String entryNumber = null;
  

  String entryType = null;
  

  String germplasmDbId = null;
  

  String germplasmName = null;
  

  String observationLevel = null;
  

  String observationLevels = null;
  

  String observationUnitDbId = null;
  

  List<ObservationUnitXref> observationUnitXref = [];
  

  List<ObservationSummary> observations = [];
  

  String plantNumber = null;
  

  String plotNumber = null;
  

  String positionCoordinateX = null;
  

  String positionCoordinateXType = null;
  

  String positionCoordinateY = null;
  

  String positionCoordinateYType = null;
  

  String programName = null;
  

  String replicate = null;
  

  String studyDbId = null;
  

  String studyLocation = null;
  

  String studyLocationDbId = null;
  

  String studyName = null;
  

  List<ObservationTreatment> treatments = [];
  
  ObservationUnitDTO();

  @override
  String toString() {
    return 'ObservationUnitDTO[blockNumber=$blockNumber, entryNumber=$entryNumber, entryType=$entryType, germplasmDbId=$germplasmDbId, germplasmName=$germplasmName, observationLevel=$observationLevel, observationLevels=$observationLevels, observationUnitDbId=$observationUnitDbId, observationUnitXref=$observationUnitXref, observations=$observations, plantNumber=$plantNumber, plotNumber=$plotNumber, positionCoordinateX=$positionCoordinateX, positionCoordinateXType=$positionCoordinateXType, positionCoordinateY=$positionCoordinateY, positionCoordinateYType=$positionCoordinateYType, programName=$programName, replicate=$replicate, studyDbId=$studyDbId, studyLocation=$studyLocation, studyLocationDbId=$studyLocationDbId, studyName=$studyName, treatments=$treatments, ]';
  }

  ObservationUnitDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    blockNumber =
        json['blockNumber']
    ;
    entryNumber =
        json['entryNumber']
    ;
    entryType =
        json['entryType']
    ;
    germplasmDbId =
        json['germplasmDbId']
    ;
    germplasmName =
        json['germplasmName']
    ;
    observationLevel =
        json['observationLevel']
    ;
    observationLevels =
        json['observationLevels']
    ;
    observationUnitDbId =
        json['observationUnitDbId']
    ;
    observationUnitXref =
      ObservationUnitXref.listFromJson(json['observationUnitXref'])
;
    observations =
      ObservationSummary.listFromJson(json['observations'])
;
    plantNumber =
        json['plantNumber']
    ;
    plotNumber =
        json['plotNumber']
    ;
    positionCoordinateX =
        json['positionCoordinateX']
    ;
    positionCoordinateXType =
        json['positionCoordinateXType']
    ;
    positionCoordinateY =
        json['positionCoordinateY']
    ;
    positionCoordinateYType =
        json['positionCoordinateYType']
    ;
    programName =
        json['programName']
    ;
    replicate =
        json['replicate']
    ;
    studyDbId =
        json['studyDbId']
    ;
    studyLocation =
        json['studyLocation']
    ;
    studyLocationDbId =
        json['studyLocationDbId']
    ;
    studyName =
        json['studyName']
    ;
    treatments =
      ObservationTreatment.listFromJson(json['treatments'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'blockNumber': blockNumber,
      'entryNumber': entryNumber,
      'entryType': entryType,
      'germplasmDbId': germplasmDbId,
      'germplasmName': germplasmName,
      'observationLevel': observationLevel,
      'observationLevels': observationLevels,
      'observationUnitDbId': observationUnitDbId,
      'observationUnitXref': observationUnitXref,
      'observations': observations,
      'plantNumber': plantNumber,
      'plotNumber': plotNumber,
      'positionCoordinateX': positionCoordinateX,
      'positionCoordinateXType': positionCoordinateXType,
      'positionCoordinateY': positionCoordinateY,
      'positionCoordinateYType': positionCoordinateYType,
      'programName': programName,
      'replicate': replicate,
      'studyDbId': studyDbId,
      'studyLocation': studyLocation,
      'studyLocationDbId': studyLocationDbId,
      'studyName': studyName,
      'treatments': treatments
     };
  }

  static List<ObservationUnitDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObservationUnitDTO>() : json.map((value) => new ObservationUnitDTO.fromJson(value)).toList();
  }

  static Map<String, ObservationUnitDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObservationUnitDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObservationUnitDTO.fromJson(value));
    }
    return map;
  }
}

