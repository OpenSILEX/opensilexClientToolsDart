part of swagger.api;

class VueRDFTypeDTO {
  
  String uri = null;
  

  String name = null;
  

  String comment = null;
  

  String parent = null;
  

  String icon = null;
  

  Map<String, String> nameTranslations = {};
  

  Map<String, String> commentTranslations = {};
  

  bool isAbstract = null;
  

  List<VueRDFTypePropertyDTO> dataProperties = [];
  

  List<VueRDFTypePropertyDTO> objectProperties = [];
  

  List<String> propertiesOrder = [];
  
  VueRDFTypeDTO();

  @override
  String toString() {
    return 'VueRDFTypeDTO[uri=$uri, name=$name, comment=$comment, parent=$parent, icon=$icon, nameTranslations=$nameTranslations, commentTranslations=$commentTranslations, isAbstract=$isAbstract, dataProperties=$dataProperties, objectProperties=$objectProperties, propertiesOrder=$propertiesOrder, ]';
  }

  VueRDFTypeDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    comment =
        json['comment']
    ;
    parent =
        json['parent']
    ;
    icon =
        json['icon']
    ;
    nameTranslations =
        json['name_translations']
    ;
    commentTranslations =
        json['comment_translations']
    ;
    isAbstract =
        json['is_abstract']
    ;
    dataProperties =
      VueRDFTypePropertyDTO.listFromJson(json['data_properties'])
;
    objectProperties =
      VueRDFTypePropertyDTO.listFromJson(json['object_properties'])
;
    propertiesOrder =
        (json['properties_order'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'comment': comment,
      'parent': parent,
      'icon': icon,
      'name_translations': nameTranslations,
      'comment_translations': commentTranslations,
      'is_abstract': isAbstract,
      'data_properties': dataProperties,
      'object_properties': objectProperties,
      'properties_order': propertiesOrder
     };
  }

  static List<VueRDFTypeDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VueRDFTypeDTO>() : json.map((value) => new VueRDFTypeDTO.fromJson(value)).toList();
  }

  static Map<String, VueRDFTypeDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VueRDFTypeDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VueRDFTypeDTO.fromJson(value));
    }
    return map;
  }
}

