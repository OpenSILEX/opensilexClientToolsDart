part of swagger.api;

class FormUpdateDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String offset = null;
  
/* URI of the form being updated */
  String uri = null;
  

  List<String> sectionUris = [];
  

  List<String> formChildrenUris = [];
  

  List<String> formParentsUris = [];
  

  List<String> emptyChildrenUris = [];
  

  String type = null;
  
/* code lot of the form */
  String codeLot = null;
  
/* timestamp */
  String createdDate = null;
  
/* timestamp */
  String updatedDate = null;
  
/* boolean */
  bool isRoot = null;
  
  FormUpdateDTO();

  @override
  String toString() {
    return 'FormUpdateDTO[offset=$offset, uri=$uri, sectionUris=$sectionUris, formChildrenUris=$formChildrenUris, formParentsUris=$formParentsUris, emptyChildrenUris=$emptyChildrenUris, type=$type, codeLot=$codeLot, createdDate=$createdDate, updatedDate=$updatedDate, isRoot=$isRoot, ]';
  }

  FormUpdateDTO.fromJson(Map<String, dynamic> json) {
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
      'form_children_uris': formChildrenUris,
      'form_parents_uris': formParentsUris,
      'empty_children_uris': emptyChildrenUris,
      'type': type,
      'code_lot': codeLot,
      'created_date': createdDate,
      'updated_date': updatedDate,
      'is_root': isRoot
     };
  }

  static List<FormUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormUpdateDTO>() : json.map((value) => new FormUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, FormUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormUpdateDTO.fromJson(value));
    }
    return map;
  }
}

