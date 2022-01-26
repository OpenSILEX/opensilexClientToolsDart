part of swagger.api;

class GermplasmGetAllDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  String species = null;
  

  String speciesName = null;
  
  GermplasmGetAllDTO();

  @override
  String toString() {
    return 'GermplasmGetAllDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, species=$species, speciesName=$speciesName, ]';
  }

  GermplasmGetAllDTO.fromJson(Map<String, dynamic> json) {
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
    species =
        
            json['species']
    ;
    speciesName =
        
            json['species_name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'species': species,
      'species_name': speciesName
     };
  }

  static List<GermplasmGetAllDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<GermplasmGetAllDTO>() : json.map((value) => new GermplasmGetAllDTO.fromJson(value)).toList();
  }

  static Map<String, GermplasmGetAllDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GermplasmGetAllDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GermplasmGetAllDTO.fromJson(value));
    }
    return map;
  }

}

