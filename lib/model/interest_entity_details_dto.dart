part of swagger.api;

class InterestEntityDetailsDTO {
  
  String uri = null;
  

  String name = null;
  

  String description = null;
  

  List<String> exactMatch = [];
  

  List<String> closeMatch = [];
  

  List<String> broadMatch = [];
  

  List<String> narrowMatch = [];
  
  InterestEntityDetailsDTO();

  @override
  String toString() {
    return 'InterestEntityDetailsDTO[uri=$uri, name=$name, description=$description, exactMatch=$exactMatch, closeMatch=$closeMatch, broadMatch=$broadMatch, narrowMatch=$narrowMatch, ]';
  }

  InterestEntityDetailsDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    description =
        json['description']
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
      'description': description,
      'exact_match': exactMatch,
      'close_match': closeMatch,
      'broad_match': broadMatch,
      'narrow_match': narrowMatch
     };
  }

  static List<InterestEntityDetailsDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InterestEntityDetailsDTO>() : json.map((value) => new InterestEntityDetailsDTO.fromJson(value)).toList();
  }

  static Map<String, InterestEntityDetailsDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InterestEntityDetailsDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InterestEntityDetailsDTO.fromJson(value));
    }
    return map;
  }
}

