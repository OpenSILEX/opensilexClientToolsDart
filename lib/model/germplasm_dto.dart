part of swagger.api;

class GermplasmDTO {
  
  String accessionNumber = null;
  

  String acquisitionDate = null;
  

  String additionalInfo = null;
  

  String biologicalStatusOfAccessionCode = null;
  

  String biologicalStatusOfAccessionDescription = null;
  

  String breedingMethodDbId = null;
  

  String collection = null;
  

  String commonCropName = null;
  

  String countryOfOriginCode = null;
  

  String defaultDisplayName = null;
  

  String documentationURL = null;
  

  List<Object> donors = [];
  

  List<Object> externalReferences = [];
  

  String genus = null;
  

  String germplasmDbId = null;
  

  String germplasmName = null;
  

  List<Object> germplasmOrigin = [];
  

  String germplasmPreprocessing = null;
  

  String instituteCode = null;
  

  String instituteName = null;
  

  String pedigree = null;
  

  String seedSource = null;
  

  String seedSourceDescription = null;
  

  String species = null;
  

  String speciesAuthority = null;
  

  List<Object> storageTypes = [];
  

  String subtaxa = null;
  

  String subtaxaAuthority = null;
  

  List<Object> synonyms = [];
  

  List<Object> taxonIds = [];
  
  GermplasmDTO();

  @override
  String toString() {
    return 'GermplasmDTO[accessionNumber=$accessionNumber, acquisitionDate=$acquisitionDate, additionalInfo=$additionalInfo, biologicalStatusOfAccessionCode=$biologicalStatusOfAccessionCode, biologicalStatusOfAccessionDescription=$biologicalStatusOfAccessionDescription, breedingMethodDbId=$breedingMethodDbId, collection=$collection, commonCropName=$commonCropName, countryOfOriginCode=$countryOfOriginCode, defaultDisplayName=$defaultDisplayName, documentationURL=$documentationURL, donors=$donors, externalReferences=$externalReferences, genus=$genus, germplasmDbId=$germplasmDbId, germplasmName=$germplasmName, germplasmOrigin=$germplasmOrigin, germplasmPreprocessing=$germplasmPreprocessing, instituteCode=$instituteCode, instituteName=$instituteName, pedigree=$pedigree, seedSource=$seedSource, seedSourceDescription=$seedSourceDescription, species=$species, speciesAuthority=$speciesAuthority, storageTypes=$storageTypes, subtaxa=$subtaxa, subtaxaAuthority=$subtaxaAuthority, synonyms=$synonyms, taxonIds=$taxonIds, ]';
  }

  GermplasmDTO.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessionNumber =
        
            json['accessionNumber']
    ;
    acquisitionDate =
        
            json['acquisitionDate']
    ;
    additionalInfo =
        
            json['additionalInfo']
    ;
    biologicalStatusOfAccessionCode =
        
            json['biologicalStatusOfAccessionCode']
    ;
    biologicalStatusOfAccessionDescription =
        
            json['biologicalStatusOfAccessionDescription']
    ;
    breedingMethodDbId =
        
            json['breedingMethodDbId']
    ;
    collection =
        
            json['collection']
    ;
    commonCropName =
        
            json['commonCropName']
    ;
    countryOfOriginCode =
        
            json['countryOfOriginCode']
    ;
    defaultDisplayName =
        
            json['defaultDisplayName']
    ;
    documentationURL =
        
            json['documentationURL']
    ;
    donors =
       ((json['donors'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    externalReferences =
       ((json['externalReferences'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    genus =
        
            json['genus']
    ;
    germplasmDbId =
        
            json['germplasmDbId']
    ;
    germplasmName =
        
            json['germplasmName']
    ;
    germplasmOrigin =
       ((json['germplasmOrigin'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    germplasmPreprocessing =
        
            json['germplasmPreprocessing']
    ;
    instituteCode =
        
            json['instituteCode']
    ;
    instituteName =
        
            json['instituteName']
    ;
    pedigree =
        
            json['pedigree']
    ;
    seedSource =
        
            json['seedSource']
    ;
    seedSourceDescription =
        
            json['seedSourceDescription']
    ;
    species =
        
            json['species']
    ;
    speciesAuthority =
        
            json['speciesAuthority']
    ;
    storageTypes =
       ((json['storageTypes'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    subtaxa =
        
            json['subtaxa']
    ;
    subtaxaAuthority =
        
            json['subtaxaAuthority']
    ;
    synonyms =
       ((json['synonyms'] as List).map((e) => e as Map<String, dynamic>).toList())
;
    taxonIds =
       ((json['taxonIds'] as List).map((e) => e as Map<String, dynamic>).toList())
;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessionNumber': accessionNumber,
      'acquisitionDate': acquisitionDate,
      'additionalInfo': additionalInfo,
      'biologicalStatusOfAccessionCode': biologicalStatusOfAccessionCode,
      'biologicalStatusOfAccessionDescription': biologicalStatusOfAccessionDescription,
      'breedingMethodDbId': breedingMethodDbId,
      'collection': collection,
      'commonCropName': commonCropName,
      'countryOfOriginCode': countryOfOriginCode,
      'defaultDisplayName': defaultDisplayName,
      'documentationURL': documentationURL,
      'donors': donors,
      'externalReferences': externalReferences,
      'genus': genus,
      'germplasmDbId': germplasmDbId,
      'germplasmName': germplasmName,
      'germplasmOrigin': germplasmOrigin,
      'germplasmPreprocessing': germplasmPreprocessing,
      'instituteCode': instituteCode,
      'instituteName': instituteName,
      'pedigree': pedigree,
      'seedSource': seedSource,
      'seedSourceDescription': seedSourceDescription,
      'species': species,
      'speciesAuthority': speciesAuthority,
      'storageTypes': storageTypes,
      'subtaxa': subtaxa,
      'subtaxaAuthority': subtaxaAuthority,
      'synonyms': synonyms,
      'taxonIds': taxonIds
     };
  }

  static List<GermplasmDTO> listFromJson(List<dynamic> json) {
    return json == null ? new List<GermplasmDTO>() : json.map((value) => new GermplasmDTO.fromJson(value)).toList();
  }

  static Map<String, GermplasmDTO> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GermplasmDTO>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GermplasmDTO.fromJson(value));
    }
    return map;
  }

}

