part of swagger.api;

class SectionCreationDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* timestamp */
  String createdDate = null;
  

  List<Map<String, Object>> sectionData = [];
  
/* address of the commit */
  String commitAddress = null;
  

  List<String> obligatoireFields = [];
  

  List<String> inputsUris = [];
  

  List<String> outputsUris = [];
  
/* boolean */
  bool hasEnded = null;
  
/* boolean */
  bool hasBegun = null;
  

  String type = null;
  
  SectionCreationDTO();

  @override
  String toString() {
    return 'SectionCreationDTO[timezone=$timezone, createdDate=$createdDate, sectionData=$sectionData, commitAddress=$commitAddress, obligatoireFields=$obligatoireFields, inputsUris=$inputsUris, outputsUris=$outputsUris, hasEnded=$hasEnded, hasBegun=$hasBegun, type=$type, ]';
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
       ((json['section_data'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    commitAddress =
        
            json['commit_address']
    ;
    obligatoireFields =
        (json['obligatoire_fields'] as List).map((item) => item as String).toList()
    ;
    inputsUris =
        (json['inputs_uris'] as List).map((item) => item as String).toList()
    ;
    outputsUris =
        (json['outputs_uris'] as List).map((item) => item as String).toList()
    ;
    hasEnded =
        
            json['has_ended']
    ;
    hasBegun =
        
            json['has_begun']
    ;
    type =
        
            json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'timezone': timezone,
      'created_date': createdDate,
      'section_data': sectionData,
      'commit_address': commitAddress,
      'obligatoire_fields': obligatoireFields,
      'inputs_uris': inputsUris,
      'outputs_uris': outputsUris,
      'has_ended': hasEnded,
      'has_begun': hasBegun,
      'type': type
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

