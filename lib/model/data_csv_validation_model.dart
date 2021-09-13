part of swagger.api;

class DataCSVValidationModel {
  
  List<String> missingHeaders = [];
  

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
  

  Map<String, List<CSVCell>> duplicatedDataErrors = {};
  

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
    return 'DataCSVValidationModel[missingHeaders=$missingHeaders, invalidHeaderURIs=$invalidHeaderURIs, datatypeErrors=$datatypeErrors, uriNotFoundErrors=$uriNotFoundErrors, invalidURIErrors=$invalidURIErrors, missingRequiredValueErrors=$missingRequiredValueErrors, invalidValueErrors=$invalidValueErrors, alreadyExistingURIErrors=$alreadyExistingURIErrors, duplicateURIErrors=$duplicateURIErrors, invalidObjectErrors=$invalidObjectErrors, invalidDateErrors=$invalidDateErrors, invalidDataTypeErrors=$invalidDataTypeErrors, duplicatedDataErrors=$duplicatedDataErrors, headers=$headers, headersLabels=$headersLabels, nbLinesImported=$nbLinesImported, nbLinesToImport=$nbLinesToImport, validationStep=$validationStep, insertionStep=$insertionStep, validCSV=$validCSV, tooLargeDataset=$tooLargeDataset, errorMessage=$errorMessage, ]';
  }

  DataCSVValidationModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    missingHeaders =
        (json['missingHeaders'] as List).map((item) => item as String).toList()
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
    invalidObjectErrors =
      
 
      jsonDecode(json['invalidObjectErrors'].toString())
 
      
;
    invalidDateErrors =
      
 
      jsonDecode(json['invalidDateErrors'].toString())
 
      
;
    invalidDataTypeErrors =
      
 
      jsonDecode(json['invalidDataTypeErrors'].toString())
 
      
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
      'duplicatedDataErrors': duplicatedDataErrors,
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
