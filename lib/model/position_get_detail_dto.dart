part of swagger.api;

class PositionGetDetailDTO {
  
  Point point = null;
  

  int x = null;
  

  int y = null;
  

  int z = null;
  

  String text = null;
  
  PositionGetDetailDTO();

  @override
  String toString() {
    return 'PositionGetDetailDTO[point=$point, x=$x, y=$y, z=$z, text=$text, ]';
  }

  PositionGetDetailDTO.fromJson(Map<String, dynamic> json) {
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

  static List<PositionGetDetailDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<PositionGetDetailDTO>() : json.map((value) => new PositionGetDetailDTO.fromJson(value)).toList();
  }

  static Map<String, PositionGetDetailDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PositionGetDetailDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PositionGetDetailDTO.fromJson(value));
    }
    return map;
  }
}

