part of swagger.api;

class InfrastructureGetDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  List<NamedResourceDTOInfrastructureModel> parents = [];
  

  List<NamedResourceDTOInfrastructureModel> children = [];
  

  List<NamedResourceDTOGroupModel> groups = [];
  

  List<NamedResourceDTOInfrastructureFacilityModel> facilities = [];
  

  List<NamedResourceDTOExperimentModel> experiments = [];
  
  InfrastructureGetDTO();

  @override
  String toString() {
    return 'InfrastructureGetDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, parents=$parents, children=$children, groups=$groups, facilities=$facilities, experiments=$experiments, ]';
  }

  InfrastructureGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    rdfType =
        
            json['rdf_type']
    ;
    rdfTypeName =
        
            json['rdf_type_name']
    ;
    name =
        
            json['name']
    ;
    parents =
      NamedResourceDTOInfrastructureModel.listFromJson((json['parents'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    children =
      NamedResourceDTOInfrastructureModel.listFromJson((json['children'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    groups =
      NamedResourceDTOGroupModel.listFromJson((json['groups'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    facilities =
      NamedResourceDTOInfrastructureFacilityModel.listFromJson((json['facilities'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    experiments =
      NamedResourceDTOExperimentModel.listFromJson((json['experiments'] as List).map((e) => e as Map<String, dynamic>).toList())
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'parents': parents,
      'children': children,
      'groups': groups,
      'facilities': facilities,
      'experiments': experiments
     };
  }

  static List<InfrastructureGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InfrastructureGetDTO>() : json.map((value) => new InfrastructureGetDTO.fromJson(value)).toList();
  }

  static Map<String, InfrastructureGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InfrastructureGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InfrastructureGetDTO.fromJson(value));
    }
    return map;
  }

}

