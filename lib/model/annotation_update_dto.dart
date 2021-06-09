part of swagger.api;

class AnnotationUpdateDTO {
  
  String uri = null;
  

  String description = null;
  

  List<String> targets = [];
  

  String motivation = null;
  
  AnnotationUpdateDTO();

  @override
  String toString() {
    return 'AnnotationUpdateDTO[uri=$uri, description=$description, targets=$targets, motivation=$motivation, ]';
  }

  AnnotationUpdateDTO.fromJson(Map<String, dynamic> json) {
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

  static List<AnnotationUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<AnnotationUpdateDTO>() : json.map((value) => new AnnotationUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, AnnotationUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AnnotationUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AnnotationUpdateDTO.fromJson(value));
    }
    return map;
  }
}

