part of swagger.api;

class ErrorDTO {
  /* Title of the error */
  String title = null;
  
/* Message of the error */
  String message = null;
  
  ErrorDTO();

  @override
  String toString() {
    return 'ErrorDTO[title=$title, message=$message, ]';
  }

  ErrorDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title =
        
            json['title']
    ;
    message =
        
            json['message']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'message': message
     };
  }

  static List<ErrorDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorDTO>() : json.map((value) => new ErrorDTO.fromJson(value)).toList();
  }

  static Map<String, ErrorDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorDTO.fromJson(value));
    }
    return map;
  }

}

