part of swagger.api;

class PaginationDTO {
  
  int pageSize = null;
  

  int currentPage = null;
  

  int totalCount = null;
  

  int totalPages = null;
  
  PaginationDTO();

  @override
  String toString() {
    return 'PaginationDTO[pageSize=$pageSize, currentPage=$currentPage, totalCount=$totalCount, totalPages=$totalPages, ]';
  }

  PaginationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pageSize =
        json['pageSize']
    ;
    currentPage =
        json['currentPage']
    ;
    totalCount =
        json['totalCount']
    ;
    totalPages =
        json['totalPages']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'pageSize': pageSize,
      'currentPage': currentPage,
      'totalCount': totalCount,
      'totalPages': totalPages
     };
  }

  static List<PaginationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaginationDTO>() : json.map((value) => new PaginationDTO.fromJson(value)).toList();
  }

  static Map<String, PaginationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaginationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaginationDTO.fromJson(value));
    }
    return map;
  }
}

