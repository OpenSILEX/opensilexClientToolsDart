part of swagger.api;

class OWLClassPropertyRestrictionDTO {
  
  String property = null;
  

  bool required = null;
  

  bool list = null;
  
/* RDF type */
  String rdfType = null;
  
/* Domain URI */
  String domain = null;
  
  OWLClassPropertyRestrictionDTO();

  @override
  String toString() {
    return 'OWLClassPropertyRestrictionDTO[property=$property, required=$required, list=$list, rdfType=$rdfType, domain=$domain, ]';
  }

  OWLClassPropertyRestrictionDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    property =
        json['property']
    ;
    required =
        json['required']
    ;
    list =
        json['list']
    ;
    rdfType =
        json['rdf_type']
    ;
    domain =
        json['domain']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'property': property,
      'required': required,
      'list': list,
      'rdf_type': rdfType,
      'domain': domain
     };
  }

  static List<OWLClassPropertyRestrictionDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<OWLClassPropertyRestrictionDTO>() : json.map((value) => new OWLClassPropertyRestrictionDTO.fromJson(value)).toList();
  }

  static Map<String, OWLClassPropertyRestrictionDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OWLClassPropertyRestrictionDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OWLClassPropertyRestrictionDTO.fromJson(value));
    }
    return map;
  }
}

