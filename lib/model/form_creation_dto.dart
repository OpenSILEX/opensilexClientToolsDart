part of swagger.api;

class FormCreationDTO {
  String type = null;

  Map<String, Object> formData = {};

/* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;

/* timestamp */
  String modifiedDate = null;

  FormCreationDTO();

  @override
  String toString() {
    return 'FormCreationDTO[type=$type, formData=$formData, timezone=$timezone, modifiedDate=$modifiedDate, ]';
  }

  FormCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    formData = jsonDecode(json['formData'].toString());
    timezone = json['timezone'];
    modifiedDate = json['modified_date'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'formData': formData,
      'timezone': timezone,
      'modified_date': modifiedDate
    };
  }

  static List<FormCreationDTO> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<FormCreationDTO>()
        : json.map((value) => new FormCreationDTO.fromJson(value)).toList();
  }

  static Map<String, FormCreationDTO> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FormCreationDTO.fromJson(value));
    }
    return map;
  }
}
