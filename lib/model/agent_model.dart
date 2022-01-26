part of swagger.api;

class AgentModel {
  /* agent uri */
  String uri = null;
  
/* activity type defined in the ontology */
  String rdfType = null;
  
/* a key value system to store agent parameters */
  Map<String, Object> settings = {};
  
  AgentModel();

  @override
  String toString() {
    return 'AgentModel[uri=$uri, rdfType=$rdfType, settings=$settings, ]';
  }

  AgentModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    rdfType =
        
            json['rdf_type']
    ;
    settings =
      
 
       ((json['settings'] as Map).map((key, value) => MapEntry(key as dynamic, (value as Map<String, dynamic>))))
 
      
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'settings': settings
     };
  }

  static List<AgentModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<AgentModel>() : json.map((value) => new AgentModel.fromJson(value)).toList();
  }

  static Map<String, AgentModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AgentModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AgentModel.fromJson(value));
    }
    return map;
  }

}

