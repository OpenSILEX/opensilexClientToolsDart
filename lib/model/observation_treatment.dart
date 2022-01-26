part of swagger.api;

class ObservationTreatment {
  
  String factor = null;
  

  String modality = null;
  
  ObservationTreatment();

  @override
  String toString() {
    return 'ObservationTreatment[factor=$factor, modality=$modality, ]';
  }

  ObservationTreatment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    factor =
        
            json['factor']
    ;
    modality =
        
            json['modality']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'factor': factor,
      'modality': modality
     };
  }

  static List<ObservationTreatment> listFromJson(List<dynamic> json) {
    return json == null ? new List<ObservationTreatment>() : json.map((value) => new ObservationTreatment.fromJson(value)).toList();
  }

  static Map<String, ObservationTreatment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ObservationTreatment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ObservationTreatment.fromJson(value));
    }
    return map;
  }

}

