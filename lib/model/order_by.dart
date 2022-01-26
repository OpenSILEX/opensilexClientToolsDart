part of swagger.api;

class OrderBy {
  
  String fieldName = null;
  

  String order = null;
  //enum orderEnum {  ASCENDING,  DESCENDING,  };
  OrderBy();

  @override
  String toString() {
    return 'OrderBy[fieldName=$fieldName, order=$order, ]';
  }

  OrderBy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fieldName =
        
            json['fieldName']
    ;
    order =
        
            json['order']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'fieldName': fieldName,
      'order': order
     };
  }

  static List<OrderBy> listFromJson(List<dynamic> json) {
    return json == null ? new List<OrderBy>() : json.map((value) => new OrderBy.fromJson(value)).toList();
  }

  static Map<String, OrderBy> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrderBy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrderBy.fromJson(value));
    }
    return map;
  }

}

