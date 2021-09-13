part of swagger.api;

class VariableDetailsDTO {
  
  String uri = null;
  

  String name = null;
  

  String alternativeName = null;
  

  String description = null;
  

  EntityGetDTO entity = null;
  

  CharacteristicGetDTO characteristic = null;
  

  String trait = null;
  

  String traitName = null;
  

  MethodGetDTO method = null;
  

  UnitGetDTO unit = null;
  

  String timeInterval = null;
  

  String samplingInterval = null;
  

  String datatype = null;
  

  List<String> exactMatch = [];
  

  List<String> closeMatch = [];
  

  List<String> broadMatch = [];
  

  List<String> narrowMatch = [];
  
  VariableDetailsDTO();

  @override
  String toString() {
    return 'VariableDetailsDTO[uri=$uri, name=$name, alternativeName=$alternativeName, description=$description, entity=$entity, characteristic=$characteristic, trait=$trait, traitName=$traitName, method=$method, unit=$unit, timeInterval=$timeInterval, samplingInterval=$samplingInterval, datatype=$datatype, exactMatch=$exactMatch, closeMatch=$closeMatch, broadMatch=$broadMatch, narrowMatch=$narrowMatch, ]';
  }

  VariableDetailsDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    alternativeName =
        json['alternative_name']
    ;
    description =
        json['description']
    ;
    entity =
      
 
      
 
      new EntityGetDTO.fromJson(json['entity'])
;
    characteristic =
      
 
      
 
      new CharacteristicGetDTO.fromJson(json['characteristic'])
;
    trait =
        json['trait']
    ;
    traitName =
        json['trait_name']
    ;
    method =
      
 
      
 
      new MethodGetDTO.fromJson(json['method'])
;
    unit =
      
 
      
 
      new UnitGetDTO.fromJson(json['unit'])
;
    timeInterval =
        json['time_interval']
    ;
    samplingInterval =
        json['sampling_interval']
    ;
    datatype =
        json['datatype']
    ;
    exactMatch =
        (json['exact_match'] as List).map((item) => item as String).toList()
    ;
    closeMatch =
        (json['close_match'] as List).map((item) => item as String).toList()
    ;
    broadMatch =
        (json['broad_match'] as List).map((item) => item as String).toList()
    ;
    narrowMatch =
        (json['narrow_match'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'alternative_name': alternativeName,
      'description': description,
      'entity': entity,
      'characteristic': characteristic,
      'trait': trait,
      'trait_name': traitName,
      'method': method,
      'unit': unit,
      'time_interval': timeInterval,
      'sampling_interval': samplingInterval,
      'datatype': datatype,
      'exact_match': exactMatch,
      'close_match': closeMatch,
      'broad_match': broadMatch,
      'narrow_match': narrowMatch
     };
  }

  static List<VariableDetailsDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VariableDetailsDTO>() : json.map((value) => new VariableDetailsDTO.fromJson(value)).toList();
  }

  static Map<String, VariableDetailsDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VariableDetailsDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VariableDetailsDTO.fromJson(value));
    }
    return map;
  }
}
