part of swagger.api;

class TargetPositionCreationDTO {
  
  String target = null;
  

  PositionCreationDTO position = null;
  
  TargetPositionCreationDTO();

  @override
  String toString() {
    return 'TargetPositionCreationDTO[target=$target, position=$position, ]';
  }

  TargetPositionCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    target =
        json['target']
    ;
    position =
      
 
      
 
      new PositionCreationDTO.fromJson(json['position'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'target': target,
      'position': position
     };
  }

  static List<TargetPositionCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<TargetPositionCreationDTO>() : json.map((value) => new TargetPositionCreationDTO.fromJson(value)).toList();
  }

  static Map<String, TargetPositionCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TargetPositionCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TargetPositionCreationDTO.fromJson(value));
    }
    return map;
  }
}

