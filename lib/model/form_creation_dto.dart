part of swagger.api;

class FormCreationDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String offset = null;
  

  List<String> sectionUris = [];
  

  List<String> formChildrenCodes = [];
  

  List<String> formParentsCodes = [];
  

  String type = null;
  
/* code lot of the form */
  String codeLot = null;
  
/* timestamp */
  String createdDate = null;
  
/* address of the commit */
  String commitAddress = null;
  
/* boolean */
  bool isRoot = null;
  
  FormCreationDTO();

  @override
  String toString() {
    return 'FormCreationDTO[offset=$offset, sectionUris=$sectionUris, formChildrenCodes=$formChildrenCodes, formParentsCodes=$formParentsCodes, type=$type, codeLot=$codeLot, createdDate=$createdDate, commitAddress=$commitAddress, isRoot=$isRoot, ]';
  }

  FormCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    offset = json['offset'];
    sectionUris = (json['section_uris'] as List).map((item) => item as String).toList();
    formChildrenCodes = (json['form_children_codes'] as List).map((item) => item as String).toList();
    formParentsCodes = (json['form_parents_codes'] as List).map((item) => item as String).toList();
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
    isRoot = json['is_root'];
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'section_uris': sectionUris,
      'form_children_codes': formChildrenCodes,
      'form_parents_codes': formParentsCodes,
      'type': type,
      'code_lot': codeLot,
      'created_date': createdDate,
      'commit_address': commitAddress,
      'is_root': isRoot
     };
  }

  static List<FormCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormCreationDTO>() : json.map((value) => new FormCreationDTO.fromJson(value)).toList();
  }

  static Map<String, FormCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormCreationDTO.fromJson(value));
    }
    return map;
  }

}

