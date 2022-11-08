part of swagger.api;

class VendangeYearsDTO {
  
  int minimumYear = null;
  

  int maximumYear = null;
  
  VendangeYearsDTO();

  @override
  String toString() {
    return 'VendangeYearsDTO[minimumYear=$minimumYear, maximumYear=$maximumYear, ]';
  }

  VendangeYearsDTO.fromJson(Map<String, dynamic> json) {
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

  static List<VendangeYearsDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VendangeYearsDTO>() : json.map((value) => new VendangeYearsDTO.fromJson(value)).toList();
  }

  static Map<String, VendangeYearsDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VendangeYearsDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VendangeYearsDTO.fromJson(value));
    }
    return map;
  }

}

