part of swagger.api;

class CSVDuplicateURIError {
  
  int rowIndex = null;
  

  int colIndex = null;
  

  String header = null;
  

  String value = null;
  

  int previousRow = null;
  
  CSVDuplicateURIError();

  @override
  String toString() {
    return 'CSVDuplicateURIError[rowIndex=$rowIndex, colIndex=$colIndex, header=$header, value=$value, previousRow=$previousRow, ]';
  }

  CSVDuplicateURIError.fromJson(Map<String, dynamic> json) {
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
    previousRow =
        json['previousRow']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'rowIndex': rowIndex,
      'colIndex': colIndex,
      'header': header,
      'value': value,
      'previousRow': previousRow
     };
  }

  static List<CSVDuplicateURIError> listFromJson(List<dynamic> json) {
    return json == null ? new List<CSVDuplicateURIError>() : json.map((value) => new CSVDuplicateURIError.fromJson(value)).toList();
  }

  static Map<String, CSVDuplicateURIError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CSVDuplicateURIError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CSVDuplicateURIError.fromJson(value));
    }
    return map;
  }
}

