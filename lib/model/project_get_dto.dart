part of swagger.api;

class ProjectGetDTO {
  
  String uri = null;
  

  String name = null;
  

  String shortname = null;
  

  DateTime startDate = null;
  

  DateTime endDate = null;
  

  String description = null;
  

  String objective = null;
  

  String financialFunding = null;
  

  String website = null;
  

  List<String> relatedProjects = [];
  

  List<String> coordinators = [];
  

  List<String> scientificContacts = [];
  

  List<String> administrativeContacts = [];
  

  List<String> experiments = [];
  
  ProjectGetDTO();

  @override
  String toString() {
    return 'ProjectGetDTO[uri=$uri, name=$name, shortname=$shortname, startDate=$startDate, endDate=$endDate, description=$description, objective=$objective, financialFunding=$financialFunding, website=$website, relatedProjects=$relatedProjects, coordinators=$coordinators, scientificContacts=$scientificContacts, administrativeContacts=$administrativeContacts, experiments=$experiments, ]';
  }

  ProjectGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    name =
        json['name']
    ;
    shortname =
        json['shortname']
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
    financialFunding =
        json['financial_funding']
    ;
    website =
        json['website']
    ;
    relatedProjects =
        (json['related_projects'] as List).map((item) => item as String).toList()
    ;
    coordinators =
        (json['coordinators'] as List).map((item) => item as String).toList()
    ;
    scientificContacts =
        (json['scientific_contacts'] as List).map((item) => item as String).toList()
    ;
    administrativeContacts =
        (json['administrative_contacts'] as List).map((item) => item as String).toList()
    ;
    experiments =
        (json['experiments'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'name': name,
      'shortname': shortname,
      'start_date': startDate,
      'end_date': endDate,
      'description': description,
      'objective': objective,
      'financial_funding': financialFunding,
      'website': website,
      'related_projects': relatedProjects,
      'coordinators': coordinators,
      'scientific_contacts': scientificContacts,
      'administrative_contacts': administrativeContacts,
      'experiments': experiments
     };
  }

  static List<ProjectGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProjectGetDTO>() : json.map((value) => new ProjectGetDTO.fromJson(value)).toList();
  }

  static Map<String, ProjectGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProjectGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProjectGetDTO.fromJson(value));
    }
    return map;
  }
}

