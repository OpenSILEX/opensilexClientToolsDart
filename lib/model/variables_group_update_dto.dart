part of swagger.api;

class VariablesGroupUpdateDTO {
  
  String uri = null;
  

  String name = null;
  

  String description = null;
  

  List<String> variables = [];
  
  VariablesGroupUpdateDTO();

  @override
  String toString() {
    return 'VariablesGroupUpdateDTO[uri=$uri, name=$name, description=$description, variables=$variables, ]';
  }

  VariablesGroupUpdateDTO.fromJson(Map<String, dynamic> json) {
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
    variables =
        (json['variables'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'description': description,
      'variables': variables
     };
  }

  static List<VariablesGroupUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VariablesGroupUpdateDTO>() : json.map((value) => new VariablesGroupUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, VariablesGroupUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VariablesGroupUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VariablesGroupUpdateDTO.fromJson(value));
    }
    return map;
  }

}

