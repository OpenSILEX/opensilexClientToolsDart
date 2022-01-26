part of swagger.api;

class Scale {
  
  String dataType = null;
  

  String decimalPlaces = null;
  

  String name = null;
  

  OntologyReference ontologyReference = null;
  

  String scaleDbId = null;
  

  String scaleName = null;
  

  String validValues = null;
  

  String xref = null;
  
  Scale();

  @override
  String toString() {
    return 'Scale[dataType=$dataType, decimalPlaces=$decimalPlaces, name=$name, ontologyReference=$ontologyReference, scaleDbId=$scaleDbId, scaleName=$scaleName, validValues=$validValues, xref=$xref, ]';
  }

  Scale.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dataType =
        
            json['dataType']
    ;
    decimalPlaces =
        
            json['decimalPlaces']
    ;
    name =
        
            json['name']
    ;
    ontologyReference =
      
 
      
 
      new OntologyReference.fromJson(json['ontologyReference'])
;
    scaleDbId =
        
            json['scaleDbId']
    ;
    scaleName =
        
            json['scaleName']
    ;
    validValues =
        
            json['validValues']
    ;
    xref =
        
            json['xref']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'dataType': dataType,
      'decimalPlaces': decimalPlaces,
      'name': name,
      'ontologyReference': ontologyReference,
      'scaleDbId': scaleDbId,
      'scaleName': scaleName,
      'validValues': validValues,
      'xref': xref
     };
  }

  static List<Scale> listFromJson(List<dynamic> json) {
    return json == null ? new List<Scale>() : json.map((value) => new Scale.fromJson(value)).toList();
  }

  static Map<String, Scale> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Scale>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Scale.fromJson(value));
    }
    return map;
  }

}

