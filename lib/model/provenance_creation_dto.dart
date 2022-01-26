part of swagger.api;

class ProvenanceCreationDTO {
  /* provenance name */
  String uri = null;
  
/* provenance uri manually entered */
  String name = null;
  
/* provenance description */
  String description = null;
  

  List<ActivityCreationDTO> provActivity = [];
  

  List<AgentModel> provAgent = [];
  
  ProvenanceCreationDTO();

  @override
  String toString() {
    return 'ProvenanceCreationDTO[uri=$uri, name=$name, description=$description, provActivity=$provActivity, provAgent=$provAgent, ]';
  }

  ProvenanceCreationDTO.fromJson(Map<String, dynamic> json) {
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
      ActivityCreationDTO.listFromJson((json['prov_activity'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    provAgent =
      AgentModel.listFromJson((json['prov_agent'] as List).map((e) => e as Map<String, dynamic>).toList())
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

  static List<ProvenanceCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProvenanceCreationDTO>() : json.map((value) => new ProvenanceCreationDTO.fromJson(value)).toList();
  }

  static Map<String, ProvenanceCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProvenanceCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProvenanceCreationDTO.fromJson(value));
    }
    return map;
  }

}

