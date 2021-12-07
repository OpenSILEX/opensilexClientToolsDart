part of swagger.api;

class ApiModulesInfo {
  /* opensilex-core */
  String name = null;
  
/* 1.0.0-beta+2 */
  String version = null;
  
  ApiModulesInfo();

  @override
  String toString() {
    return 'ApiModulesInfo[name=$name, version=$version, ]';
  }

  ApiModulesInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    version =
        json['version']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'version': version
     };
  }

  static List<ApiModulesInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiModulesInfo>() : json.map((value) => new ApiModulesInfo.fromJson(value)).toList();
  }

  static Map<String, ApiModulesInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiModulesInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiModulesInfo.fromJson(value));
    }
    return map;
  }
}

