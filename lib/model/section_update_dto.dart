part of swagger.api;

class SectionUpdateDTO {
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
  
  SectionUpdateDTO();

  @override
  String toString() {
    return 'SectionUpdateDTO[timezone=$timezone, uri=$uri, createdDate=$createdDate, type=$type, sectionData=$sectionData, commitAddress=$commitAddress, updatedDate=$updatedDate, ]';
  }

  SectionUpdateDTO.fromJson(Map<String, dynamic> json) {
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

  static List<SectionUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<SectionUpdateDTO>() : json.map((value) => new SectionUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, SectionUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SectionUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SectionUpdateDTO.fromJson(value));
    }
    return map;
  }

}

