part of swagger.api;

class ScientificObjectSearchDTO {
  
  List<String> uris = [];
  

  List<String> excludedUris = [];
  

  String experiment = null;
  

  List<String> rdfTypes = [];
  

  String name = null;
  

  String parent = null;
  

  String germplasm = null;
  

  List<String> factorLevels = [];
  

  String facility = null;
  

  DateTime existenceDate = null;
  

  DateTime creationDate = null;
  

  List<OrderBy> orderBy = [];
  

  int page = null;
  

  int pageSze = null;
  
  ScientificObjectSearchDTO();

  @override
  String toString() {
    return 'ScientificObjectSearchDTO[uris=$uris, excludedUris=$excludedUris, experiment=$experiment, rdfTypes=$rdfTypes, name=$name, parent=$parent, germplasm=$germplasm, factorLevels=$factorLevels, facility=$facility, existenceDate=$existenceDate, creationDate=$creationDate, orderBy=$orderBy, page=$page, pageSze=$pageSze, ]';
  }

  ScientificObjectSearchDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uris =
        (json['uris'] as List).map((item) => item as String).toList()
    ;
    excludedUris =
        (json['excluded_uris'] as List).map((item) => item as String).toList()
    ;
    experiment =
        json['experiment']
    ;
    rdfTypes =
        (json['rdf_types'] as List).map((item) => item as String).toList()
    ;
    name =
        json['name']
    ;
    parent =
        json['parent']
    ;
    germplasm =
        json['germplasm']
    ;
    factorLevels =
        (json['factor_levels'] as List).map((item) => item as String).toList()
    ;
    facility =
        json['facility']
    ;
    existenceDate =
      
 
      
 
       json['existence_date'] == null ? null : DateTime.parse(json['existence_date'])
;
    creationDate =
      
 
      
 
       json['creation_date'] == null ? null : DateTime.parse(json['creation_date'])
;
    orderBy =
      OrderBy.listFromJson(json['order_by'])
;
    page =
        json['page']
    ;
    pageSze =
        json['page_sze']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uris': uris,
      'excluded_uris': excludedUris,
      'experiment': experiment,
      'rdf_types': rdfTypes,
      'name': name,
      'parent': parent,
      'germplasm': germplasm,
      'factor_levels': factorLevels,
      'facility': facility,
      'existence_date': existenceDate,
      'creation_date': creationDate,
      'order_by': orderBy,
      'page': page,
      'page_sze': pageSze
     };
  }

  static List<ScientificObjectSearchDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScientificObjectSearchDTO>() : json.map((value) => new ScientificObjectSearchDTO.fromJson(value)).toList();
  }

  static Map<String, ScientificObjectSearchDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScientificObjectSearchDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScientificObjectSearchDTO.fromJson(value));
    }
    return map;
  }
}

