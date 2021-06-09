part of swagger.api;

class ThemeConfigDTO {
  
  bool hasStyle = null;
  

  List<FontConfigDTO> fonts = [];
  

  Map<String, String> iconClassesRDF = {};
  

  Map<String, String> componentOverrides = {};
  
  ThemeConfigDTO();

  @override
  String toString() {
    return 'ThemeConfigDTO[hasStyle=$hasStyle, fonts=$fonts, iconClassesRDF=$iconClassesRDF, componentOverrides=$componentOverrides, ]';
  }

  ThemeConfigDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hasStyle =
        json['hasStyle']
    ;
    fonts =
      FontConfigDTO.listFromJson(json['fonts'])
;
    iconClassesRDF =
        json['iconClassesRDF']
    ;
    componentOverrides =
        json['componentOverrides']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'hasStyle': hasStyle,
      'fonts': fonts,
      'iconClassesRDF': iconClassesRDF,
      'componentOverrides': componentOverrides
     };
  }

  static List<ThemeConfigDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ThemeConfigDTO>() : json.map((value) => new ThemeConfigDTO.fromJson(value)).toList();
  }

  static Map<String, ThemeConfigDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ThemeConfigDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ThemeConfigDTO.fromJson(value));
    }
    return map;
  }
}

