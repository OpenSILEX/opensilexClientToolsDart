part of swagger.api;

class Call {
  
  String call = null;
  

  List<String> dataTypes = [];
  

  List<String> methods = [];
  

  List<String> versions = [];
  
  Call();

  @override
  String toString() {
    return 'Call[call=$call, dataTypes=$dataTypes, methods=$methods, versions=$versions, ]';
  }

  Call.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    call =
        json['call']
    ;
    dataTypes =
        (json['dataTypes'] as List).map((item) => item as String).toList()
    ;
    methods =
        (json['methods'] as List).map((item) => item as String).toList()
    ;
    versions =
        (json['versions'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'call': call,
      'dataTypes': dataTypes,
      'methods': methods,
      'versions': versions
     };
  }

  static List<Call> listFromJson(List<dynamic> json) {
    return json == null ? new List<Call>() : json.map((value) => new Call.fromJson(value)).toList();
  }

  static Map<String, Call> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Call>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Call.fromJson(value));
    }
    return map;
  }
}

