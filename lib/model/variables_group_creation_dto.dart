part of swagger.api;

class VariablesGroupCreationDTO {
  
  String uri = null;
  

  String name = null;
  

  String description = null;
  

  List<String> variables = [];
  
  VariablesGroupCreationDTO();

  @override
  String toString() {
    return 'VariablesGroupCreationDTO[uri=$uri, name=$name, description=$description, variables=$variables, ]';
  }

  VariablesGroupCreationDTO.fromJson(Map<String, dynamic> json) {
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

  static List<VariablesGroupCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VariablesGroupCreationDTO>() : json.map((value) => new VariablesGroupCreationDTO.fromJson(value)).toList();
  }

  static Map<String, VariablesGroupCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VariablesGroupCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VariablesGroupCreationDTO.fromJson(value));
    }
    return map;
  }

}

