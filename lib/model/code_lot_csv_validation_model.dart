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
  
  CodeLotCSVValidationModel();

  @override
  String toString() {
    return 'CodeLotCSVValidationModel[missingHeaders=$missingHeaders, emptyHeaders=$emptyHeaders, invalidHeaderURIs=$invalidHeaderURIs, datatypeErrors=$datatypeErrors, uriNotFoundErrors=$uriNotFoundErrors, invalidURIErrors=$invalidURIErrors, missingRequiredValueErrors=$missingRequiredValueErrors, invalidValueErrors=$invalidValueErrors, alreadyExistingURIErrors=$alreadyExistingURIErrors, duplicateURIErrors=$duplicateURIErrors, noParentErrors=$noParentErrors, boucleErrors=$boucleErrors, linkedSibblingErrors=$linkedSibblingErrors, shortCircuitErrors=$shortCircuitErrors, duplicatedDataErrors=$duplicatedDataErrors, headers=$headers, headersLabels=$headersLabels, nbLinesImported=$nbLinesImported, nbLinesToImport=$nbLinesToImport, validationStep=$validationStep, tooLargeDataset=$tooLargeDataset, insertionStep=$insertionStep, validCSV=$validCSV, errorMessage=$errorMessage, ]';
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
        json['invalidHeaderURIs']
    ;
    datatypeErrors =
      
 
      jsonDecode(json['datatypeErrors'].toString())
 
      
;
    uriNotFoundErrors =
      
 
      jsonDecode(json['uriNotFoundErrors'].toString())
 
      
;
    invalidURIErrors =
      
 
      jsonDecode(json['invalidURIErrors'].toString())
 
      
;
    missingRequiredValueErrors =
      
 
      jsonDecode(json['missingRequiredValueErrors'].toString())
 
      
;
    invalidValueErrors =
      
 
      jsonDecode(json['invalidValueErrors'].toString())
 
      
;
    alreadyExistingURIErrors =
      
 
      jsonDecode(json['alreadyExistingURIErrors'].toString())
 
      
;
    duplicateURIErrors =
      
 
      jsonDecode(json['duplicateURIErrors'].toString())
 
      
;
    noParentErrors =
      
 
      jsonDecode(json['noParentErrors'].toString())
 
      
;
    boucleErrors =
      
 
      jsonDecode(json['boucleErrors'].toString())
 
      
;
    linkedSibblingErrors =
      
 
      jsonDecode(json['linkedSibblingErrors'].toString())
 
      
;
    shortCircuitErrors =
      
 
      jsonDecode(json['shortCircuitErrors'].toString())
 
      
;
    duplicatedDataErrors =
      
 
      jsonDecode(json['duplicatedDataErrors'].toString())
 
      
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
      'errorMessage': errorMessage
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

