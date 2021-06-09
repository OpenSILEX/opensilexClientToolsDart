part of swagger.api;

class OntologyReference {
  
  List<DocumentationLink> documentationLinks = [];
  

  String ontologyDbId = null;
  

  String ontologyName = null;
  

  String version = null;
  
  OntologyReference();

  @override
  String toString() {
    return 'OntologyReference[documentationLinks=$documentationLinks, ontologyDbId=$ontologyDbId, ontologyName=$ontologyName, version=$version, ]';
  }

  OntologyReference.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    documentationLinks =
      DocumentationLink.listFromJson(json['documentationLinks'])
;
    ontologyDbId =
        json['ontologyDbId']
    ;
    ontologyName =
        json['ontologyName']
    ;
    version =
        json['version']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'documentationLinks': documentationLinks,
      'ontologyDbId': ontologyDbId,
      'ontologyName': ontologyName,
      'version': version
     };
  }

  static List<OntologyReference> listFromJson(List<dynamic> json) {
    return json == null ? new List<OntologyReference>() : json.map((value) => new OntologyReference.fromJson(value)).toList();
  }

  static Map<String, OntologyReference> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OntologyReference>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OntologyReference.fromJson(value));
    }
    return map;
  }
}

