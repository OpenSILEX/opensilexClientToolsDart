part of swagger.api;

class VersionInfoDTO {
  /* Opensilex instance name */
  String title = null;
  
/* Opensilex API version */
  String version = null;
  
/* Opensilex description */
  String description = null;
  

  ApiContactInfoDTO contact = null;
  

  ApiLicenseInfoDTO license = null;
  

  List<ApiModulesInfo> modulesVersion = [];
  

  ApiExternalDocsDTO externalDocs = null;
  

  ApiExternalDocsDTO apiDocs = null;
  

  ApiGitCommitDTO gitCommit = null;
  

  String githubPage = null;
  
  VersionInfoDTO();

  @override
  String toString() {
    return 'VersionInfoDTO[title=$title, version=$version, description=$description, contact=$contact, license=$license, modulesVersion=$modulesVersion, externalDocs=$externalDocs, apiDocs=$apiDocs, gitCommit=$gitCommit, githubPage=$githubPage, ]';
  }

  VersionInfoDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title =
        
            json['title']
    ;
    version =
        
            json['version']
    ;
    description =
        
            json['description']
    ;
    contact =
      
 
      
 
      new ApiContactInfoDTO.fromJson(json['contact'])
;
    license =
      
 
      
 
      new ApiLicenseInfoDTO.fromJson(json['license'])
;
    modulesVersion =
      ApiModulesInfo.listFromJson((json['modules_version'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    externalDocs =
      
 
      
 
      new ApiExternalDocsDTO.fromJson(json['external_docs'])
;
    apiDocs =
      
 
      
 
      new ApiExternalDocsDTO.fromJson(json['api_docs'])
;
    gitCommit =
      
 
      
 
      new ApiGitCommitDTO.fromJson(json['git_commit'])
;
    githubPage =
        
            json['github_page']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'version': version,
      'description': description,
      'contact': contact,
      'license': license,
      'modules_version': modulesVersion,
      'external_docs': externalDocs,
      'api_docs': apiDocs,
      'git_commit': gitCommit,
      'github_page': githubPage
     };
  }

  static List<VersionInfoDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<VersionInfoDTO>() : json.map((value) => new VersionInfoDTO.fromJson(value)).toList();
  }

  static Map<String, VersionInfoDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VersionInfoDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VersionInfoDTO.fromJson(value));
    }
    return map;
  }

}

