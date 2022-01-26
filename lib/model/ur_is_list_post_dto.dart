part of swagger.api;

class URIsListPostDTO {
  
  List<String> uris = [];
  
  URIsListPostDTO();

  @override
  String toString() {
    return 'URIsListPostDTO[uris=$uris, ]';
  }

  URIsListPostDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uris =
        (json['uris'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uris': uris
     };
  }

  static List<URIsListPostDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<URIsListPostDTO>() : json.map((value) => new URIsListPostDTO.fromJson(value)).toList();
  }

  static Map<String, URIsListPostDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, URIsListPostDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new URIsListPostDTO.fromJson(value));
    }
    return map;
  }

}

