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

