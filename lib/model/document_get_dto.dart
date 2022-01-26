part of swagger.api;

class DocumentGetDTO {
  
  String uri = null;
  

  String identifier = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String title = null;
  

  String date = null;
  

  String description = null;
  

  List<String> targets = [];
  

  List<String> authors = [];
  

  String language = null;
  

  String format = null;
  

  List<String> keywords = [];
  

  bool deprecated = null;
  
  DocumentGetDTO();

  @override
  String toString() {
    return 'DocumentGetDTO[uri=$uri, identifier=$identifier, rdfType=$rdfType, rdfTypeName=$rdfTypeName, title=$title, date=$date, description=$description, targets=$targets, authors=$authors, language=$language, format=$format, keywords=$keywords, deprecated=$deprecated, ]';
  }

  DocumentGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    identifier =
        
            json['identifier']
    ;
    rdfType =
        
            json['rdf_type']
    ;
    rdfTypeName =
        
            json['rdf_type_name']
    ;
    title =
        
            json['title']
    ;
    date =
        
            json['date']
    ;
    description =
        
            json['description']
    ;
    targets =
        (json['targets'] as List).map((item) => item as String).toList()
    ;
    authors =
        (json['authors'] as List).map((item) => item as String).toList()
    ;
    language =
        
            json['language']
    ;
    format =
        
            json['format']
    ;
    keywords =
        (json['keywords'] as List).map((item) => item as String).toList()
    ;
    deprecated =
        
            json['deprecated']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'identifier': identifier,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'title': title,
      'date': date,
      'description': description,
      'targets': targets,
      'authors': authors,
      'language': language,
      'format': format,
      'keywords': keywords,
      'deprecated': deprecated
     };
  }

  static List<DocumentGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DocumentGetDTO>() : json.map((value) => new DocumentGetDTO.fromJson(value)).toList();
  }

  static Map<String, DocumentGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DocumentGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DocumentGetDTO.fromJson(value));
    }
    return map;
  }

}

