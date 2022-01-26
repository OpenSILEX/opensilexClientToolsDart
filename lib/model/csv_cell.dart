part of swagger.api;

class CSVCell {
  
  int rowIndex = null;
  

  int colIndex = null;
  

  String header = null;
  

  String value = null;
  
  CSVCell();

  @override
  String toString() {
    return 'CSVCell[rowIndex=$rowIndex, colIndex=$colIndex, header=$header, value=$value, ]';
  }

  CSVCell.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    return {
      'rowIndex': rowIndex,
      'colIndex': colIndex,
      'header': header,
      'value': value
     };
  }

  static List<CSVCell> listFromJson(List<dynamic> json) {
    return json == null ? new List<CSVCell>() : json.map((value) => new CSVCell.fromJson(value)).toList();
  }

  static Map<String, CSVCell> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CSVCell>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CSVCell.fromJson(value));
    }
    return map;
  }

}

