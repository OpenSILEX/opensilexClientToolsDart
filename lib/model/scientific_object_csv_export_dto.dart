part of swagger.api;

class ScientificObjectCsvExportDTO {
  /* List of scientific objects URI to export */
  List<String> uris = [];
  
/* Scientific object experiment URI */
  String experiment = null;
  
  ScientificObjectCsvExportDTO();

  @override
  String toString() {
    return 'ScientificObjectCsvExportDTO[uris=$uris, experiment=$experiment, ]';
  }

  ScientificObjectCsvExportDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uris =
        (json['uris'] as List).map((item) => item as String).toList()
    ;
    experiment =
        json['experiment']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uris': uris,
      'experiment': experiment
     };
  }

  static List<ScientificObjectCsvExportDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScientificObjectCsvExportDTO>() : json.map((value) => new ScientificObjectCsvExportDTO.fromJson(value)).toList();
  }

  static Map<String, ScientificObjectCsvExportDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScientificObjectCsvExportDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScientificObjectCsvExportDTO.fromJson(value));
    }
    return map;
  }
}

