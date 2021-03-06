part of swagger.api;

class MoveCreationDTO {
  
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
  

  String from = null;
  

  String to = null;
  

  List<TargetPositionCreationDTO> targetsPositions = [];
  
  MoveCreationDTO();

  @override
  String toString() {
    return 'MoveCreationDTO[uri=$uri, rdfType=$rdfType, start=$start, end=$end, isInstant=$isInstant, description=$description, targets=$targets, relations=$relations, from=$from, to=$to, targetsPositions=$targetsPositions, ]';
  }

  MoveCreationDTO.fromJson(Map<String, dynamic> json) {
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
    from =
        
            json['from']
    ;
    to =
        
            json['to']
    ;
    targetsPositions =
      TargetPositionCreationDTO.listFromJson((json['targets_positions'] as List).map((e) => e as Map<String, dynamic>).toList())
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
      'relations': relations,
      'from': from,
      'to': to,
      'targets_positions': targetsPositions
     };
  }

  static List<MoveCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<MoveCreationDTO>() : json.map((value) => new MoveCreationDTO.fromJson(value)).toList();
  }

  static Map<String, MoveCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MoveCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MoveCreationDTO.fromJson(value));
    }
    return map;
  }

}

