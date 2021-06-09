part of swagger.api;

class CSVURINotFoundError {
  
  int rowIndex = null;
  

  int colIndex = null;
  

  String header = null;
  

  String value = null;
  

  String rdfType = null;
  

  String objectURI = null;
  
  CSVURINotFoundError();

  @override
  String toString() {
    return 'CSVURINotFoundError[rowIndex=$rowIndex, colIndex=$colIndex, header=$header, value=$value, rdfType=$rdfType, objectURI=$objectURI, ]';
  }

  CSVURINotFoundError.fromJson(Map<String, dynamic> json) {
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
    rdfType =
        json['rdfType']
    ;
    objectURI =
        json['objectURI']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'rowIndex': rowIndex,
      'colIndex': colIndex,
      'header': header,
      'value': value,
      'rdfType': rdfType,
      'objectURI': objectURI
     };
  }

  static List<CSVURINotFoundError> listFromJson(List<dynamic> json) {
    return json == null ? new List<CSVURINotFoundError>() : json.map((value) => new CSVURINotFoundError.fromJson(value)).toList();
  }

  static Map<String, CSVURINotFoundError> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CSVURINotFoundError>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CSVURINotFoundError.fromJson(value));
    }
    return map;
  }
}

