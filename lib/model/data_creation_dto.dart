part of swagger.api;

class DataCreationDTO {
  
  String uri = null;
  
/* date or datetime */
  String date = null;
  
/* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* scientific objects URIs on which the data have been collected */
  List<String> scientificObjects = [];
  
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
  
  DataCreationDTO();

  @override
  String toString() {
    return 'DataCreationDTO[uri=$uri, date=$date, timezone=$timezone, scientificObjects=$scientificObjects, variable=$variable, value=$value, confidence=$confidence, provenance=$provenance, metadata=$metadata, ]';
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
    scientificObjects =
        (json['scientific_objects'] as List).map((item) => item as String).toList()
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
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'date': date,
      'timezone': timezone,
      'scientific_objects': scientificObjects,
      'variable': variable,
      'value': value,
      'confidence': confidence,
      'provenance': provenance,
      'metadata': metadata
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

