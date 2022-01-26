part of swagger.api;

class FontConfigDTO {
  
  String family = null;
  

  String style = null;
  

  String weight = null;
  

  String url = null;
  

  Map<String, String> src = {};
  
  FontConfigDTO();

  @override
  String toString() {
    return 'FontConfigDTO[family=$family, style=$style, weight=$weight, url=$url, src=$src, ]';
  }

  FontConfigDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    family =
        
            json['family']
    ;
    style =
        
            json['style']
    ;
    weight =
        
            json['weight']
    ;
    url =
        
            json['url']
    ;
    src =
        (json['src'] as Map).map((key, value) => MapEntry(key as dynamic, value as dynamic))
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'family': family,
      'style': style,
      'weight': weight,
      'url': url,
      'src': src
     };
  }

  static List<FontConfigDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FontConfigDTO>() : json.map((value) => new FontConfigDTO.fromJson(value)).toList();
  }

  static Map<String, FontConfigDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FontConfigDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FontConfigDTO.fromJson(value));
    }
    return map;
  }

}

