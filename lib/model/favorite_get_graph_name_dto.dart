part of swagger.api;

class FavoriteGetGraphNameDTO {
  
  String graph = null;
  

  String name = null;
  
  FavoriteGetGraphNameDTO();

  @override
  String toString() {
    return 'FavoriteGetGraphNameDTO[graph=$graph, name=$name, ]';
  }

  FavoriteGetGraphNameDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    graph =
        
            json['graph']
    ;
    name =
        
            json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'graph': graph,
      'name': name
     };
  }

  static List<FavoriteGetGraphNameDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FavoriteGetGraphNameDTO>() : json.map((value) => new FavoriteGetGraphNameDTO.fromJson(value)).toList();
  }

  static Map<String, FavoriteGetGraphNameDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FavoriteGetGraphNameDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FavoriteGetGraphNameDTO.fromJson(value));
    }
    return map;
  }

}

