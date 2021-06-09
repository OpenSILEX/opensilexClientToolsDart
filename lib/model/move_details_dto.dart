part of swagger.api;

class MoveDetailsDTO {
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
  
/* Description of the move */
  String description = null;
  
/* URI(s) of items concerned by this event */
  List<String> targets = [];
  
/* Event creator URI */
  String author = null;
  

  List<RDFObjectRelationDTO> relations = [];
  

  InfrastructureFacilityNamedDTO from = null;
  

  InfrastructureFacilityNamedDTO to = null;
  

  List<ConcernedItemPositionGetDTO> targetsPositions = [];
  
  MoveDetailsDTO();

  @override
  String toString() {
    return 'MoveDetailsDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, start=$start, end=$end, isInstant=$isInstant, description=$description, targets=$targets, author=$author, relations=$relations, from=$from, to=$to, targetsPositions=$targetsPositions, ]';
  }

  MoveDetailsDTO.fromJson(Map<String, dynamic> json) {
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
    relations =
      RDFObjectRelationDTO.listFromJson(json['relations'])
;
    from =
      
 
      
 
      new InfrastructureFacilityNamedDTO.fromJson(json['from'])
;
    to =
      
 
      
 
      new InfrastructureFacilityNamedDTO.fromJson(json['to'])
;
    targetsPositions =
      ConcernedItemPositionGetDTO.listFromJson(json['targets_positions'])
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
      'author': author,
      'relations': relations,
      'from': from,
      'to': to,
      'targets_positions': targetsPositions
     };
  }

  static List<MoveDetailsDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<MoveDetailsDTO>() : json.map((value) => new MoveDetailsDTO.fromJson(value)).toList();
  }

  static Map<String, MoveDetailsDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MoveDetailsDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MoveDetailsDTO.fromJson(value));
    }
    return map;
  }
}

