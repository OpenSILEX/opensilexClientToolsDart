part of swagger.api;

class CSVDatatypeError {
  
  int rowIndex = null;
  

  int colIndex = null;
  

  String header = null;
  

  String value = null;
  

  String datatype = null;
  
  CSVDatatypeError();

  @override
  String toString() {
    return 'CSVDatatypeError[rowIndex=$rowIndex, colIndex=$colIndex, header=$header, value=$value, datatype=$datatype, ]';
  }

  CSVDatatypeError.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    rowIndex =
        json['rowIndex']
    ;
    colIndex =
        json['colIndex']
    ;
    header =
        json['header']
    ;
    value =
        json['value']
    ;
    datatype =
        json['datatype']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'rowIndex': rowIndex,
      'colIndex': colIndex,
      'header': header,
      'value': value,
      'datatype': datatype
     };
  }

  static List<CSVDatatypeError> listFromJson(List<dynamic> json) {
    return json == null ? new List<CSVDatatypeError>() : json.map((value) => new CSVDatatypeError.fromJson(value)).toList();
  }

  static Map<String, CSVDatatypeError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CSVDatatypeError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CSVDatatypeError.fromJson(value));
    }
    return map;
  }
}

