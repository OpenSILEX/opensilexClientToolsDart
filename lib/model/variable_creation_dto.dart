part of swagger.api;

class VariableCreationDTO {
  
  String uri = null;
  

  String name = null;
  

  String alternativeName = null;
  

  String description = null;
  

  String entity = null;
  

  String characteristic = null;
  

  String trait = null;
  

  String traitName = null;
  

  String method = null;
  

  String unit = null;
  

  String datatype = null;
  

  String timeInterval = null;
  

  String samplingInterval = null;
  

  List<String> exactMatch = [];
  

  List<String> closeMatch = [];
  

  List<String> broadMatch = [];
  

  List<String> narrowMatch = [];
  
  VariableCreationDTO();

  @override
  String toString() {
    return 'VariableCreationDTO[uri=$uri, name=$name, alternativeName=$alternativeName, description=$description, entity=$entity, characteristic=$characteristic, trait=$trait, traitName=$traitName, method=$method, unit=$unit, datatype=$datatype, timeInterval=$timeInterval, samplingInterval=$samplingInterval, exactMatch=$exactMatch, closeMatch=$closeMatch, broadMatch=$broadMatch, narrowMatch=$narrowMatch, ]';
  }

  VariableCreationDTO.fromJson(Map<String, dynamic> json) {
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
        json['entity']
    ;
    characteristic =
        json['characteristic']
    ;
    trait =
        json['trait']
    ;
    traitName =
        json['trait_name']
    ;
    method =
        json['method']
    ;
    unit =
        json['unit']
    ;
    datatype =
        json['datatype']
    ;
    timeInterval =
        json['time_interval']
    ;
    samplingInterval =
        json['sampling_interval']
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
      'datatype': datatype,
      'time_interval': timeInterval,
      'sampling_interval': samplingInterval,
      'exact_match': exactMatch,
      'close_match': closeMatch,
      'broad_match': broadMatch,
      'narrow_match': narrowMatch
     };
  }

  static List<VariableCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VariableCreationDTO>() : json.map((value) => new VariableCreationDTO.fromJson(value)).toList();
  }

  static Map<String, VariableCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VariableCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VariableCreationDTO.fromJson(value));
    }
    return map;
  }
}

