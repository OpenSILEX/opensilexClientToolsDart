part of swagger.api;

class FormCreationDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String offset = null;
  

  List<String> sectionUris = [];
  

  List<String> formChildrenUris = [];
  

  List<String> formParentsUris = [];
  

  List<String> emptyChildrenUris = [];
  

  String type = null;
  
/* code lot of the form */
  String codeLot = null;
  
/* timestamp */
  String createdDate = null;
  
/* boolean */
  bool isRoot = null;
  
  FormCreationDTO();

  @override
  String toString() {
    return 'FormCreationDTO[offset=$offset, sectionUris=$sectionUris, formChildrenUris=$formChildrenUris, formParentsUris=$formParentsUris, emptyChildrenUris=$emptyChildrenUris, type=$type, codeLot=$codeLot, createdDate=$createdDate, isRoot=$isRoot, ]';
  }

  FormCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    offset =
        json['offset']
    ;
    sectionUris =
        (json['section_uris'] as List).map((item) => item as String).toList()
    ;
    formChildrenUris =
        (json['form_children_uris'] as List).map((item) => item as String).toList()
    ;
    formParentsUris =
        (json['form_parents_uris'] as List).map((item) => item as String).toList()
    ;
    emptyChildrenUris =
        (json['empty_children_uris'] as List).map((item) => item as String).toList()
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
    isRoot =
        json['is_root']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'section_uris': sectionUris,
      'form_children_uris': formChildrenUris,
      'form_parents_uris': formParentsUris,
      'empty_children_uris': emptyChildrenUris,
      'type': type,
      'code_lot': codeLot,
      'created_date': createdDate,
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

