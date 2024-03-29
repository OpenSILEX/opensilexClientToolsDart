part of swagger.api;

class FormGetDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String offset = null;
  
/* URI of the form being updated */
  String uri = null;
  

  String creator = null;
  

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
  
/* boolean */
  bool suivieDensityOngoing = null;
  
/* boolean */
  bool suivieDensityFinished = null;
  
/* address of the commit */
  String commitAddress = null;
  
/* address of parents commit */
  String parentsCommitAddress = null;
  
/* address of children commit */
  String childrenCommitAddress = null;
  
/* timestamp */
  String updatedDate = null;
  

  String cuveName = null;
  

  List<DataGetDTO> suivieData = [];
  

  String mustUri = null;
  
/* boolean */
  bool isRoot = null;
  
  FormGetDTO();

  @override
  String toString() {
    return 'FormGetDTO[offset=$offset, uri=$uri, creator=$creator, sectionUris=$sectionUris, formChildrenCodes=$formChildrenCodes, formParentsCodes=$formParentsCodes, startingSectionUri=$startingSectionUri, endingSectionUri=$endingSectionUri, type=$type, codeLot=$codeLot, createdDate=$createdDate, suivieDensityOngoing=$suivieDensityOngoing, suivieDensityFinished=$suivieDensityFinished, commitAddress=$commitAddress, parentsCommitAddress=$parentsCommitAddress, childrenCommitAddress=$childrenCommitAddress, updatedDate=$updatedDate, cuveName=$cuveName, suivieData=$suivieData, mustUri=$mustUri, isRoot=$isRoot, ]';
  }

  FormGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    offset =
        
            json['offset']
    ;
    uri =
        
            json['uri']
    ;
    creator =
        
            json['creator']
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
    suivieDensityOngoing =
        
            json['suivie_density_ongoing']
    ;
    suivieDensityFinished =
        
            json['suivie_density_finished']
    ;
    commitAddress =
        
            json['commit_address']
    ;
    parentsCommitAddress =
        
            json['parents_commit_address']
    ;
    childrenCommitAddress =
        
            json['children_commit_address']
    ;
    updatedDate =
        
            json['updated_date']
    ;
    cuveName =
        
            json['cuveName']
    ;
    suivieData =
      DataGetDTO.listFromJson((json['suivie_data'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    mustUri =
        
            json['must_uri']
    ;
    isRoot =
        
            json['is_root']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
      'uri': uri,
      'creator': creator,
      'section_uris': sectionUris,
      'form_children_codes': formChildrenCodes,
      'form_parents_codes': formParentsCodes,
      'starting_section_uri': startingSectionUri,
      'ending_section_uri': endingSectionUri,
      'type': type,
      'code_lot': codeLot,
      'created_date': createdDate,
      'suivie_density_ongoing': suivieDensityOngoing,
      'suivie_density_finished': suivieDensityFinished,
      'commit_address': commitAddress,
      'parents_commit_address': parentsCommitAddress,
      'children_commit_address': childrenCommitAddress,
      'updated_date': updatedDate,
      'cuveName': cuveName,
      'suivie_data': suivieData,
      'must_uri': mustUri,
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

