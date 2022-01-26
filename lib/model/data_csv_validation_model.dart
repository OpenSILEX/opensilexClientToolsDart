part of swagger.api;

class DataCSVValidationModel {
  
  List<String> missingHeaders = [];
  

  List<int> emptyHeaders = [];
  

  Map<String, String> invalidHeaderURIs = {};
  

  Map<String, List<CSVDatatypeError>> datatypeErrors = {};
  

  Map<String, List<CSVURINotFoundError>> uriNotFoundErrors = {};
  

  Map<String, List<CSVCell>> invalidURIErrors = {};
  

  Map<String, List<CSVCell>> missingRequiredValueErrors = {};
  

  Map<String, List<CSVCell>> invalidValueErrors = {};
  

  Map<String, CSVCell> alreadyExistingURIErrors = {};
  

  Map<String, CSVDuplicateURIError> duplicateURIErrors = {};
  

  Map<String, List<CSVCell>> invalidObjectErrors = {};
  

  Map<String, List<CSVCell>> invalidDateErrors = {};
  

  Map<String, List<CSVCell>> invalidDataTypeErrors = {};
  

  Map<String, List<CSVCell>> invalidExperimentErrors = {};
  

  Map<String, List<CSVCell>> invalidDeviceErrors = {};
  

  Map<String, List<CSVCell>> duplicatedDataErrors = {};
  

  Map<String, List<CSVCell>> duplicatedObjectErrors = {};
  

  Map<String, List<CSVCell>> duplicatedExperimentErrors = {};
  

  Map<String, List<CSVCell>> duplicatedDeviceErrors = {};
  

  List<String> headers = [];
  

  List<String> headersLabels = [];
  

  int nbLinesImported = null;
  

  int nbLinesToImport = null;
  

  bool validationStep = null;
  

  bool insertionStep = null;
  

  bool validCSV = null;
  

  bool tooLargeDataset = null;
  

  String errorMessage = null;
  
  DataCSVValidationModel();

  @override
  String toString() {
    return 'DataCSVValidationModel[missingHeaders=$missingHeaders, emptyHeaders=$emptyHeaders, invalidHeaderURIs=$invalidHeaderURIs, datatypeErrors=$datatypeErrors, uriNotFoundErrors=$uriNotFoundErrors, invalidURIErrors=$invalidURIErrors, missingRequiredValueErrors=$missingRequiredValueErrors, invalidValueErrors=$invalidValueErrors, alreadyExistingURIErrors=$alreadyExistingURIErrors, duplicateURIErrors=$duplicateURIErrors, invalidObjectErrors=$invalidObjectErrors, invalidDateErrors=$invalidDateErrors, invalidDataTypeErrors=$invalidDataTypeErrors, invalidExperimentErrors=$invalidExperimentErrors, invalidDeviceErrors=$invalidDeviceErrors, duplicatedDataErrors=$duplicatedDataErrors, duplicatedObjectErrors=$duplicatedObjectErrors, duplicatedExperimentErrors=$duplicatedExperimentErrors, duplicatedDeviceErrors=$duplicatedDeviceErrors, headers=$headers, headersLabels=$headersLabels, nbLinesImported=$nbLinesImported, nbLinesToImport=$nbLinesToImport, validationStep=$validationStep, insertionStep=$insertionStep, validCSV=$validCSV, tooLargeDataset=$tooLargeDataset, errorMessage=$errorMessage, ]';
  }

  DataCSVValidationModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    missingHeaders =
        (json['missingHeaders'] as List).map((item) => item as String).toList()
    ;
    emptyHeaders =
        (json['emptyHeaders'] as List).map((item) => item as int).toList()
    ;
    invalidHeaderURIs =
        (json['invalidHeaderURIs'] as Map).map((key, value) => MapEntry(key as dynamic, value as dynamic))
    ;
    datatypeErrors =
      
 
       ((json['datatypeErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    uriNotFoundErrors =
      
 
       ((json['uriNotFoundErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    invalidURIErrors =
      
 
       ((json['invalidURIErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    missingRequiredValueErrors =
      
 
       ((json['missingRequiredValueErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    invalidValueErrors =
      
 
       ((json['invalidValueErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    alreadyExistingURIErrors =
      
 
      CSVCell.mapFromJson((json['alreadyExistingURIErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    duplicateURIErrors =
      
 
      CSVDuplicateURIError.mapFromJson((json['duplicateURIErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    invalidObjectErrors =
      
 
       ((json['invalidObjectErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    invalidDateErrors =
      
 
       ((json['invalidDateErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    invalidDataTypeErrors =
      
 
       ((json['invalidDataTypeErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    invalidExperimentErrors =
      
 
       ((json['invalidExperimentErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    invalidDeviceErrors =
      
 
       ((json['invalidDeviceErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    duplicatedDataErrors =
      
 
       ((json['duplicatedDataErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    duplicatedObjectErrors =
      
 
       ((json['duplicatedObjectErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    duplicatedExperimentErrors =
      
 
       ((json['duplicatedExperimentErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    duplicatedDeviceErrors =
      
 
       ((json['duplicatedDeviceErrors'] as Map).map((key, value) => MapEntry(key as dynamic, value)))
 
      
;
    headers =
        (json['headers'] as List).map((item) => item as String).toList()
    ;
    headersLabels =
        (json['headersLabels'] as List).map((item) => item as String).toList()
    ;
    nbLinesImported =
        
            json['nbLinesImported']
    ;
    nbLinesToImport =
        
            json['nbLinesToImport']
    ;
    validationStep =
        
            json['validationStep']
    ;
    insertionStep =
        
            json['insertionStep']
    ;
    validCSV =
        
            json['validCSV']
    ;
    tooLargeDataset =
        
            json['tooLargeDataset']
    ;
    errorMessage =
        
            json['errorMessage']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'missingHeaders': missingHeaders,
      'emptyHeaders': emptyHeaders,
      'invalidHeaderURIs': invalidHeaderURIs,
      'datatypeErrors': datatypeErrors,
      'uriNotFoundErrors': uriNotFoundErrors,
      'invalidURIErrors': invalidURIErrors,
      'missingRequiredValueErrors': missingRequiredValueErrors,
      'invalidValueErrors': invalidValueErrors,
      'alreadyExistingURIErrors': alreadyExistingURIErrors,
      'duplicateURIErrors': duplicateURIErrors,
      'invalidObjectErrors': invalidObjectErrors,
      'invalidDateErrors': invalidDateErrors,
      'invalidDataTypeErrors': invalidDataTypeErrors,
      'invalidExperimentErrors': invalidExperimentErrors,
      'invalidDeviceErrors': invalidDeviceErrors,
      'duplicatedDataErrors': duplicatedDataErrors,
      'duplicatedObjectErrors': duplicatedObjectErrors,
      'duplicatedExperimentErrors': duplicatedExperimentErrors,
      'duplicatedDeviceErrors': duplicatedDeviceErrors,
      'headers': headers,
      'headersLabels': headersLabels,
      'nbLinesImported': nbLinesImported,
      'nbLinesToImport': nbLinesToImport,
      'validationStep': validationStep,
      'insertionStep': insertionStep,
      'validCSV': validCSV,
      'tooLargeDataset': tooLargeDataset,
      'errorMessage': errorMessage
     };
  }

  static List<DataCSVValidationModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataCSVValidationModel>() : json.map((value) => new DataCSVValidationModel.fromJson(value)).toList();
  }

  static Map<String, DataCSVValidationModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataCSVValidationModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataCSVValidationModel.fromJson(value));
    }
    return map;
  }

}

