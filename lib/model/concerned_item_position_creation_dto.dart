part of swagger.api;

class ConcernedItemPositionCreationDTO {
  
  String target = null;
  

  PositionCreationDTO position = null;
  
  ConcernedItemPositionCreationDTO();

  @override
  String toString() {
    return 'ConcernedItemPositionCreationDTO[target=$target, position=$position, ]';
  }

  ConcernedItemPositionCreationDTO.fromJson(Map<String, dynamic> json) {
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

  static List<ConcernedItemPositionCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConcernedItemPositionCreationDTO>() : json.map((value) => new ConcernedItemPositionCreationDTO.fromJson(value)).toList();
  }

  static Map<String, ConcernedItemPositionCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConcernedItemPositionCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConcernedItemPositionCreationDTO.fromJson(value));
    }
    return map;
  }
}

