part of swagger.api;

class DataGetDTO {
  /* data URI */
  String uri = null;
  
/* date or datetime */
  String date = null;
  
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
  
  DataGetDTO();

  @override
  String toString() {
    return 'DataGetDTO[uri=$uri, date=$date, scientificObjects=$scientificObjects, variable=$variable, value=$value, confidence=$confidence, provenance=$provenance, metadata=$metadata, ]';
  }

  DataGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    date =
        json['date']
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
      'scientific_objects': scientificObjects,
      'variable': variable,
      'value': value,
      'confidence': confidence,
      'provenance': provenance,
      'metadata': metadata
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

