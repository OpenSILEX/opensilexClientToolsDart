part of swagger.api;

class VariableGetDTO {
  
  String uri = null;
  

  String name = null;
  

  EntityGetDTO entity = null;
  

  NamedResourceDTO entityOfInterest = null;
  

  CharacteristicGetDTO characteristic = null;
  

  MethodGetDTO method = null;
  

  UnitGetDTO unit = null;
  
  VariableGetDTO();

  @override
  String toString() {
    return 'VariableGetDTO[uri=$uri, name=$name, entity=$entity, entityOfInterest=$entityOfInterest, characteristic=$characteristic, method=$method, unit=$unit, ]';
  }

  VariableGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    entity =
      
 
      
 
      new EntityGetDTO.fromJson(json['entity'])
;
    entityOfInterest =
      
 
      
 
      new NamedResourceDTO.fromJson(json['entity_of_interest'])
;
    characteristic =
      
 
      
 
      new CharacteristicGetDTO.fromJson(json['characteristic'])
;
    method =
      
 
      
 
      new MethodGetDTO.fromJson(json['method'])
;
    unit =
      
 
      
 
      new UnitGetDTO.fromJson(json['unit'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'entity': entity,
      'entity_of_interest': entityOfInterest,
      'characteristic': characteristic,
      'method': method,
      'unit': unit
     };
  }

  static List<VariableGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VariableGetDTO>() : json.map((value) => new VariableGetDTO.fromJson(value)).toList();
  }

  static Map<String, VariableGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VariableGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VariableGetDTO.fromJson(value));
    }
    return map;
  }
}

