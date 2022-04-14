part of swagger.api;

class SectionGetDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* URI of the form being updated */
  String uri = null;
  
/* timestamp */
  String createdDate = null;
  

  List<Map<String, Object>> sectionData = [];
  
/* address of the commit */
  String commitAddress = null;

  String type = null;
  
/* timestamp */
  String updatedDate = null;
  
  SectionGetDTO();

  @override
  String toString() {
    return 'SectionGetDTO[timezone=$timezone, uri=$uri, createdDate=$createdDate, type=$type, sectionData=$sectionData, commitAddress=$commitAddress, updatedDate=$updatedDate, ]';
  }

  SectionGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timezone =
        
            json['timezone']
    ;
    uri =
        
            json['uri']
    ;
    type =

    json['type']
    ;
    createdDate =
        
            json['created_date']
    ;
    sectionData =
       ((json['section_data'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    commitAddress =
        
            json['commit_address']
    ;
    updatedDate =
        
            json['updated_date']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'timezone': timezone,
      'uri': uri,
      'created_date': createdDate,
      'section_data': sectionData,
      'commit_address': commitAddress,
      'type': type,
      'updated_date': updatedDate
     };
  }

  static List<SectionGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<SectionGetDTO>() : json.map((value) => new SectionGetDTO.fromJson(value)).toList();
  }

  static Map<String, SectionGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SectionGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SectionGetDTO.fromJson(value));
    }
    return map;
  }

}

