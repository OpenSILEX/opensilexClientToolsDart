part of swagger.api;

class ExperimentGetListDTO {
  
  String uri = null;
  

  String name = null;
  

  DateTime startDate = null;
  

  DateTime endDate = null;
  

  String description = null;
  

  String objective = null;
  

  List<String> species = [];
  

  bool isPublic = null;
  
  ExperimentGetListDTO();

  @override
  String toString() {
    return 'ExperimentGetListDTO[uri=$uri, name=$name, startDate=$startDate, endDate=$endDate, description=$description, objective=$objective, species=$species, isPublic=$isPublic, ]';
  }

  ExperimentGetListDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    startDate =
      
 
      
 
       json['start_date'] == null ? null : DateTime.parse(json['start_date'])
;
    endDate =
      
 
      
 
       json['end_date'] == null ? null : DateTime.parse(json['end_date'])
;
    description =
        json['description']
    ;
    objective =
        json['objective']
    ;
    species =
        (json['species'] as List).map((item) => item as String).toList()
    ;
    isPublic =
        json['is_public']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'start_date': startDate,
      'end_date': endDate,
      'description': description,
      'objective': objective,
      'species': species,
      'is_public': isPublic
     };
  }

  static List<ExperimentGetListDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExperimentGetListDTO>() : json.map((value) => new ExperimentGetListDTO.fromJson(value)).toList();
  }

  static Map<String, ExperimentGetListDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExperimentGetListDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExperimentGetListDTO.fromJson(value));
    }
    return map;
  }
}

