part of swagger.api;

class EventCreationDTO {
  
  String uri = null;
  
/* Event type URI */
  String rdfType = null;
  

  String start = null;
  

  String end = null;
  
/* Indicate if the event is instant */
  bool isInstant = null;
  

  String description = null;
  
/* URI(s) of items concerned by this event */
  List<String> targets = [];
  

  List<RDFObjectRelationDTO> relations = [];
  
  EventCreationDTO();

  @override
  String toString() {
    return 'EventCreationDTO[uri=$uri, rdfType=$rdfType, start=$start, end=$end, isInstant=$isInstant, description=$description, targets=$targets, relations=$relations, ]';
  }

  EventCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    rdfType =
        
            json['rdf_type']
    ;
    start =
        
            json['start']
    ;
    end =
        
            json['end']
    ;
    isInstant =
        
            json['is_instant']
    ;
    description =
        
            json['description']
    ;
    targets =
        (json['targets'] as List).map((item) => item as String).toList()
    ;
    relations =
      RDFObjectRelationDTO.listFromJson((json['relations'] as List).map((e) => e as Map<String, dynamic>).toList())
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'start': start,
      'end': end,
      'is_instant': isInstant,
      'description': description,
      'targets': targets,
      'relations': relations
     };
  }

  static List<EventCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<EventCreationDTO>() : json.map((value) => new EventCreationDTO.fromJson(value)).toList();
  }

  static Map<String, EventCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EventCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EventCreationDTO.fromJson(value));
    }
    return map;
  }

}

