part of swagger.api;

class FavoriteGetDTO {
  
  String uri = null;
  

  String type = null;
  

  String defaultName = null;
  

  List<FavoriteGetGraphNameDTO> graphNames = [];
  
  FavoriteGetDTO();

  @override
  String toString() {
    return 'FavoriteGetDTO[uri=$uri, type=$type, defaultName=$defaultName, graphNames=$graphNames, ]';
  }

  FavoriteGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    type =
        
            json['type']
    ;
    defaultName =
        
            json['defaultName']
    ;
    graphNames =
      FavoriteGetGraphNameDTO.listFromJson((json['graphNames'] as List).map((e) => e as Map<String, dynamic>).toList())
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'type': type,
      'defaultName': defaultName,
      'graphNames': graphNames
     };
  }

  static List<FavoriteGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FavoriteGetDTO>() : json.map((value) => new FavoriteGetDTO.fromJson(value)).toList();
  }

  static Map<String, FavoriteGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FavoriteGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FavoriteGetDTO.fromJson(value));
    }
    return map;
  }

}

