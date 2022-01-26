part of swagger.api;

class TargetPositionGetDTO {
  
  String target = null;
  

  PositionGetDetailDTO position = null;
  
  TargetPositionGetDTO();

  @override
  String toString() {
    return 'TargetPositionGetDTO[target=$target, position=$position, ]';
  }

  TargetPositionGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    target =
        
            json['target']
    ;
    position =
      
 
      
 
      new PositionGetDetailDTO.fromJson(json['position'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'target': target,
      'position': position
     };
  }

  static List<TargetPositionGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<TargetPositionGetDTO>() : json.map((value) => new TargetPositionGetDTO.fromJson(value)).toList();
  }

  static Map<String, TargetPositionGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TargetPositionGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TargetPositionGetDTO.fromJson(value));
    }
    return map;
  }

}

