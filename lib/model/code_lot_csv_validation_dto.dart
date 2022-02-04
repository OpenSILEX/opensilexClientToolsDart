part of swagger.api;

class CodeLotCSVValidationDTO {
  
  CSVValidationModel errors = null;
  

  CodeLotCSVValidationModel codelotErrors = null;
  

  String validationToken = null;
  

  int nbLinesImported = null;
  
  CodeLotCSVValidationDTO();

  @override
  String toString() {
    return 'CodeLotCSVValidationDTO[errors=$errors, codelotErrors=$codelotErrors, validationToken=$validationToken, nbLinesImported=$nbLinesImported, ]';
  }

  CodeLotCSVValidationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errors =
      
 
 
      new CSVValidationModel.fromJson(json['errors'])
;
    codelotErrors =
      
 
 
      new CodeLotCSVValidationModel.fromJson(json['codelotErrors'])
;
    validationToken =
        
            json['validation_token']
    ;
    nbLinesImported =
        
            json['nb_lines_imported']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'errors': errors,
      'codelotErrors': codelotErrors,
      'validation_token': validationToken,
      'nb_lines_imported': nbLinesImported
     };
  }

  static List<CodeLotCSVValidationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeLotCSVValidationDTO>() : json.map((value) => new CodeLotCSVValidationDTO.fromJson(value)).toList();
  }

  static Map<String, CodeLotCSVValidationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeLotCSVValidationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeLotCSVValidationDTO.fromJson(value));
    }
    return map;
  }

}

