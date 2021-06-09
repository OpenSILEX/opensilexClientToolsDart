part of swagger.api;

class DeviceCreationDTO {
  /* Device URI */
  String uri = null;
  
/* rdfType URI */
  String rdfType = null;
  
/* Device name */
  String name = null;
  

  String brand = null;
  

  String constructorModel = null;
  

  String serialNumber = null;
  

  String personInCharge = null;
  

  DateTime startUp = null;
  

  DateTime removal = null;
  

  List<RDFObjectRelationDTO> relations = [];
  

  String description = null;
  

  Map<String, String> metadata = {};
  
  DeviceCreationDTO();

  @override
  String toString() {
    return 'DeviceCreationDTO[uri=$uri, rdfType=$rdfType, name=$name, brand=$brand, constructorModel=$constructorModel, serialNumber=$serialNumber, personInCharge=$personInCharge, startUp=$startUp, removal=$removal, relations=$relations, description=$description, metadata=$metadata, ]';
  }

  DeviceCreationDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    rdfType =
        json['rdf_type']
    ;
    name =
        json['name']
    ;
    brand =
        json['brand']
    ;
    constructorModel =
        json['constructor_model']
    ;
    serialNumber =
        json['serial_number']
    ;
    personInCharge =
        json['person_in_charge']
    ;
    startUp =
      
 
      
 
       json['start_up'] == null ? null : DateTime.parse(json['start_up'])
;
    removal =
      
 
      
 
       json['removal'] == null ? null : DateTime.parse(json['removal'])
;
    relations =
      RDFObjectRelationDTO.listFromJson(json['relations'])
;
    description =
        json['description']
    ;
    metadata =
        json['metadata']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'name': name,
      'brand': brand,
      'constructor_model': constructorModel,
      'serial_number': serialNumber,
      'person_in_charge': personInCharge,
      'start_up': startUp,
      'removal': removal,
      'relations': relations,
      'description': description,
      'metadata': metadata
     };
  }

  static List<DeviceCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeviceCreationDTO>() : json.map((value) => new DeviceCreationDTO.fromJson(value)).toList();
  }

  static Map<String, DeviceCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeviceCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeviceCreationDTO.fromJson(value));
    }
    return map;
  }
}

