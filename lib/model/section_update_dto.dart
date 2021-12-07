part of swagger.api;

class SectionUpdateDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* URI of the form being updated */
  String uri = null;
  
/* timestamp */
  String createdDate = null;
  

  List<Map<String, dynamic>> sectionData = [];
  
/* address of the commit */
  String commitAddress = null;
  
/* name of the section */
  String name = null;
  
  SectionUpdateDTO();

  @override
  String toString() {
    return 'SectionUpdateDTO[timezone=$timezone, uri=$uri, createdDate=$createdDate, sectionData=$sectionData, commitAddress=$commitAddress, name=$name, ]';
  }

  SectionUpdateDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timezone =
        json['timezone']
    ;
    uri =
        json['uri']
    ;
    createdDate =
        json['created_date']
    ;
    sectionData =
      json['section_data'] as List
;
    commitAddress =
        json['commit_address']
    ;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'timezone': timezone,
      'uri': uri,
      'created_date': createdDate,
      'section_data': sectionData,
      'commit_address': commitAddress,
      'name': name
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

