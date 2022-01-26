part of swagger.api;

class GroupDTO {
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
  
  GroupDTO();

  @override
  String toString() {
    return 'GroupDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, description=$description, userProfiles=$userProfiles, ]';
  }

  GroupDTO.fromJson(Map<String, dynamic> json) {
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

  static List<GroupDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupDTO>() : json.map((value) => new GroupDTO.fromJson(value)).toList();
  }

  static Map<String, GroupDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupDTO.fromJson(value));
    }
    return map;
  }

}

