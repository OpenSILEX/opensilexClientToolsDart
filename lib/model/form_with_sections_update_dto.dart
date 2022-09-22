part of swagger.api;

class FormWithSectionsUpdateDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String offset = null;
  
/* URI of the form being updated */
  String uri = null;
  

  List<SectionCreationDTO> sectionDtos = [];
  

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
  

  List<SectionUpdateDTO> sectionUpdateDtos = [];
  

  String parentsDownloadCommit = null;
  

  String childrenDownloadCommit = null;
  

  List<String> sectionUris = [];
  
/* timestamp */
  String updatedDate = null;
  
/* boolean */
  bool isRoot = null;
  
  FormWithSectionsUpdateDTO();

  @override
  String toString() {
    return 'FormWithSectionsUpdateDTO[offset=$offset, uri=$uri, sectionDtos=$sectionDtos, formChildrenCodes=$formChildrenCodes, formParentsCodes=$formParentsCodes, startingSectionUri=$startingSectionUri, endingSectionUri=$endingSectionUri, type=$type, codeLot=$codeLot, createdDate=$createdDate, suivieDensityOngoing=$suivieDensityOngoing, suivieDensityFinished=$suivieDensityFinished, commitAddress=$commitAddress, parentsCommitAddress=$parentsCommitAddress, childrenCommitAddress=$childrenCommitAddress, sectionUpdateDtos=$sectionUpdateDtos, parentsDownloadCommit=$parentsDownloadCommit, childrenDownloadCommit=$childrenDownloadCommit, sectionUris=$sectionUris, updatedDate=$updatedDate, isRoot=$isRoot, ]';
  }

  FormWithSectionsUpdateDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    offset =
        
            json['offset']
    ;
    uri =
        
            json['uri']
    ;
    sectionDtos =
      SectionCreationDTO.listFromJson((json['section_dtos'] as List).map((e) => e as Map<String, dynamic>).toList())
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
    sectionUpdateDtos =
      SectionUpdateDTO.listFromJson((json['section_update_dtos'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    parentsDownloadCommit =
        
            json['parents_download_commit']
    ;
    childrenDownloadCommit =
        
            json['children_download_commit']
    ;
    sectionUris =
        (json['section_uris'] as List).map((item) => item as String).toList()
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
      'section_dtos': sectionDtos,
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
      'section_update_dtos': sectionUpdateDtos,
      'parents_download_commit': parentsDownloadCommit,
      'children_download_commit': childrenDownloadCommit,
      'section_uris': sectionUris,
      'updated_date': updatedDate,
      'is_root': isRoot
     };
  }

  static List<FormWithSectionsUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormWithSectionsUpdateDTO>() : json.map((value) => new FormWithSectionsUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, FormWithSectionsUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormWithSectionsUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormWithSectionsUpdateDTO.fromJson(value));
    }
    return map;
  }

}

