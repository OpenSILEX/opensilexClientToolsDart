part of swagger.api;

class ErrorResponse {
  
  MetadataDTO metadata = null;
  

  ErrorDTO result = null;
  
  ErrorResponse();

  @override
  String toString() {
    return 'ErrorResponse[metadata=$metadata, result=$result, ]';
  }

  ErrorResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    metadata =
      
 
      
 
      new MetadataDTO.fromJson(json['metadata'])
;
    result =
      
 
      
 
      new ErrorDTO.fromJson(json['result'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'metadata': metadata,
      'result': result
     };
  }

  static List<ErrorResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorResponse>() : json.map((value) => new ErrorResponse.fromJson(value)).toList();
  }

  static Map<String, ErrorResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorResponse.fromJson(value));
    }
    return map;
  }
}

