part of swagger.api;

class FrontConfigDTO {
  /* Application url path prefix */
  String pathPrefix = null;
  
/* Home component identifier */
  String homeComponent = null;
  
/* Not found component identifier */
  String notFoundComponent = null;
  
/* Header component identifier */
  String headerComponent = null;
  
/* Login component identifier */
  String loginComponent = null;
  
/* Menu component identifier */
  String menuComponent = null;
  
/* Footer component identifier */
  String footerComponent = null;
  
/* Application menu with routes */
  List<MenuItemDTO> menu = [];
  
/* List of configured routes */
  List<RouteDTO> routes = [];
  
/* Theme module identifier */
  String themeModule = null;
  
/* Theme module name */
  String themeName = null;
  
/* OpenID Authorization URI */
  String openIDAuthenticationURI = null;
  

  String openIDConnectionTitle = null;
  

  bool activateResetPassword = null;
  
  FrontConfigDTO();

  @override
  String toString() {
    return 'FrontConfigDTO[pathPrefix=$pathPrefix, homeComponent=$homeComponent, notFoundComponent=$notFoundComponent, headerComponent=$headerComponent, loginComponent=$loginComponent, menuComponent=$menuComponent, footerComponent=$footerComponent, menu=$menu, routes=$routes, themeModule=$themeModule, themeName=$themeName, openIDAuthenticationURI=$openIDAuthenticationURI, openIDConnectionTitle=$openIDConnectionTitle, activateResetPassword=$activateResetPassword, ]';
  }

  FrontConfigDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pathPrefix =
        json['pathPrefix']
    ;
    homeComponent =
        json['homeComponent']
    ;
    notFoundComponent =
        json['notFoundComponent']
    ;
    headerComponent =
        json['headerComponent']
    ;
    loginComponent =
        json['loginComponent']
    ;
    menuComponent =
        json['menuComponent']
    ;
    footerComponent =
        json['footerComponent']
    ;
    menu =
      MenuItemDTO.listFromJson(json['menu'])
;
    routes =
      RouteDTO.listFromJson(json['routes'])
;
    themeModule =
        json['themeModule']
    ;
    themeName =
        json['themeName']
    ;
    openIDAuthenticationURI =
        json['openIDAuthenticationURI']
    ;
    openIDConnectionTitle =
        json['openIDConnectionTitle']
    ;
    activateResetPassword =
        json['activateResetPassword']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'pathPrefix': pathPrefix,
      'homeComponent': homeComponent,
      'notFoundComponent': notFoundComponent,
      'headerComponent': headerComponent,
      'loginComponent': loginComponent,
      'menuComponent': menuComponent,
      'footerComponent': footerComponent,
      'menu': menu,
      'routes': routes,
      'themeModule': themeModule,
      'themeName': themeName,
      'openIDAuthenticationURI': openIDAuthenticationURI,
      'openIDConnectionTitle': openIDConnectionTitle,
      'activateResetPassword': activateResetPassword
     };
  }

  static List<FrontConfigDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<FrontConfigDTO>() : json.map((value) => new FrontConfigDTO.fromJson(value)).toList();
  }

  static Map<String, FrontConfigDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FrontConfigDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FrontConfigDTO.fromJson(value));
    }
    return map;
  }
}

