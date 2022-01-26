part of swagger.api;

class GroupUpdateDTO {
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
  
  GroupUpdateDTO();

  @override
  String toString() {
    return 'GroupUpdateDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, description=$description, userProfiles=$userProfiles, ]';
  }

  GroupUpdateDTO.fromJson(Map<String, dynamic> json) {
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

  static List<GroupUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupUpdateDTO>() : json.map((value) => new GroupUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, GroupUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupUpdateDTO.fromJson(value));
    }
    return map;
  }

}

