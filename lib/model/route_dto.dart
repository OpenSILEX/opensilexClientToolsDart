part of swagger.api;

class RouteDTO {
  /* Route path */
  String path = null;
  
/* Route component */
  String component = null;
  
/* Required credentials list for this route */
  List<String> credentials = [];
  
  RouteDTO();

  @override
  String toString() {
    return 'RouteDTO[path=$path, component=$component, credentials=$credentials, ]';
  }

  RouteDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    path =
        json['path']
    ;
    component =
        json['component']
    ;
    credentials =
        (json['credentials'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'component': component,
      'credentials': credentials
     };
  }

  static List<RouteDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<RouteDTO>() : json.map((value) => new RouteDTO.fromJson(value)).toList();
  }

  static Map<String, RouteDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RouteDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RouteDTO.fromJson(value));
    }
    return map;
  }
}

