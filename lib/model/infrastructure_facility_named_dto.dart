part of swagger.api;

class InfrastructureFacilityNamedDTO {
  
  String uri = null;
  

  String name = null;
  
  InfrastructureFacilityNamedDTO();

  @override
  String toString() {
    return 'InfrastructureFacilityNamedDTO[uri=$uri, name=$name, ]';
  }

  InfrastructureFacilityNamedDTO.fromJson(Map<String, dynamic> json) {
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

  static List<InfrastructureFacilityNamedDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InfrastructureFacilityNamedDTO>() : json.map((value) => new InfrastructureFacilityNamedDTO.fromJson(value)).toList();
  }

  static Map<String, InfrastructureFacilityNamedDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InfrastructureFacilityNamedDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InfrastructureFacilityNamedDTO.fromJson(value));
    }
    return map;
  }
}

