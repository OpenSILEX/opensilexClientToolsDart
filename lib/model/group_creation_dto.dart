part of swagger.api;

class GroupCreationDTO {
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
  
  GroupCreationDTO();

  @override
  String toString() {
    return 'GroupCreationDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, description=$description, userProfiles=$userProfiles, ]';
  }

  GroupCreationDTO.fromJson(Map<String, dynamic> json) {
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
      GroupUserProfileDTO.listFromJson((json['user_profiles'] as List).map((e) => e as Map<String, dynamic>).toList())
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'description': description,
      'user_profiles': userProfiles
     };
  }

  static List<GroupCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupCreationDTO>() : json.map((value) => new GroupCreationDTO.fromJson(value)).toList();
  }

  static Map<String, GroupCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupCreationDTO.fromJson(value));
    }
    return map;
  }

}

