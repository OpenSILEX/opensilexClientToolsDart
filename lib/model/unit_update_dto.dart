part of swagger.api;

class UnitUpdateDTO {
  
  String uri = null;
  

  String name = null;
  

  String description = null;
  

  String symbol = null;
  

  String alternativeSymbol = null;
  

  List<String> exactMatch = [];
  

  List<String> closeMatch = [];
  

  List<String> broadMatch = [];
  

  List<String> narrowMatch = [];
  
  UnitUpdateDTO();

  @override
  String toString() {
    return 'UnitUpdateDTO[uri=$uri, name=$name, description=$description, symbol=$symbol, alternativeSymbol=$alternativeSymbol, exactMatch=$exactMatch, closeMatch=$closeMatch, broadMatch=$broadMatch, narrowMatch=$narrowMatch, ]';
  }

  UnitUpdateDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        
            json['uri']
    ;
    name =
        
            json['name']
    ;
    description =
        
            json['description']
    ;
    symbol =
        
            json['symbol']
    ;
    alternativeSymbol =
        
            json['alternative_symbol']
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
      'description': description,
      'symbol': symbol,
      'alternative_symbol': alternativeSymbol,
      'exact_match': exactMatch,
      'close_match': closeMatch,
      'broad_match': broadMatch,
      'narrow_match': narrowMatch
     };
  }

  static List<UnitUpdateDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnitUpdateDTO>() : json.map((value) => new UnitUpdateDTO.fromJson(value)).toList();
  }

  static Map<String, UnitUpdateDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnitUpdateDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnitUpdateDTO.fromJson(value));
    }
    return map;
  }

}

