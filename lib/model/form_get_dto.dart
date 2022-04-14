part of swagger.api;

class FormGetDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String offset = null;
  
/* URI of the form being updated */
  String uri = null;
  

  List<String> sectionUris = [];
  

  List<String> formChildrenCodes = [];
  

  List<String> formParentsCodes = [];
  

  String startingSectionUri = null;
  

  String endingSectionUri = null;
  

  String type = null;
  
/* code lot of the form */
  String codeLot = null;
  
/* timestamp */
  String createdDate = null;
  
/* address of the commit */
  String commitAddress = null;
  
/* timestamp */
  String updatedDate = null;
  
/* boolean */
  bool isRoot = null;
  
  FormGetDTO();

  @override
  String toString() {
    return 'FormGetDTO[offset=$offset, uri=$uri, sectionUris=$sectionUris, formChildrenCodes=$formChildrenCodes, formParentsCodes=$formParentsCodes, startingSectionUri=$startingSectionUri, endingSectionUri=$endingSectionUri, type=$type, codeLot=$codeLot, createdDate=$createdDate, commitAddress=$commitAddress, updatedDate=$updatedDate, isRoot=$isRoot, ]';
  }

  FormGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    offset =
        
            json['offset']
    ;
    uri =
        
            json['uri']
    ;
    sectionUris =
        (json['section_uris'] as List).map((item) => item as String).toList()
    ;
    formChildrenCodes =
        (json['form_children_codes'] as List).map((item) => item as String).toList()
    ;
    formParentsCodes =
        (json['form_parents_codes'] as List).map((item) => item as String).toList()
    ;
    startingSectionUri =
        
            json['starting_section_uri']
    ;
    endingSectionUri =
        
            json['ending_section_uri']
    ;
    type =
        
            json['type']
    ;
    codeLot =
        
            json['code_lot']
    ;
    createdDate =
        
            json['created_date']
    ;
    commitAddress =
        
            json['commit_address']
    ;
    updatedDate =
        
            json['updated_date']
    ;
    isRoot =
        
            json['is_root']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'uri': uri,
      'section_uris': sectionUris,
      'form_children_codes': formChildrenCodes,
      'form_parents_codes': formParentsCodes,
      'starting_section_uri': startingSectionUri,
      'ending_section_uri': endingSectionUri,
      'type': type,
      'code_lot': codeLot,
      'created_date': createdDate,
      'commit_address': commitAddress,
      'updated_date': updatedDate,
      'is_root': isRoot
     };
  }

  static List<FormGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormGetDTO>() : json.map((value) => new FormGetDTO.fromJson(value)).toList();
  }

  static Map<String, FormGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormGetDTO.fromJson(value));
    }
    return map;
  }

}

