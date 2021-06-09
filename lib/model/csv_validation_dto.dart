part of swagger.api;

class CSVValidationDTO {
  
  CSVValidationModel errors = null;
  

  String validationToken = null;
  

  int nbLinesImported = null;
  
  CSVValidationDTO();

  @override
  String toString() {
    return 'CSVValidationDTO[errors=$errors, validationToken=$validationToken, nbLinesImported=$nbLinesImported, ]';
  }

  CSVValidationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errors =
      
 
      
 
      new CSVValidationModel.fromJson(json['errors'])
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
      'validation_token': validationToken,
      'nb_lines_imported': nbLinesImported
     };
  }

  static List<CSVValidationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<CSVValidationDTO>() : json.map((value) => new CSVValidationDTO.fromJson(value)).toList();
  }

  static Map<String, CSVValidationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CSVValidationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CSVValidationDTO.fromJson(value));
    }
    return map;
  }
}

