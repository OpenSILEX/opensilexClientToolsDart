part of swagger.api;

class DataUpdateDTO {
  /* URI of the data being updated */
  String uri = null;
  
/* date or datetime */
  String date = null;
  
/* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* target URI on which the data have been collected (e.g. a scientific object) */
  String target = null;
  
/* variable URI */
  String variable = null;
  
/* can be decimal, integer, boolean, string or date */
  Object value = null;
  
/* confidence index */
  double confidence = null;
   // range from 0 to 1//

  DataProvenanceModel provenance = null;
  
/* key-value system to store additional information that can be used to query data */
  Map<String, Object> metadata = {};
  
/* list of repetition values */
  List<Object> rawData = [];
  
  DataUpdateDTO();

  @override
  String toString() {
    return 'DataUpdateDTO[uri=$uri, date=$date, timezone=$timezone, target=$target, variable=$variable, value=$value, confidence=$confidence, provenance=$provenance, metadata=$metadata, rawData=$rawData, ]';
  }

  DataUpdateDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    date =
        json['date']
    ;
    timezone =
        json['timezone']
    ;
    target =
        json['target']
    ;
    variable =
        json['variable']
    ;
    value =
      
 
      
 
      jsonDecode(json['value'])
;
    confidence =
        json['confidence']
    ;
    provenance =
      
 
      
 
      new DataProvenanceModel.fromJson(json['provenance'])
;
    metadata =
      
 
      jsonDecode(json['metadata'].toString())
 
      
;
    rawData =
      Object.listFromJson(json['raw_data'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'date': date,
      'timezone': timezone,
      'target': target,
      'variable': variable,
      'value': value,
      'confidence': confidence,
      'provenance': provenance,
      'metadata': metadata,
      'raw_data': rawData
     };
  }

  static List<DataUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataUpdateDTO>() : json.map((value) => new DataUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, DataUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataUpdateDTO.fromJson(value));
    }
    return map;
  }
}

