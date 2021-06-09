part of swagger.api;

class ConcernedItemPositionGetDTO {
  
  String target = null;
  

  PositionGetDetailDTO position = null;
  
  ConcernedItemPositionGetDTO();

  @override
  String toString() {
    return 'ConcernedItemPositionGetDTO[target=$target, position=$position, ]';
  }

  ConcernedItemPositionGetDTO.fromJson(Map<String, dynamic> json) {
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

  static List<ConcernedItemPositionGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConcernedItemPositionGetDTO>() : json.map((value) => new ConcernedItemPositionGetDTO.fromJson(value)).toList();
  }

  static Map<String, ConcernedItemPositionGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConcernedItemPositionGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConcernedItemPositionGetDTO.fromJson(value));
    }
    return map;
  }
}

