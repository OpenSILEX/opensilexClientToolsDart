part of swagger.api;

class DataFilePathCreationDTO {
  
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
  
/* path to the stored file */
  String relativePath = null;
  
  DataFilePathCreationDTO();

  @override
  String toString() {
    return 'DataFilePathCreationDTO[uri=$uri, rdfType=$rdfType, date=$date, timezone=$timezone, scientificObjects=$scientificObjects, provenance=$provenance, metadata=$metadata, relativePath=$relativePath, ]';
  }

  DataFilePathCreationDTO.fromJson(Map<String, dynamic> json) {
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
    relativePath =
        json['relative_path']
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
      'metadata': metadata,
      'relative_path': relativePath
     };
  }

  static List<DataFilePathCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataFilePathCreationDTO>() : json.map((value) => new DataFilePathCreationDTO.fromJson(value)).toList();
  }

  static Map<String, DataFilePathCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataFilePathCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataFilePathCreationDTO.fromJson(value));
    }
    return map;
  }
}

