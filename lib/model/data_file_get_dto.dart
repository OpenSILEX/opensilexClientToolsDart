part of swagger.api;

class DataFileGetDTO {
  
  String uri = null;
  
/* file type */
  String rdfType = null;
  
/* date or datetime */
  String date = null;
  
/* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* scientific objects URIs on which the data have been collected */
  List<String> scientificObjects = [];
  

  DataProvenanceModel provenance = null;
  
/* key-value system to store additional information that can be used to query data */
  Map<String, Object> metadata = {};
  
  DataFileGetDTO();

  @override
  String toString() {
    return 'DataFileGetDTO[uri=$uri, rdfType=$rdfType, date=$date, timezone=$timezone, scientificObjects=$scientificObjects, provenance=$provenance, metadata=$metadata, ]';
  }

  DataFileGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    rdfType =
        json['rdf_type']
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
      'rdf_type': rdfType,
      'date': date,
      'timezone': timezone,
      'scientific_objects': scientificObjects,
      'provenance': provenance,
      'metadata': metadata
     };
  }

  static List<DataFileGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataFileGetDTO>() : json.map((value) => new DataFileGetDTO.fromJson(value)).toList();
  }

  static Map<String, DataFileGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataFileGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataFileGetDTO.fromJson(value));
    }
    return map;
  }
}

