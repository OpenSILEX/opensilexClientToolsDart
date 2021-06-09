part of swagger.api;

class DataConfidenceDTO {
  
  double confidence = null;
  
  DataConfidenceDTO();

  @override
  String toString() {
    return 'DataConfidenceDTO[confidence=$confidence, ]';
  }

  DataConfidenceDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    confidence =
        json['confidence']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'confidence': confidence
     };
  }

  static List<DataConfidenceDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DataConfidenceDTO>() : json.map((value) => new DataConfidenceDTO.fromJson(value)).toList();
  }

  static Map<String, DataConfidenceDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DataConfidenceDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DataConfidenceDTO.fromJson(value));
    }
    return map;
  }
}

