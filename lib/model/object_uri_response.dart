part of swagger.api;

class ObjectUriResponse {
  
  MetadataDTO metadata = null;
  

  String result = null;
  
  ObjectUriResponse();

  @override
  String toString() {
    return 'ObjectUriResponse[metadata=$metadata, result=$result, ]';
  }

  ObjectUriResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    metadata =
      
 
      
 
      new MetadataDTO.fromJson(json['metadata'])
;
    result =
        json['result']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'metadata': metadata,
      'result': result
     };
  }

  static List<ObjectUriResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObjectUriResponse>() : json.map((value) => new ObjectUriResponse.fromJson(value)).toList();
  }

  static Map<String, ObjectUriResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObjectUriResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObjectUriResponse.fromJson(value));
    }
    return map;
  }
}

