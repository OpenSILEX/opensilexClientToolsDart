part of swagger.api;

class GroupUserProfileDTO {
  /* Group URI */
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  
/* User associated profile URI */
  String profileUri = null;
  
/* User associated profile name */
  String profileName = null;
  
/* User URI */
  String userUri = null;
  
/* User name */
  String userName = null;
  
  GroupUserProfileDTO();

  @override
  String toString() {
    return 'GroupUserProfileDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, profileUri=$profileUri, profileName=$profileName, userUri=$userUri, userName=$userName, ]';
  }

  GroupUserProfileDTO.fromJson(Map<String, dynamic> json) {
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
    profileUri =
        
            json['profile_uri']
    ;
    profileName =
        
            json['profile_name']
    ;
    userUri =
        
            json['user_uri']
    ;
    userName =
        
            json['user_name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'profile_uri': profileUri,
      'profile_name': profileName,
      'user_uri': userUri,
      'user_name': userName
     };
  }

  static List<GroupUserProfileDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<GroupUserProfileDTO>() : json.map((value) => new GroupUserProfileDTO.fromJson(value)).toList();
  }

  static Map<String, GroupUserProfileDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GroupUserProfileDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GroupUserProfileDTO.fromJson(value));
    }
    return map;
  }

}

