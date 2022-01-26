part of swagger.api;

class ListItemDTO {
  
  String uri = null;
  

  String name = null;
  
  ListItemDTO();

  @override
  String toString() {
    return 'ListItemDTO[uri=$uri, name=$name, ]';
  }

  ListItemDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name
     };
  }

  static List<ListItemDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListItemDTO>() : json.map((value) => new ListItemDTO.fromJson(value)).toList();
  }

  static Map<String, ListItemDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListItemDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListItemDTO.fromJson(value));
    }
    return map;
  }

}

