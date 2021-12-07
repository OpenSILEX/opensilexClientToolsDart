part of swagger.api;

class CSVValidationModel {
  
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
  
  CSVValidationModel();

  @override
  String toString() {
    return 'CSVValidationModel[missingHeaders=$missingHeaders, emptyHeaders=$emptyHeaders, invalidHeaderURIs=$invalidHeaderURIs, datatypeErrors=$datatypeErrors, uriNotFoundErrors=$uriNotFoundErrors, invalidURIErrors=$invalidURIErrors, missingRequiredValueErrors=$missingRequiredValueErrors, invalidValueErrors=$invalidValueErrors, alreadyExistingURIErrors=$alreadyExistingURIErrors, duplicateURIErrors=$duplicateURIErrors, ]';
  }

  CSVValidationModel.fromJson(Map<String, dynamic> json) {
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
      'duplicateURIErrors': duplicateURIErrors
     };
  }

  static List<CSVValidationModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<CSVValidationModel>() : json.map((value) => new CSVValidationModel.fromJson(value)).toList();
  }

  static Map<String, CSVValidationModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CSVValidationModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CSVValidationModel.fromJson(value));
    }
    return map;
  }
}

