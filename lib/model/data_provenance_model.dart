part of swagger.api;

class DataProvenanceModel {
  /* provenance uri */
  String uri = null;
  
/* list of inputs of the process described in the provenance */
  List<ProvEntityModel> provUsed = [];
  
/* allow an activity to be linked to an agent */
  List<ProvEntityModel> provWasAssociatedWith = [];
  
/* a key-value system to store specific information */
  Map<String, Object> settings = {};
  
/* experiments uris on which the data has been produced */
  List<String> experiments = [];
  
  DataProvenanceModel();

  @override
  String toString() {
    return 'DataProvenanceModel[uri=$uri, provUsed=$provUsed, provWasAssociatedWith=$provWasAssociatedWith, settings=$settings, experiments=$experiments, ]';
  }

  DataProvenanceModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    provUsed =
      ProvEntityModel.listFromJson((json['prov_used'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    provWasAssociatedWith =
      ProvEntityModel.listFromJson((json['prov_was_associated_with'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    settings =
      
 
       ((json['settings'] as Map).map((key, value) => MapEntry(key as dynamic, (value as Map<String, dynamic>))))
 
      
;
    experiments =
        (json['experiments'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'prov_used': provUsed,
      'prov_was_associated_with': provWasAssociatedWith,
      'settings': settings,
      'experiments': experiments
     };
  }

  static List<DataProvenanceModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataProvenanceModel>() : json.map((value) => new DataProvenanceModel.fromJson(value)).toList();
  }

  static Map<String, DataProvenanceModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataProvenanceModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataProvenanceModel.fromJson(value));
    }
    return map;
  }

}

