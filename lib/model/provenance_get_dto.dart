part of swagger.api;

class ProvenanceGetDTO {
  /* provenance name */
  String uri = null;
  
/* provenance uri manually entered */
  String name = null;
  
/* provenance description */
  String description = null;
  

  List<ActivityGetDTO> provActivity = [];
  

  List<AgentModel> provAgent = [];
  
  ProvenanceGetDTO();

  @override
  String toString() {
    return 'ProvenanceGetDTO[uri=$uri, name=$name, description=$description, provActivity=$provActivity, provAgent=$provAgent, ]';
  }

  ProvenanceGetDTO.fromJson(Map<String, dynamic> json) {
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
      ActivityGetDTO.listFromJson((json['prov_activity'] as List).map((e) => e as Map<String, dynamic>).toList())
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

  static List<ProvenanceGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProvenanceGetDTO>() : json.map((value) => new ProvenanceGetDTO.fromJson(value)).toList();
  }

  static Map<String, ProvenanceGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProvenanceGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProvenanceGetDTO.fromJson(value));
    }
    return map;
  }

}

