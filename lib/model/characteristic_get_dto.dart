part of swagger.api;

class CharacteristicGetDTO {
  
  String uri = null;
  

  String name = null;
  
  CharacteristicGetDTO();

  @override
  String toString() {
    return 'CharacteristicGetDTO[uri=$uri, name=$name, ]';
  }

  CharacteristicGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name
     };
  }

  static List<CharacteristicGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<CharacteristicGetDTO>() : json.map((value) => new CharacteristicGetDTO.fromJson(value)).toList();
  }

  static Map<String, CharacteristicGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CharacteristicGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CharacteristicGetDTO.fromJson(value));
    }
    return map;
  }

}

