part of swagger.api;

class Trait {
  
  List<String> alternativeAbbreviations = [];
  

  String attribute = null;
  

  String description = null;
  

  String entity = null;
  

  String mainAbbreviation = null;
  

  String name = null;
  

  OntologyReference ontologyReference = null;
  

  String status = null;
  

  List<String> synonyms = [];
  

  String traitDbId = null;
  

  String traitName = null;
  

  String xref = null;
  

  String class_ = null;
  
  Trait();

  @override
  String toString() {
    return 'Trait[alternativeAbbreviations=$alternativeAbbreviations, attribute=$attribute, description=$description, entity=$entity, mainAbbreviation=$mainAbbreviation, name=$name, ontologyReference=$ontologyReference, status=$status, synonyms=$synonyms, traitDbId=$traitDbId, traitName=$traitName, xref=$xref, class_=$class_, ]';
  }

  Trait.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    alternativeAbbreviations =
        (json['alternativeAbbreviations'] as List).map((item) => item as String).toList()
    ;
    attribute =
        json['attribute']
    ;
    description =
        json['description']
    ;
    entity =
        json['entity']
    ;
    mainAbbreviation =
        json['mainAbbreviation']
    ;
    name =
        json['name']
    ;
    ontologyReference =
      
 
      
 
      new OntologyReference.fromJson(json['ontologyReference'])
;
    status =
        json['status']
    ;
    synonyms =
        (json['synonyms'] as List).map((item) => item as String).toList()
    ;
    traitDbId =
        json['traitDbId']
    ;
    traitName =
        json['traitName']
    ;
    xref =
        json['xref']
    ;
    class_ =
        json['class']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'alternativeAbbreviations': alternativeAbbreviations,
      'attribute': attribute,
      'description': description,
      'entity': entity,
      'mainAbbreviation': mainAbbreviation,
      'name': name,
      'ontologyReference': ontologyReference,
      'status': status,
      'synonyms': synonyms,
      'traitDbId': traitDbId,
      'traitName': traitName,
      'xref': xref,
      'class': class_
     };
  }

  static List<Trait> listFromJson(List<dynamic> json) {
    return json == null ? new List<Trait>() : json.map((value) => new Trait.fromJson(value)).toList();
  }

  static Map<String, Trait> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Trait>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Trait.fromJson(value));
    }
    return map;
  }
}

