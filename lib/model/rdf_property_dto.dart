part of swagger.api;

class RDFPropertyDTO {
  
  String uri = null;
  

  String name = null;
  

  String comment = null;
  

  String domain = null;
  

  String range = null;
  

  String parent = null;
  

  String rdfType = null;
  

  Map<String, String> nameTranslations = {};
  

  Map<String, String> commentTranslations = {};
  

  String domainRdfType = null;
  

  String rangeLabel = null;
  
  RDFPropertyDTO();

  @override
  String toString() {
    return 'RDFPropertyDTO[uri=$uri, name=$name, comment=$comment, domain=$domain, range=$range, parent=$parent, rdfType=$rdfType, nameTranslations=$nameTranslations, commentTranslations=$commentTranslations, domainRdfType=$domainRdfType, rangeLabel=$rangeLabel, ]';
  }

  RDFPropertyDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    comment =
        json['comment']
    ;
    domain =
        json['domain']
    ;
    range =
        json['range']
    ;
    parent =
        json['parent']
    ;
    rdfType =
        json['rdf_type']
    ;
    nameTranslations =
        json['name_translations']
    ;
    commentTranslations =
        json['comment_translations']
    ;
    domainRdfType =
        json['domain_rdf_type']
    ;
    rangeLabel =
        json['range_label']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'comment': comment,
      'domain': domain,
      'range': range,
      'parent': parent,
      'rdf_type': rdfType,
      'name_translations': nameTranslations,
      'comment_translations': commentTranslations,
      'domain_rdf_type': domainRdfType,
      'range_label': rangeLabel
     };
  }

  static List<RDFPropertyDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<RDFPropertyDTO>() : json.map((value) => new RDFPropertyDTO.fromJson(value)).toList();
  }

  static Map<String, RDFPropertyDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RDFPropertyDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RDFPropertyDTO.fromJson(value));
    }
    return map;
  }
}

