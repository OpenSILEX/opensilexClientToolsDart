part of swagger.api;

class MetadataDTO {
  
  PaginationDTO pagination = null;
  

  List<StatusDTO> status = [];
  

  List<String> datafiles = [];
  
  MetadataDTO();

  @override
  String toString() {
    return 'MetadataDTO[pagination=$pagination, status=$status, datafiles=$datafiles, ]';
  }

  MetadataDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    pagination =
      
 
      
 
      new PaginationDTO.fromJson(json['pagination'])
;
    status =
      StatusDTO.listFromJson((json['status'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    datafiles =
        (json['datafiles'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'pagination': pagination,
      'status': status,
      'datafiles': datafiles
     };
  }

  static List<MetadataDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<MetadataDTO>() : json.map((value) => new MetadataDTO.fromJson(value)).toList();
  }

  static Map<String, MetadataDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MetadataDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MetadataDTO.fromJson(value));
    }
    return map;
  }

}

