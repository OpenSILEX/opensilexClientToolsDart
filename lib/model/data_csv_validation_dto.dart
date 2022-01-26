part of swagger.api;

class DataCSVValidationDTO {
  
  CSVValidationModel errors = null;
  

  DataCSVValidationModel dataErrors = null;
  

  int sizeMax = null;
  

  String validationToken = null;
  

  int nbLinesImported = null;
  
  DataCSVValidationDTO();

  @override
  String toString() {
    return 'DataCSVValidationDTO[errors=$errors, dataErrors=$dataErrors, sizeMax=$sizeMax, validationToken=$validationToken, nbLinesImported=$nbLinesImported, ]';
  }

  DataCSVValidationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    errors =
      
 
      
 
      new CSVValidationModel.fromJson(json['errors'])
;
    dataErrors =
      
 
      
 
      new DataCSVValidationModel.fromJson(json['dataErrors'])
;
    sizeMax =
        
            json['sizeMax']
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
      'dataErrors': dataErrors,
      'sizeMax': sizeMax,
      'validation_token': validationToken,
      'nb_lines_imported': nbLinesImported
     };
  }

  static List<DataCSVValidationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataCSVValidationDTO>() : json.map((value) => new DataCSVValidationDTO.fromJson(value)).toList();
  }

  static Map<String, DataCSVValidationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataCSVValidationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataCSVValidationDTO.fromJson(value));
    }
    return map;
  }

}

