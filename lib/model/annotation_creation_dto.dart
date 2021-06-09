part of swagger.api;

class AnnotationCreationDTO {
  
  String uri = null;
  

  String description = null;
  

  List<String> targets = [];
  

  String motivation = null;
  
  AnnotationCreationDTO();

  @override
  String toString() {
    return 'AnnotationCreationDTO[uri=$uri, description=$description, targets=$targets, motivation=$motivation, ]';
  }

  AnnotationCreationDTO.fromJson(Map<String, dynamic> json) {
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
        json['motivation']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'description': description,
      'targets': targets,
      'motivation': motivation
     };
  }

  static List<AnnotationCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnnotationCreationDTO>() : json.map((value) => new AnnotationCreationDTO.fromJson(value)).toList();
  }

  static Map<String, AnnotationCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnnotationCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnnotationCreationDTO.fromJson(value));
    }
    return map;
  }
}

