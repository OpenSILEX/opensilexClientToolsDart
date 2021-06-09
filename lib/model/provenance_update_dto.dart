part of swagger.api;

class ProvenanceUpdateDTO {
  /* uri of the provenance being updated */
  String uri = null;
  
/* provenance uri manually entered */
  String name = null;
  
/* provenance description */
  String description = null;
  

  List<ActivityCreationDTO> provActivity = [];
  

  List<AgentModel> provAgent = [];
  
  ProvenanceUpdateDTO();

  @override
  String toString() {
    return 'ProvenanceUpdateDTO[uri=$uri, name=$name, description=$description, provActivity=$provActivity, provAgent=$provAgent, ]';
  }

  ProvenanceUpdateDTO.fromJson(Map<String, dynamic> json) {
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
    provActivity =
      ActivityCreationDTO.listFromJson(json['prov_activity'])
;
    provAgent =
      AgentModel.listFromJson(json['prov_agent'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'description': description,
      'prov_activity': provActivity,
      'prov_agent': provAgent
     };
  }

  static List<ProvenanceUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProvenanceUpdateDTO>() : json.map((value) => new ProvenanceUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, ProvenanceUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProvenanceUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProvenanceUpdateDTO.fromJson(value));
    }
    return map;
  }
}

