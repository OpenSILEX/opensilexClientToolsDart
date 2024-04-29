part of swagger.api;

class FavoriteCreationDTO {
  
  String type = null;
  

  String uri = null;
  
  FavoriteCreationDTO();

  @override
  String toString() {
    return 'FavoriteCreationDTO[type=$type, uri=$uri, ]';
  }

  FavoriteCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        
            json['type']
    ;
    uri =
        
            json['uri']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'uri': uri
     };
  }

  static List<FavoriteCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FavoriteCreationDTO>() : json.map((value) => new FavoriteCreationDTO.fromJson(value)).toList();
  }

  static Map<String, FavoriteCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FavoriteCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FavoriteCreationDTO.fromJson(value));
    }
    return map;
  }

}

