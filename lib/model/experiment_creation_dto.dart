part of swagger.api;

class ExperimentCreationDTO {
  
  String uri = null;
  

  String name = null;
  

  DateTime startDate = null;
  

  DateTime endDate = null;
  

  String description = null;
  

  String objective = null;
  

  List<String> species = [];
  

  List<String> variables = [];
  

  List<String> organisations = [];
  

  List<String> facilities = [];
  

  List<String> projects = [];
  

  List<String> scientificSupervisors = [];
  

  List<String> technicalSupervisors = [];
  

  List<String> groups = [];
  

  List<String> factors = [];
  

  bool isPublic = null;
  
  ExperimentCreationDTO();

  @override
  String toString() {
    return 'ExperimentCreationDTO[uri=$uri, name=$name, startDate=$startDate, endDate=$endDate, description=$description, objective=$objective, species=$species, variables=$variables, organisations=$organisations, facilities=$facilities, projects=$projects, scientificSupervisors=$scientificSupervisors, technicalSupervisors=$technicalSupervisors, groups=$groups, factors=$factors, isPublic=$isPublic, ]';
  }

  ExperimentCreationDTO.fromJson(Map<String, dynamic> json) {
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
    variables =
        (json['variables'] as List).map((item) => item as String).toList()
    ;
    organisations =
        (json['organisations'] as List).map((item) => item as String).toList()
    ;
    facilities =
        (json['facilities'] as List).map((item) => item as String).toList()
    ;
    projects =
        (json['projects'] as List).map((item) => item as String).toList()
    ;
    scientificSupervisors =
        (json['scientific_supervisors'] as List).map((item) => item as String).toList()
    ;
    technicalSupervisors =
        (json['technical_supervisors'] as List).map((item) => item as String).toList()
    ;
    groups =
        (json['groups'] as List).map((item) => item as String).toList()
    ;
    factors =
        (json['factors'] as List).map((item) => item as String).toList()
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
      'variables': variables,
      'organisations': organisations,
      'facilities': facilities,
      'projects': projects,
      'scientific_supervisors': scientificSupervisors,
      'technical_supervisors': technicalSupervisors,
      'groups': groups,
      'factors': factors,
      'is_public': isPublic
     };
  }

  static List<ExperimentCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExperimentCreationDTO>() : json.map((value) => new ExperimentCreationDTO.fromJson(value)).toList();
  }

  static Map<String, ExperimentCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExperimentCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExperimentCreationDTO.fromJson(value));
    }
    return map;
  }
}

