part of swagger.api;

class Method {
  
  String description = null;
  

  String formula = null;
  

  String methodDbId = null;
  

  String methodName = null;
  

  OntologyReference ontologyReference = null;
  

  String reference = null;
  

  String class_ = null;
  
  Method();

  @override
  String toString() {
    return 'Method[description=$description, formula=$formula, methodDbId=$methodDbId, methodName=$methodName, ontologyReference=$ontologyReference, reference=$reference, class_=$class_, ]';
  }

  Method.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    description =
        json['description']
    ;
    formula =
        json['formula']
    ;
    methodDbId =
        json['methodDbId']
    ;
    methodName =
        json['methodName']
    ;
    ontologyReference =
      
 
      
 
      new OntologyReference.fromJson(json['ontologyReference'])
;
    reference =
        json['reference']
    ;
    class_ =
        json['class']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'formula': formula,
      'methodDbId': methodDbId,
      'methodName': methodName,
      'ontologyReference': ontologyReference,
      'reference': reference,
      'class': class_
     };
  }

  static List<Method> listFromJson(List<dynamic> json) {
    return json == null ? new List<Method>() : json.map((value) => new Method.fromJson(value)).toList();
  }

  static Map<String, Method> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Method>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Method.fromJson(value));
    }
    return map;
  }
}

