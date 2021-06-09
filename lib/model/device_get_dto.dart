part of swagger.api;

class DeviceGetDTO {
  
  String uri = null;
  
/* rdfType URI */
  String rdfType = null;
  

  String rdfTypeName = null;
  
/* Device name */
  String name = null;
  
/* Device brand */
  String brand = null;
  
/* Device model */
  String constructorModel = null;
  
/* Device serial number */
  String serialNumber = null;
  
/* Person in charge */
  String personInCharge = null;
  
/* Device date of start-up */
  DateTime startUp = null;
  
/* Device date of removal */
  DateTime removal = null;
  

  List<RDFObjectRelationDTO> relations = [];
  
/* comment */
  String description = null;
  
  DeviceGetDTO();

  @override
  String toString() {
    return 'DeviceGetDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, brand=$brand, constructorModel=$constructorModel, serialNumber=$serialNumber, personInCharge=$personInCharge, startUp=$startUp, removal=$removal, relations=$relations, description=$description, ]';
  }

  DeviceGetDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    uri =
        json['uri']
    ;
    rdfType =
        json['rdf_type']
    ;
    rdfTypeName =
        json['rdf_type_name']
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
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'brand': brand,
      'constructor_model': constructorModel,
      'serial_number': serialNumber,
      'person_in_charge': personInCharge,
      'start_up': startUp,
      'removal': removal,
      'relations': relations,
      'description': description
     };
  }

  static List<DeviceGetDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeviceGetDTO>() : json.map((value) => new DeviceGetDTO.fromJson(value)).toList();
  }

  static Map<String, DeviceGetDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeviceGetDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeviceGetDTO.fromJson(value));
    }
    return map;
  }
}

