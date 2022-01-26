part of swagger.api;

class DataGetDTO {
  /* data URI */
  String uri = null;
  
/* date or datetime */
  String date = null;
  
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
  
  DataGetDTO();

  @override
  String toString() {
    return 'DataGetDTO[uri=$uri, date=$date, target=$target, variable=$variable, value=$value, confidence=$confidence, provenance=$provenance, metadata=$metadata, rawData=$rawData, ]';
  }

  DataGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    date =
        
            json['date']
    ;
    target =
        
            json['target']
    ;
    variable =
        
            json['variable']
    ;
    value =
      
 
      
 
       (json['value'])
;
    confidence =
        
            json['confidence']
    ;
    provenance =
      
 
      
 
      new DataProvenanceModel.fromJson(json['provenance'])
;
    metadata =
      
 
       ((json['metadata'] as Map).map((key, value) => MapEntry(key as dynamic, (value as Map<String, dynamic>))))
 
      
;
    rawData =
       ((json['raw_data'] as List).map((e) => e as Map<String, dynamic>).toList())
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'date': date,
      'target': target,
      'variable': variable,
      'value': value,
      'confidence': confidence,
      'provenance': provenance,
      'metadata': metadata,
      'raw_data': rawData
     };
  }

  static List<DataGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataGetDTO>() : json.map((value) => new DataGetDTO.fromJson(value)).toList();
  }

  static Map<String, DataGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataGetDTO.fromJson(value));
    }
    return map;
  }

}

