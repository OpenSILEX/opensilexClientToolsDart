part of swagger.api;

class GermplasmGetSingleDTO {
  
  String uri = null;
  

  String rdfType = null;
  

  String rdfTypeName = null;
  

  String name = null;
  

  List<String> synonyms = [];
  

  String code = null;
  

  int productionYear = null;
  

  String description = null;
  

  String species = null;
  

  String speciesName = null;
  

  String variety = null;
  

  String varietyName = null;
  

  String accession = null;
  

  String accessionName = null;
  

  String institute = null;
  

  String website = null;
  

  Map<String, String> metadata = {};
  
  GermplasmGetSingleDTO();

  @override
  String toString() {
    return 'GermplasmGetSingleDTO[uri=$uri, rdfType=$rdfType, rdfTypeName=$rdfTypeName, name=$name, synonyms=$synonyms, code=$code, productionYear=$productionYear, description=$description, species=$species, speciesName=$speciesName, variety=$variety, varietyName=$varietyName, accession=$accession, accessionName=$accessionName, institute=$institute, website=$website, metadata=$metadata, ]';
  }

  GermplasmGetSingleDTO.fromJson(Map<String, dynamic> json) {
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
    speciesName =
        json['species_name']
    ;
    variety =
        json['variety']
    ;
    varietyName =
        json['variety_name']
    ;
    accession =
        json['accession']
    ;
    accessionName =
        json['accession_name']
    ;
    institute =
        json['institute']
    ;
    website =
        json['website']
    ;
    metadata =
        json['metadata']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'rdf_type': rdfType,
      'rdf_type_name': rdfTypeName,
      'name': name,
      'synonyms': synonyms,
      'code': code,
      'production_year': productionYear,
      'description': description,
      'species': species,
      'species_name': speciesName,
      'variety': variety,
      'variety_name': varietyName,
      'accession': accession,
      'accession_name': accessionName,
      'institute': institute,
      'website': website,
      'metadata': metadata
     };
  }

  static List<GermplasmGetSingleDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<GermplasmGetSingleDTO>() : json.map((value) => new GermplasmGetSingleDTO.fromJson(value)).toList();
  }

  static Map<String, GermplasmGetSingleDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GermplasmGetSingleDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GermplasmGetSingleDTO.fromJson(value));
    }
    return map;
  }
}

