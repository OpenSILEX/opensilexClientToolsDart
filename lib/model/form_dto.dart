part of swagger.api;

class FormDTO {
  
  String type = null;
  

  Map<String, Object> formData = {};
  
/* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;
  
/* timestamp */
  String creationDate = null;
  
  FormDTO();

  @override
  String toString() {
    return 'FormDTO[type=$type, formData=$formData, timezone=$timezone, creationDate=$creationDate, ]';
  }

  FormDTO.fromJson(Map<String, dynamic> json) {
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
    creationDate =
        json['creation_date']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'formData': formData,
      'timezone': timezone,
      'creation_date': creationDate
     };
  }

  static List<FormDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FormDTO>() : json.map((value) => new FormDTO.fromJson(value)).toList();
  }

  static Map<String, FormDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormDTO.fromJson(value));
    }
    return map;
  }
}

