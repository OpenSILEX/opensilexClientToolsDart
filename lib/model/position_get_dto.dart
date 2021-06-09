part of swagger.api;

class PositionGetDTO {
  /* Move event which update the position */
  String event = null;
  
/* Move time */
  String moveTime = null;
  

  InfrastructureFacilityNamedDTO from = null;
  

  InfrastructureFacilityNamedDTO to = null;
  

  PositionGetDetailDTO position = null;
  
  PositionGetDTO();

  @override
  String toString() {
    return 'PositionGetDTO[event=$event, moveTime=$moveTime, from=$from, to=$to, position=$position, ]';
  }

  PositionGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    event =
        json['event']
    ;
    moveTime =
        json['move_time']
    ;
    from =
      
 
      
 
      new InfrastructureFacilityNamedDTO.fromJson(json['from'])
;
    to =
      
 
      
 
      new InfrastructureFacilityNamedDTO.fromJson(json['to'])
;
    position =
      
 
      
 
      new PositionGetDetailDTO.fromJson(json['position'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'event': event,
      'move_time': moveTime,
      'from': from,
      'to': to,
      'position': position
     };
  }

  static List<PositionGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<PositionGetDTO>() : json.map((value) => new PositionGetDTO.fromJson(value)).toList();
  }

  static Map<String, PositionGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PositionGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PositionGetDTO.fromJson(value));
    }
    return map;
  }
}

