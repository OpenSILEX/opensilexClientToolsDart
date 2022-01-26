part of swagger.api;

class ObservationVariableDTO {
  
  String observationVariableDbId = null;
  

  String observationVariableName = null;
  

  String ontologyReference = null;
  

  List<String> synonyms = [];
  

  List<String> contextOfUse = [];
  

  String growthStage = null;
  

  String status = null;
  

  String xref = null;
  

  String institution = null;
  

  String scientist = null;
  

  String submissionTimesTamp = null;
  

  String language = null;
  

  String crop = null;
  

  Trait trait = null;
  

  Method method = null;
  

  Scale scale = null;
  

  String defaultValue = null;
  

  String documentationURL = null;
  
  ObservationVariableDTO();

  @override
  String toString() {
    return 'ObservationVariableDTO[observationVariableDbId=$observationVariableDbId, observationVariableName=$observationVariableName, ontologyReference=$ontologyReference, synonyms=$synonyms, contextOfUse=$contextOfUse, growthStage=$growthStage, status=$status, xref=$xref, institution=$institution, scientist=$scientist, submissionTimesTamp=$submissionTimesTamp, language=$language, crop=$crop, trait=$trait, method=$method, scale=$scale, defaultValue=$defaultValue, documentationURL=$documentationURL, ]';
  }

  ObservationVariableDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    observationVariableDbId =
        
            json['observationVariableDbId']
    ;
    observationVariableName =
        
            json['observationVariableName']
    ;
    ontologyReference =
        
            json['ontologyReference']
    ;
    synonyms =
        (json['synonyms'] as List).map((item) => item as String).toList()
    ;
    contextOfUse =
        (json['contextOfUse'] as List).map((item) => item as String).toList()
    ;
    growthStage =
        
            json['growthStage']
    ;
    status =
        
            json['status']
    ;
    xref =
        
            json['xref']
    ;
    institution =
        
            json['institution']
    ;
    scientist =
        
            json['scientist']
    ;
    submissionTimesTamp =
        
            json['submissionTimesTamp']
    ;
    language =
        
            json['language']
    ;
    crop =
        
            json['crop']
    ;
    trait =
      
 
      
 
      new Trait.fromJson(json['trait'])
;
    method =
      
 
      
 
      new Method.fromJson(json['method'])
;
    scale =
      
 
      
 
      new Scale.fromJson(json['scale'])
;
    defaultValue =
        
            json['defaultValue']
    ;
    documentationURL =
        
            json['documentationURL']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'observationVariableDbId': observationVariableDbId,
      'observationVariableName': observationVariableName,
      'ontologyReference': ontologyReference,
      'synonyms': synonyms,
      'contextOfUse': contextOfUse,
      'growthStage': growthStage,
      'status': status,
      'xref': xref,
      'institution': institution,
      'scientist': scientist,
      'submissionTimesTamp': submissionTimesTamp,
      'language': language,
      'crop': crop,
      'trait': trait,
      'method': method,
      'scale': scale,
      'defaultValue': defaultValue,
      'documentationURL': documentationURL
     };
  }

  static List<ObservationVariableDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObservationVariableDTO>() : json.map((value) => new ObservationVariableDTO.fromJson(value)).toList();
  }

  static Map<String, ObservationVariableDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObservationVariableDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObservationVariableDTO.fromJson(value));
    }
    return map;
  }

}

