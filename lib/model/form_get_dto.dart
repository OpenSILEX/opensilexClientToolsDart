part of swagger.api;

class FormGetDTO {
  
  String type = null;
  

  Map<String, Object> formData = {};
  
/* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* URI of the form being updated */
  String uri = null;
  
/* timestamp */
  String creationDate = null;
  
  FormGetDTO();

  @override
  String toString() {
    return 'FormGetDTO[type=$type, formData=$formData, timezone=$timezone, uri=$uri, creationDate=$creationDate, ]';
  }

  FormGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        json['type']
    ;
    formData =
      
 
      jsonDecode(json['formData'].toString())
 
      
;
    timezone =
        json['timezone']
    ;
    uri =
        json['uri']
    ;
    creationDate =
        json['creation_date']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'formData': formData,
      'timezone': timezone,
      'uri': uri,
      'creation_date': creationDate
     };
  }

  static List<FormGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormGetDTO>() : json.map((value) => new FormGetDTO.fromJson(value)).toList();
  }

  static Map<String, FormGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormGetDTO.fromJson(value));
    }
    return map;
  }
}

