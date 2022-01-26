part of swagger.api;

class FactorUpdateDTO {
  
  String uri = null;
  

  String name = null;
  

  String category = null;
  

  String description = null;
  

  List<FactorLevelCreationDTO> levels = [];
  

  List<String> exactMatch = [];
  

  List<String> closeMatch = [];
  

  List<String> broadMatch = [];
  

  List<String> narrowMatch = [];
  
  FactorUpdateDTO();

  @override
  String toString() {
    return 'FactorUpdateDTO[uri=$uri, name=$name, category=$category, description=$description, levels=$levels, exactMatch=$exactMatch, closeMatch=$closeMatch, broadMatch=$broadMatch, narrowMatch=$narrowMatch, ]';
  }

  FactorUpdateDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
    category =
        
            json['category']
    ;
    description =
        
            json['description']
    ;
    levels =
      FactorLevelCreationDTO.listFromJson((json['levels'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    exactMatch =
        (json['exact_match'] as List).map((item) => item as String).toList()
    ;
    closeMatch =
        (json['close_match'] as List).map((item) => item as String).toList()
    ;
    broadMatch =
        (json['broad_match'] as List).map((item) => item as String).toList()
    ;
    narrowMatch =
        (json['narrow_match'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'category': category,
      'description': description,
      'levels': levels,
      'exact_match': exactMatch,
      'close_match': closeMatch,
      'broad_match': broadMatch,
      'narrow_match': narrowMatch
     };
  }

  static List<FactorUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FactorUpdateDTO>() : json.map((value) => new FactorUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, FactorUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FactorUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FactorUpdateDTO.fromJson(value));
    }
    return map;
  }

}

