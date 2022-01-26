part of swagger.api;

class StatusDTO {
  
  String message = null;
  

  Level messageType = null;
  
  StatusDTO();

  @override
  String toString() {
    return 'StatusDTO[message=$message, messageType=$messageType, ]';
  }

  StatusDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    message =
        
            json['message']
    ;
    messageType =
      
 
      
 
      new Level.fromJson(json['messageType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'messageType': messageType
     };
  }

  static List<StatusDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatusDTO>() : json.map((value) => new StatusDTO.fromJson(value)).toList();
  }

  static Map<String, StatusDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatusDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatusDTO.fromJson(value));
    }
    return map;
  }

}

