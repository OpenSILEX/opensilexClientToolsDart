part of swagger.api;

class ActivityCreationDTO {
  /* activity type defined in the ontology */
  String rdfType = null;
  
/* external uri of the activity or process */
  String uri = null;
  
/* start date or datetime */
  String startDate = null;
  
/* end date or datetime */
  String endDate = null;
  
/* to specify if the offset is not in the dates and if the timezone is different from the default one */
  String timezone = null;
  
/* a key-value system to store process parameters */
  Map<String, Object> settings = {};
  
  ActivityCreationDTO();

  @override
  String toString() {
    return 'ActivityCreationDTO[rdfType=$rdfType, uri=$uri, startDate=$startDate, endDate=$endDate, timezone=$timezone, settings=$settings, ]';
  }

  ActivityCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    rdfType =
        
            json['rdf_type']
    ;
    uri =
        
            json['uri']
    ;
    startDate =
        
            json['start_date']
    ;
    endDate =
        
            json['end_date']
    ;
    timezone =
        
            json['timezone']
    ;
    settings =
      
 
       ((json['settings'] as Map).map((key, value) => MapEntry(key as dynamic, (value as Map<String, dynamic>))))
 
      
;
  }

  Map<String, dynamic> toJson() {
    return {
      'rdf_type': rdfType,
      'uri': uri,
      'start_date': startDate,
      'end_date': endDate,
      'timezone': timezone,
      'settings': settings
     };
  }

  static List<ActivityCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActivityCreationDTO>() : json.map((value) => new ActivityCreationDTO.fromJson(value)).toList();
  }

  static Map<String, ActivityCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActivityCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActivityCreationDTO.fromJson(value));
    }
    return map;
  }

}

