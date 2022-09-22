part of swagger.api;


class FormWithSectionsCreationDTO {
  /* to specify if the offset is not in the date and if the timezone is different from the default one */
  String offset = null;
  

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
  
/* boolean */
  bool isRoot = null;
  
  FormWithSectionsCreationDTO();

  @override
  String toString() {
    return 'FormWithSectionsCreationDTO[offset=$offset, sectionDtos=$sectionDtos, formChildrenCodes=$formChildrenCodes, formParentsCodes=$formParentsCodes, startingSectionUri=$startingSectionUri, endingSectionUri=$endingSectionUri, type=$type, codeLot=$codeLot, createdDate=$createdDate, suivieDensityOngoing=$suivieDensityOngoing, suivieDensityFinished=$suivieDensityFinished, commitAddress=$commitAddress, parentsCommitAddress=$parentsCommitAddress, childrenCommitAddress=$childrenCommitAddress, isRoot=$isRoot, ]';
  }

  FormWithSectionsCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    offset =
        
            json['offset']
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
    isRoot =
        
            json['is_root']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'offset': offset,
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
      'is_root': isRoot
     };
  }

  static List<FormWithSectionsCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormWithSectionsCreationDTO>() : json.map((value) => new FormWithSectionsCreationDTO.fromJson(value)).toList();
  }

  static Map<String, FormWithSectionsCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormWithSectionsCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormWithSectionsCreationDTO.fromJson(value));
    }
    return map;
  }

}

