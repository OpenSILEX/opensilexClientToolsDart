part of swagger.api;

class TokenGetDTO {
  /* User token */
  String token = null;
  
  TokenGetDTO();

  @override
  String toString() {
    return 'TokenGetDTO[token=$token, ]';
  }

  TokenGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    token =
        
            json['token']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token
     };
  }

  static List<TokenGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<TokenGetDTO>() : json.map((value) => new TokenGetDTO.fromJson(value)).toList();
  }

  static Map<String, TokenGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TokenGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TokenGetDTO.fromJson(value));
    }
    return map;
  }

}

