part of swagger.api;

class YearsDTO {
  
  int minimumYear = null;
  

  int maximumYear = null;
  
  YearsDTO();

  @override
  String toString() {
    return 'YearsDTO[minimumYear=$minimumYear, maximumYear=$maximumYear, ]';
  }

  YearsDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    minimumYear =
        
            json['minimum_year']
    ;
    maximumYear =
        
            json['maximum_year']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'minimum_year': minimumYear,
      'maximum_year': maximumYear
     };
  }

  static List<YearsDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<YearsDTO>() : json.map((value) => new YearsDTO.fromJson(value)).toList();
  }

  static Map<String, YearsDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, YearsDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new YearsDTO.fromJson(value));
    }
    return map;
  }

}

