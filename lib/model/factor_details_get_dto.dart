part of swagger.api;

class FactorDetailsGetDTO {
  
  String uri = null;
  

  String name = null;
  

  String category = null;
  

  String description = null;
  

  List<FactorLevelGetDTO> levels = [];
  

  List<String> exactMatch = [];
  

  List<String> closeMatch = [];
  

  List<String> broadMatch = [];
  

  List<String> narrowMatch = [];
  

  String experiment = null;
  
  FactorDetailsGetDTO();

  @override
  String toString() {
    return 'FactorDetailsGetDTO[uri=$uri, name=$name, category=$category, description=$description, levels=$levels, exactMatch=$exactMatch, closeMatch=$closeMatch, broadMatch=$broadMatch, narrowMatch=$narrowMatch, experiment=$experiment, ]';
  }

  FactorDetailsGetDTO.fromJson(Map<String, dynamic> json) {
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
      FactorLevelGetDTO.listFromJson(json['levels'])
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
    experiment =
        json['experiment']
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
      'narrow_match': narrowMatch,
      'experiment': experiment
     };
  }

  static List<FactorDetailsGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FactorDetailsGetDTO>() : json.map((value) => new FactorDetailsGetDTO.fromJson(value)).toList();
  }

  static Map<String, FactorDetailsGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FactorDetailsGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FactorDetailsGetDTO.fromJson(value));
    }
    return map;
  }
}

