part of swagger.api;

class InfrastructureTeamDTO {
  /* Group URI */
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
/* Group name */
  String name = null;
  
/* Group description */
  String description = null;
  
/* Group user with profile */
  List<GroupUserProfileDTO> userProfiles = [];
  

  String organisation = null;
  
  InfrastructureTeamDTO();

  @override
  String toString() {
    return 'InfrastructureTeamDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, description=$description, userProfiles=$userProfiles, organisation=$organisation, ]';
  }

  InfrastructureTeamDTO.fromJson(Map<String, dynamic> json) {
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
    description =
        json['description']
    ;
    userProfiles =
      GroupUserProfileDTO.listFromJson(json['user_profiles'])
;
    organisation =
        json['organisation']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'description': description,
      'user_profiles': userProfiles,
      'organisation': organisation
     };
  }

  static List<InfrastructureTeamDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<InfrastructureTeamDTO>() : json.map((value) => new InfrastructureTeamDTO.fromJson(value)).toList();
  }

  static Map<String, InfrastructureTeamDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InfrastructureTeamDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InfrastructureTeamDTO.fromJson(value));
    }
    return map;
  }
}

