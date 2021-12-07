part of swagger.api;

class ApiGitCommitDTO {
  
  String commitId = null;
  

  String commitMessage = null;
  
  ApiGitCommitDTO();

  @override
  String toString() {
    return 'ApiGitCommitDTO[commitId=$commitId, commitMessage=$commitMessage, ]';
  }

  ApiGitCommitDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    commitId =
        json['commit_id']
    ;
    commitMessage =
        json['commit_message']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'commit_id': commitId,
      'commit_message': commitMessage
     };
  }

  static List<ApiGitCommitDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiGitCommitDTO>() : json.map((value) => new ApiGitCommitDTO.fromJson(value)).toList();
  }

  static Map<String, ApiGitCommitDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiGitCommitDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiGitCommitDTO.fromJson(value));
    }
    return map;
  }
}

