part of swagger.api;

class GermplasmCreationDTO {
  /* Germplasm URI */
  String uri = null;
  
/* rdfType URI */
  String rdfType = null;
  
/* Germplasm name */
  String name = null;
  

  List<String> synonyms = [];
  
/* Germplasm code (accessionNumber, varietyCode...) */
  String code = null;
  
/* production year */
  int productionYear = null;
  
/* comment */
  String description = null;
  
/* species URI */
  String species = null;
  
/* variety URI */
  String variety = null;
  
/* accession URI */
  String accession = null;
  
/* institute */
  String institute = null;
  
/* website */
  String website = null;
  

  Map<String, String> metadata = {};
  
  GermplasmCreationDTO();

  @override
  String toString() {
    return 'GermplasmCreationDTO[uri=$uri, rdfType=$rdfType, name=$name, synonyms=$synonyms, code=$code, productionYear=$productionYear, description=$description, species=$species, variety=$variety, accession=$accession, institute=$institute, website=$website, metadata=$metadata, ]';
  }

  GermplasmCreationDTO.fromJson(Map<String, dynamic> json) {
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
    synonyms =
        (json['synonyms'] as List).map((item) => item as String).toList()
    ;
    code =
        
            json['code']
    ;
    productionYear =
        
            json['production_year']
    ;
    description =
        
            json['description']
    ;
    species =
        
            json['species']
    ;
    variety =
        
            json['variety']
    ;
    accession =
        
            json['accession']
    ;
    institute =
        
            json['institute']
    ;
    website =
        
            json['website']
    ;
    metadata =
        (json['metadata'] as Map).map((key, value) => MapEntry(key as dynamic, value as dynamic))
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'name': name,
      'synonyms': synonyms,
      'code': code,
      'production_year': productionYear,
      'description': description,
      'species': species,
      'variety': variety,
      'accession': accession,
      'institute': institute,
      'website': website,
      'metadata': metadata
     };
  }

  static List<GermplasmCreationDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<GermplasmCreationDTO>() : json.map((value) => new GermplasmCreationDTO.fromJson(value)).toList();
  }

  static Map<String, GermplasmCreationDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GermplasmCreationDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GermplasmCreationDTO.fromJson(value));
    }
    return map;
  }

}

