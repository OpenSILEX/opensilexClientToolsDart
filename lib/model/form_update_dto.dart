part of swagger.api;

class FormUpdateDTO {
  String type = null;

  Map<String, dynamic> formData = {};

/* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;

/* URI of the form being updated */
  String uri = null;

/* timestamp */
  String modifiedDate = null;

  String commitAddress = null;

  FormUpdateDTO();

  @override
  String toString() {
    return 'FormUpdateDTO[type=$type, formData=$formData, timezone=$timezone, uri=$uri, modifiedDate=$modifiedDate, commitAddress=$commitAddress]';
  }

  FormUpdateDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    formData = jsonDecode(json['formData'].toString());
    timezone = json['timezone'];
    uri = json['uri'];
    modifiedDate = json['modified_date'];
    commitAddress = json['commit_address'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'formData': formData,
      'timezone': timezone,
      'uri': uri,
      'modified_date': modifiedDate,
      'commit_address': commitAddress
    };
  }

  static List<FormUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<FormUpdateDTO>()
        : json.map((value) => new FormUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, FormUpdateDTO> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FormUpdateDTO.fromJson(value));
    }
    return map;
  }
}
