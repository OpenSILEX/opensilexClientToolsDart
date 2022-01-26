part of swagger.api;

class AnnotationGetDTO {
  /* Annotation URI */
  String uri = null;
  
/* Content of the annotation */
  String description = null;
  

  List<String> targets = [];
  

  MotivationGetDTO motivation = null;
  
/* Creation date */
  String created = null;
  
/* Annotation author URI */
  String author = null;
  
  AnnotationGetDTO();

  @override
  String toString() {
    return 'AnnotationGetDTO[uri=$uri, description=$description, targets=$targets, motivation=$motivation, created=$created, author=$author, ]';
  }

  AnnotationGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    description =
        
            json['description']
    ;
    targets =
        (json['targets'] as List).map((item) => item as String).toList()
    ;
    motivation =
      
 
      
 
      new MotivationGetDTO.fromJson(json['motivation'])
;
    created =
        
            json['created']
    ;
    author =
        
            json['author']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'description': description,
      'targets': targets,
      'motivation': motivation,
      'created': created,
      'author': author
     };
  }

  static List<AnnotationGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnnotationGetDTO>() : json.map((value) => new AnnotationGetDTO.fromJson(value)).toList();
  }

  static Map<String, AnnotationGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnnotationGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnnotationGetDTO.fromJson(value));
    }
    return map;
  }

}

