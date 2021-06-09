part of swagger.api;

class ExperimentGetDTO {
  
  String uri = null;
  

  String name = null;
  

  DateTime startDate = null;
  

  DateTime endDate = null;
  

  String description = null;
  

  String objective = null;
  

  List<String> species = [];
  

  List<String> variables = [];
  

  List<String> factors = [];
  

  List<NamedResourceDTOInfrastructureModel> organisations = [];
  

  List<NamedResourceDTOProjectModel> projects = [];
  

  List<String> scientificSupervisors = [];
  

  List<String> technicalSupervisors = [];
  

  List<String> groups = [];
  

  bool isPublic = null;
  
  ExperimentGetDTO();

  @override
  String toString() {
    return 'ExperimentGetDTO[uri=$uri, name=$name, startDate=$startDate, endDate=$endDate, description=$description, objective=$objective, species=$species, variables=$variables, factors=$factors, organisations=$organisations, projects=$projects, scientificSupervisors=$scientificSupervisors, technicalSupervisors=$technicalSupervisors, groups=$groups, isPublic=$isPublic, ]';
  }

  ExperimentGetDTO.fromJson(Map<String, dynamic> json) {
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
    factors =
        (json['factors'] as List).map((item) => item as String).toList()
    ;
    organisations =
      NamedResourceDTOInfrastructureModel.listFromJson(json['organisations'])
;
    projects =
      NamedResourceDTOProjectModel.listFromJson(json['projects'])
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
      'factors': factors,
      'organisations': organisations,
      'projects': projects,
      'scientific_supervisors': scientificSupervisors,
      'technical_supervisors': technicalSupervisors,
      'groups': groups,
      'is_public': isPublic
     };
  }

  static List<ExperimentGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExperimentGetDTO>() : json.map((value) => new ExperimentGetDTO.fromJson(value)).toList();
  }

  static Map<String, ExperimentGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExperimentGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExperimentGetDTO.fromJson(value));
    }
    return map;
  }
}

