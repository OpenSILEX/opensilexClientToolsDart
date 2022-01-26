part of swagger.api;

class FactorGetDTO {
  
  String uri = null;
  

  String name = null;
  

  String category = null;
  

  String description = null;
  

  String experiment = null;
  
  FactorGetDTO();

  @override
  String toString() {
    return 'FactorGetDTO[uri=$uri, name=$name, category=$category, description=$description, experiment=$experiment, ]';
  }

  FactorGetDTO.fromJson(Map<String, dynamic> json) {
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
      'experiment': experiment
     };
  }

  static List<FactorGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FactorGetDTO>() : json.map((value) => new FactorGetDTO.fromJson(value)).toList();
  }

  static Map<String, FactorGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FactorGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FactorGetDTO.fromJson(value));
    }
    return map;
  }

}

