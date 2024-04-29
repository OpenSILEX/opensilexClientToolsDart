part of swagger.api;

class OrcidRecordDTO {
  
  String orcid = null;
  

  String firstName = null;
  

  String lastName = null;
  

  List<String> emails = [];
  

  List<String> organizations = [];
  
  OrcidRecordDTO();

  @override
  String toString() {
    return 'OrcidRecordDTO[orcid=$orcid, firstName=$firstName, lastName=$lastName, emails=$emails, organizations=$organizations, ]';
  }

  OrcidRecordDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    orcid =
        
            json['orcid']
    ;
    firstName =
        
            json['first_name']
    ;
    lastName =
        
            json['last_name']
    ;
    emails =
        (json['emails'] as List).map((item) => item as String).toList()
    ;
    organizations =
        (json['organizations'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'orcid': orcid,
      'first_name': firstName,
      'last_name': lastName,
      'emails': emails,
      'organizations': organizations
     };
  }

  static List<OrcidRecordDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrcidRecordDTO>() : json.map((value) => new OrcidRecordDTO.fromJson(value)).toList();
  }

  static Map<String, OrcidRecordDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrcidRecordDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrcidRecordDTO.fromJson(value));
    }
    return map;
  }

}

