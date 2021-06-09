part of swagger.api;

class MoveUpdateDTO {
  
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
  

  List<ConcernedItemPositionCreationDTO> targetsPositions = [];
  
  MoveUpdateDTO();

  @override
  String toString() {
    return 'MoveUpdateDTO[uri=$uri, rdfType=$rdfType, start=$start, end=$end, isInstant=$isInstant, description=$description, targets=$targets, relations=$relations, from=$from, to=$to, targetsPositions=$targetsPositions, ]';
  }

  MoveUpdateDTO.fromJson(Map<String, dynamic> json) {
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
      RDFObjectRelationDTO.listFromJson(json['relations'])
;
    from =
        json['from']
    ;
    to =
        json['to']
    ;
    targetsPositions =
      ConcernedItemPositionCreationDTO.listFromJson(json['targets_positions'])
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

  static List<MoveUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<MoveUpdateDTO>() : json.map((value) => new MoveUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, MoveUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MoveUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MoveUpdateDTO.fromJson(value));
    }
    return map;
  }
}

