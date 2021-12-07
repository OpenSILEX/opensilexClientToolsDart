part of swagger.api;

class DataCreationDTO {
  
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
  Map<String, dynamic> metadata = {};
  
/* list of repetition values */
  List<dynamic> rawData = [];
  
  DataCreationDTO();

  @override
  String toString() {
    return 'DataCreationDTO[uri=$uri, date=$date, timezone=$timezone, target=$target, variable=$variable, value=$value, confidence=$confidence, provenance=$provenance, metadata=$metadata, rawData=$rawData, ]';
  }

  DataCreationDTO.fromJson(Map<String, dynamic> json) {
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
      json['raw_data'] as List
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

  static List<DataCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataCreationDTO>() : json.map((value) => new DataCreationDTO.fromJson(value)).toList();
  }

  static Map<String, DataCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataCreationDTO.fromJson(value));
    }
    return map;
  }
}

