part of swagger.api;

class StudyDetailsDTO {
  
  String active = null;
  

  Map<String, Object> additionalInfo = {};
  

  String commonCropName = null;
  

  String documentationURL = null;
  

  String endDate = null;
  

  String locationDbId = null;
  

  String locationName = null;
  

  String name = null;
  

  String programDbId = null;
  

  String programName = null;
  

  List<Season> seasons = [];
  

  String startDate = null;
  

  String studyDbId = null;
  

  String studyName = null;
  

  String studyType = null;
  

  String studyTypeDbId = null;
  

  String studyTypeName = null;
  

  String trialDbId = null;
  

  String trialName = null;
  

  List<Contact> contacts = [];
  

  List<DataLink> datalinks = [];
  

  Location location = null;
  
  StudyDetailsDTO();

  @override
  String toString() {
    return 'StudyDetailsDTO[active=$active, additionalInfo=$additionalInfo, commonCropName=$commonCropName, documentationURL=$documentationURL, endDate=$endDate, locationDbId=$locationDbId, locationName=$locationName, name=$name, programDbId=$programDbId, programName=$programName, seasons=$seasons, startDate=$startDate, studyDbId=$studyDbId, studyName=$studyName, studyType=$studyType, studyTypeDbId=$studyTypeDbId, studyTypeName=$studyTypeName, trialDbId=$trialDbId, trialName=$trialName, contacts=$contacts, datalinks=$datalinks, location=$location, ]';
  }

  StudyDetailsDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    active =
        json['active']
    ;
    additionalInfo =
      
 
      jsonDecode(json['additionalInfo'].toString())
 
      
;
    commonCropName =
        json['commonCropName']
    ;
    documentationURL =
        json['documentationURL']
    ;
    endDate =
        json['endDate']
    ;
    locationDbId =
        json['locationDbId']
    ;
    locationName =
        json['locationName']
    ;
    name =
        json['name']
    ;
    programDbId =
        json['programDbId']
    ;
    programName =
        json['programName']
    ;
    seasons =
      Season.listFromJson(json['seasons'])
;
    startDate =
        json['startDate']
    ;
    studyDbId =
        json['studyDbId']
    ;
    studyName =
        json['studyName']
    ;
    studyType =
        json['studyType']
    ;
    studyTypeDbId =
        json['studyTypeDbId']
    ;
    studyTypeName =
        json['studyTypeName']
    ;
    trialDbId =
        json['trialDbId']
    ;
    trialName =
        json['trialName']
    ;
    contacts =
      Contact.listFromJson(json['contacts'])
;
    datalinks =
      DataLink.listFromJson(json['datalinks'])
;
    location =
      
 
      
 
      new Location.fromJson(json['location'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'active': active,
      'additionalInfo': additionalInfo,
      'commonCropName': commonCropName,
      'documentationURL': documentationURL,
      'endDate': endDate,
      'locationDbId': locationDbId,
      'locationName': locationName,
      'name': name,
      'programDbId': programDbId,
      'programName': programName,
      'seasons': seasons,
      'startDate': startDate,
      'studyDbId': studyDbId,
      'studyName': studyName,
      'studyType': studyType,
      'studyTypeDbId': studyTypeDbId,
      'studyTypeName': studyTypeName,
      'trialDbId': trialDbId,
      'trialName': trialName,
      'contacts': contacts,
      'datalinks': datalinks,
      'location': location
     };
  }

  static List<StudyDetailsDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<StudyDetailsDTO>() : json.map((value) => new StudyDetailsDTO.fromJson(value)).toList();
  }

  static Map<String, StudyDetailsDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StudyDetailsDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StudyDetailsDTO.fromJson(value));
    }
    return map;
  }
}

