part of swagger.api;

class DataLink {
  
  String dataLinkName = null;
  

  String name = null;
  

  String type = null;
  

  String url = null;
  
  DataLink();

  @override
  String toString() {
    return 'DataLink[dataLinkName=$dataLinkName, name=$name, type=$type, url=$url, ]';
  }

  DataLink.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dataLinkName =
        
            json['dataLinkName']
    ;
    name =
        
            json['name']
    ;
    type =
        
            json['type']
    ;
    url =
        
            json['url']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'dataLinkName': dataLinkName,
      'name': name,
      'type': type,
      'url': url
     };
  }

  static List<DataLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataLink>() : json.map((value) => new DataLink.fromJson(value)).toList();
  }

  static Map<String, DataLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataLink.fromJson(value));
    }
    return map;
  }

}

