part of swagger.api;

class FormUpdateDTO {
  
  String type = null;
  

  Map<String, Object> formData = {};
  
/* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* URI of the form being updated */
  String uri = null;
  
/* timestamp */
  String creationDate = null;
  
  FormUpdateDTO();

  @override
  String toString() {
    return 'FormUpdateDTO[type=$type, formData=$formData, timezone=$timezone, uri=$uri, creationDate=$creationDate, ]';
  }

  FormUpdateDTO.fromJson(Map<String, dynamic> json) {
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

  static List<FormUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormUpdateDTO>() : json.map((value) => new FormUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, FormUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormUpdateDTO.fromJson(value));
    }
    return map;
  }
}

