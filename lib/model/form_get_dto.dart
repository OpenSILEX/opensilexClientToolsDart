part of swagger.api;

class FormGetDTO {
  String type = null;

  Map<String, dynamic> formData = {};

/* to specify if the offset is not in the date and if the timezone is different from the default one */
  String timezone = null;

/* URI of the form being updated */
  String uri = null;

/* timestamp */
  String modifiedDate = null;

  String commitAddress = null;

  FormGetDTO();

  @override
  String toString() {
    return 'FormGetDTO[type=$type, formData=$formData, timezone=$timezone, uri=$uri, modifiedDate=$modifiedDate, commitAddress=$commitAddress,]';
  }

  FormGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    //formData = jsonDecode(json['form_data'].toString());
    formData = json['form_data'];
    timezone = json['timezone'];
    uri = json['uri'];
    modifiedDate = json['modified_date'];
    commitAddress = json['commitAddress'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'form_data': formData,
      'timezone': timezone,
      'uri': uri,
      'modified_date': modifiedDate,
      'commit_address': commitAddress
    };
  }

  static List<FormGetDTO> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<FormGetDTO>()
        : json.map((value) => new FormGetDTO.fromJson(value)).toList();
  }

  static Map<String, FormGetDTO> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FormGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new FormGetDTO.fromJson(value));
    }
    return map;
  }
}
