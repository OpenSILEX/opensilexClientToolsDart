part of swagger.api;

class SectionCreationDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* timestamp */
  String createdDate = null;
  

  List<Map<String, Object>> sectionData = [];
  
/* address of the commit */
  String commitAddress = null;
  
/* name of the section */
  String name = null;
  
  SectionCreationDTO();

  @override
  String toString() {
    return 'SectionCreationDTO[timezone=$timezone, createdDate=$createdDate, sectionData=$sectionData, commitAddress=$commitAddress, name=$name, ]';
  }

  SectionCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    timezone =
        json['timezone']
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
      'created_date': createdDate,
      'section_data': sectionData,
      'commit_address': commitAddress,
      'name': name
     };
  }

  static List<SectionCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<SectionCreationDTO>() : json.map((value) => new SectionCreationDTO.fromJson(value)).toList();
  }

  static Map<String, SectionCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SectionCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SectionCreationDTO.fromJson(value));
    }
    return map;
  }
}

