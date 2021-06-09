part of swagger.api;

class ActivityGetDTO {
  /* activity type defined in the ontology */
  String rdfType = null;
  
/* external uri of the activity or process */
  String uri = null;
  
/* start date or datetime */
  String startDate = null;
  
/* end date or datetime */
  String endDate = null;
  
/* a key-value system to store process parameters */
  Map<String, Object> settings = {};
  
  ActivityGetDTO();

  @override
  String toString() {
    return 'ActivityGetDTO[rdfType=$rdfType, uri=$uri, startDate=$startDate, endDate=$endDate, settings=$settings, ]';
  }

  ActivityGetDTO.fromJson(Map<String, dynamic> json) {
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
    settings =
      
 
      jsonDecode(json['settings'].toString())
 
      
;
  }

  Map<String, dynamic> toJson() {
    return {
      'rdf_type': rdfType,
      'uri': uri,
      'start_date': startDate,
      'end_date': endDate,
      'settings': settings
     };
  }

  static List<ActivityGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActivityGetDTO>() : json.map((value) => new ActivityGetDTO.fromJson(value)).toList();
  }

  static Map<String, ActivityGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActivityGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActivityGetDTO.fromJson(value));
    }
    return map;
  }
}

