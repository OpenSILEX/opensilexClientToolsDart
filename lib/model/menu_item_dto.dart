part of swagger.api;

class MenuItemDTO {
  /* Menu identifier */
  String id = null;
  
/* Menu label */
  String label = null;
  
/* List of sub menu items */
  List<MenuItemDTO> children = [];
  
/* Optional route definition */
  RouteDTO route = null;
  
  MenuItemDTO();

  @override
  String toString() {
    return 'MenuItemDTO[id=$id, label=$label, children=$children, route=$route, ]';
  }

  MenuItemDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        
            json['id']
    ;
    label =
        
            json['label']
    ;
    children =
      MenuItemDTO.listFromJson((json['children'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    route =
      
 
      
 
      new RouteDTO.fromJson(json['route'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'children': children,
      'route': route
     };
  }

  static List<MenuItemDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<MenuItemDTO>() : json.map((value) => new MenuItemDTO.fromJson(value)).toList();
  }

  static Map<String, MenuItemDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MenuItemDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MenuItemDTO.fromJson(value));
    }
    return map;
  }

}

