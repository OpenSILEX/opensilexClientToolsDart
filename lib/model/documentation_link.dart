part of swagger.api;

class DocumentationLink {
  
  String type = null;
  

  String url = null;
  
  DocumentationLink();

  @override
  String toString() {
    return 'DocumentationLink[type=$type, url=$url, ]';
  }

  DocumentationLink.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type =
        
            json['type']
    ;
    url =
        
            json['url']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'url': url
     };
  }

  static List<DocumentationLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<DocumentationLink>() : json.map((value) => new DocumentationLink.fromJson(value)).toList();
  }

  static Map<String, DocumentationLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DocumentationLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DocumentationLink.fromJson(value));
    }
    return map;
  }

}

