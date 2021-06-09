part of swagger.api;

class VueRDFTypePropertyDTO {
  
  String property = null;
  

  String name = null;
  

  String comment = null;
  

  bool inherited = null;
  

  String targetProperty = null;
  

  String inputComponent = null;
  

  Map<String, String> inputComponentsByProperty = {};
  

  String viewComponent = null;
  

  bool isList = null;
  

  bool isRequired = null;
  

  bool isCustom = null;
  
  VueRDFTypePropertyDTO();

  @override
  String toString() {
    return 'VueRDFTypePropertyDTO[property=$property, name=$name, comment=$comment, inherited=$inherited, targetProperty=$targetProperty, inputComponent=$inputComponent, inputComponentsByProperty=$inputComponentsByProperty, viewComponent=$viewComponent, isList=$isList, isRequired=$isRequired, isCustom=$isCustom, ]';
  }

  VueRDFTypePropertyDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    property =
        json['property']
    ;
    name =
        json['name']
    ;
    comment =
        json['comment']
    ;
    inherited =
        json['inherited']
    ;
    targetProperty =
        json['target_property']
    ;
    inputComponent =
        json['input_component']
    ;
    inputComponentsByProperty =
        json['input_components_by_property']
    ;
    viewComponent =
        json['view_component']
    ;
    isList =
        json['is_list']
    ;
    isRequired =
        json['is_required']
    ;
    isCustom =
        json['is_custom']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'property': property,
      'name': name,
      'comment': comment,
      'inherited': inherited,
      'target_property': targetProperty,
      'input_component': inputComponent,
      'input_components_by_property': inputComponentsByProperty,
      'view_component': viewComponent,
      'is_list': isList,
      'is_required': isRequired,
      'is_custom': isCustom
     };
  }

  static List<VueRDFTypePropertyDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VueRDFTypePropertyDTO>() : json.map((value) => new VueRDFTypePropertyDTO.fromJson(value)).toList();
  }

  static Map<String, VueRDFTypePropertyDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VueRDFTypePropertyDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VueRDFTypePropertyDTO.fromJson(value));
    }
    return map;
  }
}

