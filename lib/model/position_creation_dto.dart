part of swagger.api;

class PositionCreationDTO {
  
  Point point = null;
  

  int x = null;
  

  int y = null;
  

  int z = null;
  

  String text = null;
  
  PositionCreationDTO();

  @override
  String toString() {
    return 'PositionCreationDTO[point=$point, x=$x, y=$y, z=$z, text=$text, ]';
  }

  PositionCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    point =
      
 
      
 
      new Point.fromJson(json['point'])
;
    x =
        
            json['x']
    ;
    y =
        
            json['y']
    ;
    z =
        
            json['z']
    ;
    text =
        
            json['text']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'point': point,
      'x': x,
      'y': y,
      'z': z,
      'text': text
     };
  }

  static List<PositionCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<PositionCreationDTO>() : json.map((value) => new PositionCreationDTO.fromJson(value)).toList();
  }

  static Map<String, PositionCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PositionCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PositionCreationDTO.fromJson(value));
    }
    return map;
  }

}

