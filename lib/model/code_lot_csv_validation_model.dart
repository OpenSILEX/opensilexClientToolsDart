part of swagger.api;

class CodeLotCSVValidationModel {
  
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
  

  Map<String, List<CSVCell>> noParentErrors = {};
  

  Map<String, List<CSVCell>> boucleErrors = {};
  

  Map<String, List<CSVCell>> linkedSibblingErrors = {};
  

  Map<String, List<CSVCell>> shortCircuitErrors = {};
  

  Map<String, List<CSVCell>> duplicatedDataErrors = {};
  

  List<String> headers = [];
  

  List<String> headersLabels = [];
  

  int nbLinesImported = null;
  

  int nbLinesToImport = null;
  

  bool validationStep = null;
  

  bool tooLargeDataset = null;
  

  bool insertionStep = null;
  

  bool validCSV = null;
  

  String errorMessage = null;
  

  Map<String, List<CSVCell>> typeErrors = {};
  
  CodeLotCSVValidationModel();

  @override
  String toString() {
    return 'CodeLotCSVValidationModel[missingHeaders=$missingHeaders, emptyHeaders=$emptyHeaders, invalidHeaderURIs=$invalidHeaderURIs, datatypeErrors=$datatypeErrors, uriNotFoundErrors=$uriNotFoundErrors, invalidURIErrors=$invalidURIErrors, missingRequiredValueErrors=$missingRequiredValueErrors, invalidValueErrors=$invalidValueErrors, alreadyExistingURIErrors=$alreadyExistingURIErrors, duplicateURIErrors=$duplicateURIErrors, noParentErrors=$noParentErrors, boucleErrors=$boucleErrors, linkedSibblingErrors=$linkedSibblingErrors, shortCircuitErrors=$shortCircuitErrors, duplicatedDataErrors=$duplicatedDataErrors, headers=$headers, headersLabels=$headersLabels, nbLinesImported=$nbLinesImported, nbLinesToImport=$nbLinesToImport, validationStep=$validationStep, tooLargeDataset=$tooLargeDataset, insertionStep=$insertionStep, validCSV=$validCSV, errorMessage=$errorMessage, typeErrors=$typeErrors, ]';
  }

  CodeLotCSVValidationModel.fromJson(Map<String, dynamic> json) {
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
      
 
          (json['datatypeErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVDatatypeError.listFromJson(value as List<dynamic>)))
          
 
      
;
    uriNotFoundErrors =
      
 
          (json['uriNotFoundErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVURINotFoundError.listFromJson(value as List<dynamic>)))
          
 
      
;
    invalidURIErrors =
      
 
          (json['invalidURIErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVCell.listFromJson(value as List<dynamic>)))
          
 
      
;
    missingRequiredValueErrors =
      
 
          (json['missingRequiredValueErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVCell.listFromJson(value as List<dynamic>)))
          
 
      
;
    invalidValueErrors =
      
 
          (json['invalidValueErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVCell.listFromJson(value as List<dynamic>)))
          
 
      
;
    alreadyExistingURIErrors =
      
 
          
          CSVCell.mapFromJson((json['alreadyExistingURIErrors'] as Map).map((key, value) => MapEntry(key as dynamic, (value as Map<String, dynamic>))))
 
      
;
    duplicateURIErrors =
      
 
          
          CSVDuplicateURIError.mapFromJson((json['duplicateURIErrors'] as Map).map((key, value) => MapEntry(key as dynamic, (value as Map<String, dynamic>))))
 
      
;
    noParentErrors =
      
 
          (json['noParentErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVCell.listFromJson(value as List<dynamic>)))
          
 
      
;
    boucleErrors =
      
 
          (json['boucleErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVCell.listFromJson(value as List<dynamic>)))
          
 
      
;
    linkedSibblingErrors =
      
 
          (json['linkedSibblingErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVCell.listFromJson(value as List<dynamic>)))
          
 
      
;
    shortCircuitErrors =
      
 
          (json['shortCircuitErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVCell.listFromJson(value as List<dynamic>)))
          
 
      
;
    duplicatedDataErrors =
      
 
          (json['duplicatedDataErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVCell.listFromJson(value as List<dynamic>)))
          
 
      
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
    tooLargeDataset =
        
            json['tooLargeDataset']
    ;
    insertionStep =
        
            json['insertionStep']
    ;
    validCSV =
        
            json['validCSV']
    ;
    errorMessage =
        
            json['errorMessage']
    ;
    typeErrors =
      
 
          (json['typeErrors'] as Map).map((key, value) => MapEntry(key as dynamic, CSVCell.listFromJson(value as List<dynamic>)))
          
 
      
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
      'noParentErrors': noParentErrors,
      'boucleErrors': boucleErrors,
      'linkedSibblingErrors': linkedSibblingErrors,
      'shortCircuitErrors': shortCircuitErrors,
      'duplicatedDataErrors': duplicatedDataErrors,
      'headers': headers,
      'headersLabels': headersLabels,
      'nbLinesImported': nbLinesImported,
      'nbLinesToImport': nbLinesToImport,
      'validationStep': validationStep,
      'tooLargeDataset': tooLargeDataset,
      'insertionStep': insertionStep,
      'validCSV': validCSV,
      'errorMessage': errorMessage,
      'typeErrors': typeErrors
     };
  }

  static List<CodeLotCSVValidationModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<CodeLotCSVValidationModel>() : json.map((value) => new CodeLotCSVValidationModel.fromJson(value)).toList();
  }

  static Map<String, CodeLotCSVValidationModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CodeLotCSVValidationModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CodeLotCSVValidationModel.fromJson(value));
    }
    return map;
  }

}

