part of swagger.api;

class VariablesGroupGetDTO {
  
  String uri = null;
  

  String name = null;
  

  String description = null;
  

  List<VariableGetDTO> variables = [];
  
  VariablesGroupGetDTO();

  @override
  String toString() {
    return 'VariablesGroupGetDTO[uri=$uri, name=$name, description=$description, variables=$variables, ]';
  }

  VariablesGroupGetDTO.fromJson(Map<String, dynamic> json) {
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
      VariableGetDTO.listFromJson(json['variables'])
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

  static List<VariablesGroupGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VariablesGroupGetDTO>() : json.map((value) => new VariablesGroupGetDTO.fromJson(value)).toList();
  }

  static Map<String, VariablesGroupGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VariablesGroupGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VariablesGroupGetDTO.fromJson(value));
    }
    return map;
  }
}

