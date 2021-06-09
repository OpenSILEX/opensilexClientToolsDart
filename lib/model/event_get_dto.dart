part of swagger.api;

class EventGetDTO {
  /* Event URI */
  String uri = null;
  
/* Event type URI */
  String rdfType = null;
  
/* Event type name */
  String rdfTypeName = null;
  
/* Beginning of the event */
  String start = null;
  
/* End of the event */
  String end = null;
  
/* Indicate if the event is instant */
  bool isInstant = null;
  
/* Description of the event */
  String description = null;
  
/* URI(s) of items concerned by this event */
  List<String> targets = [];
  
/* Event creator URI */
  String author = null;
  
  EventGetDTO();

  @override
  String toString() {
    return 'EventGetDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, start=$start, end=$end, isInstant=$isInstant, description=$description, targets=$targets, author=$author, ]';
  }

  EventGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    rdfType =
        json['rdf_type']
    ;
    rdfTypeName =
        json['rdf_type_name']
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
    author =
        json['author']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'start': start,
      'end': end,
      'is_instant': isInstant,
      'description': description,
      'targets': targets,
      'author': author
     };
  }

  static List<EventGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<EventGetDTO>() : json.map((value) => new EventGetDTO.fromJson(value)).toList();
  }

  static Map<String, EventGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EventGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EventGetDTO.fromJson(value));
    }
    return map;
  }
}

