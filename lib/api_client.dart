part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  String token;
  DateTime lastTokenSetTime;
  var client = new Client();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://localhost"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  //added by max :--------------------
  AuthenticationApi api_instance_auth;
  void logOutOfOpenSILEX() async {
    if (api_instance_auth != null) {
      api_instance_auth.logout();
    }
  }
   
  connectToOpenSILEX({
    String identifier: "",
    String password: "",
    String host: ""}) async {
    await _connect(host, identifier, password);
    // Setup authentications (key: authentication name, value: authentication).
  }

  Future<void> resetAuthToken() async{
    DateTime now = DateTime.now();
    if(now.difference(this.lastTokenSetTime).inMinutes>=15){
      AuthenticationApi authApi = AuthenticationApi(this);
      TokenGetDTO tokenDto = await authApi.renewToken(acceptLanguage: 'en');
      this.token = tokenDto.token;
      lastTokenSetTime = now;
    }

  }

  _connect(String host, String identifier, String password) async {
    this.basePath = host;
    var api_instance_auth = new AuthenticationApi(this);
    var authenticate = new AuthenticationDTO(); 

    authenticate.identifier = identifier;
    authenticate.password = password;

    try {
      var result = await api_instance_auth.authenticate(body: authenticate);
      this.token = result.token;
      this.lastTokenSetTime = DateTime.now();
      if (this.token == null) {
        throw new Exception("Error on connection" );
      }
    } catch (e) {
      throw new Exception("Error on connection $e" );
    }
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    if(value["metadata"] != null && value["result"] != null){
       value = value["result"];
    } 

    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ActivityCreationDTO':
          return new ActivityCreationDTO.fromJson(value);
        case 'ActivityGetDTO':
          return new ActivityGetDTO.fromJson(value);
        case 'AgentModel':
          return new AgentModel.fromJson(value);
        case 'AnnotationCreationDTO':
          return new AnnotationCreationDTO.fromJson(value);
        case 'AnnotationGetDTO':
          return new AnnotationGetDTO.fromJson(value);
        case 'AnnotationUpdateDTO':
          return new AnnotationUpdateDTO.fromJson(value);
        case 'ApiContactInfoDTO':
          return new ApiContactInfoDTO.fromJson(value);
        case 'ApiExternalDocsDTO':
          return new ApiExternalDocsDTO.fromJson(value);
        case 'ApiGitCommitDTO':
          return new ApiGitCommitDTO.fromJson(value);
        case 'ApiLicenseInfoDTO':
          return new ApiLicenseInfoDTO.fromJson(value);
        case 'ApiModulesInfo':
          return new ApiModulesInfo.fromJson(value);
        case 'AreaCreationDTO':
          return new AreaCreationDTO.fromJson(value);
        case 'AreaGetDTO':
          return new AreaGetDTO.fromJson(value);
        case 'AreaUpdateDTO':
          return new AreaUpdateDTO.fromJson(value);
        case 'AuthenticationDTO':
          return new AuthenticationDTO.fromJson(value);
        case 'CSVCell':
          return new CSVCell.fromJson(value);
        case 'CSVDatatypeError':
          return new CSVDatatypeError.fromJson(value);
        case 'CSVDuplicateURIError':
          return new CSVDuplicateURIError.fromJson(value);
        case 'CSVURINotFoundError':
          return new CSVURINotFoundError.fromJson(value);
        case 'CSVValidationDTO':
          return new CSVValidationDTO.fromJson(value);
        case 'CSVValidationModel':
          return new CSVValidationModel.fromJson(value);
        case 'Call':
          return new Call.fromJson(value);
        case 'CharacteristicCreationDTO':
          return new CharacteristicCreationDTO.fromJson(value);
        case 'CharacteristicDetailsDTO':
          return new CharacteristicDetailsDTO.fromJson(value);
        case 'CharacteristicGetDTO':
          return new CharacteristicGetDTO.fromJson(value);
        case 'CharacteristicUpdateDTO':
          return new CharacteristicUpdateDTO.fromJson(value);
        case 'CodeLotCSVValidationDTO':
          return new CodeLotCSVValidationDTO.fromJson(value);
        case 'CodeLotCSVValidationModel':
          return new CodeLotCSVValidationModel.fromJson(value);
        case 'Contact':
          return new Contact.fromJson(value);
        case 'CredentialDTO':
          return new CredentialDTO.fromJson(value);
        case 'CredentialsGroupDTO':
          return new CredentialsGroupDTO.fromJson(value);
        case 'Crs':
          return new Crs.fromJson(value);
        case 'DataCSVValidationDTO':
          return new DataCSVValidationDTO.fromJson(value);
        case 'DataCSVValidationModel':
          return new DataCSVValidationModel.fromJson(value);
        case 'DataConfidenceDTO':
          return new DataConfidenceDTO.fromJson(value);
        case 'DataCreationDTO':
          return new DataCreationDTO.fromJson(value);
        case 'DataFileGetDTO':
          return new DataFileGetDTO.fromJson(value);
        case 'DataFilePathCreationDTO':
          return new DataFilePathCreationDTO.fromJson(value);
        case 'DataGetDTO':
          return new DataGetDTO.fromJson(value);
        case 'DataLink':
          return new DataLink.fromJson(value);
        case 'DataProvenanceModel':
          return new DataProvenanceModel.fromJson(value);
        case 'DataUpdateDTO':
          return new DataUpdateDTO.fromJson(value);
        case 'DeviceCreationDTO':
          return new DeviceCreationDTO.fromJson(value);
        case 'DeviceGetDTO':
          return new DeviceGetDTO.fromJson(value);
        case 'DeviceGetDetailsDTO':
          return new DeviceGetDetailsDTO.fromJson(value);
        case 'DocumentGetDTO':
          return new DocumentGetDTO.fromJson(value);
        case 'DocumentationLink':
          return new DocumentationLink.fromJson(value);
        case 'EntityCreationDTO':
          return new EntityCreationDTO.fromJson(value);
        case 'EntityDetailsDTO':
          return new EntityDetailsDTO.fromJson(value);
        case 'EntityGetDTO':
          return new EntityGetDTO.fromJson(value);
        case 'EntityUpdateDTO':
          return new EntityUpdateDTO.fromJson(value);
        case 'ErrorDTO':
          return new ErrorDTO.fromJson(value);
        case 'ErrorResponse':
          return new ErrorResponse.fromJson(value);
        case 'EventCreationDTO':
          return new EventCreationDTO.fromJson(value);
        case 'EventDetailsDTO':
          return new EventDetailsDTO.fromJson(value);
        case 'EventGetDTO':
          return new EventGetDTO.fromJson(value);
        case 'EventUpdateDTO':
          return new EventUpdateDTO.fromJson(value);
        case 'ExperimentCreationDTO':
          return new ExperimentCreationDTO.fromJson(value);
        case 'ExperimentGetDTO':
          return new ExperimentGetDTO.fromJson(value);
        case 'ExperimentGetListDTO':
          return new ExperimentGetListDTO.fromJson(value);
        case 'FactorCategoryGetDTO':
          return new FactorCategoryGetDTO.fromJson(value);
        case 'FactorCreationDTO':
          return new FactorCreationDTO.fromJson(value);
        case 'FactorDetailsGetDTO':
          return new FactorDetailsGetDTO.fromJson(value);
        case 'FactorGetDTO':
          return new FactorGetDTO.fromJson(value);
        case 'FactorLevelCreationDTO':
          return new FactorLevelCreationDTO.fromJson(value);
        case 'FactorLevelGetDTO':
          return new FactorLevelGetDTO.fromJson(value);
        case 'FactorLevelGetDetailDTO':
          return new FactorLevelGetDetailDTO.fromJson(value);
        case 'FactorUpdateDTO':
          return new FactorUpdateDTO.fromJson(value);
        case 'FontConfigDTO':
          return new FontConfigDTO.fromJson(value);
        case 'FormCreationDTO':
          return new FormCreationDTO.fromJson(value);
        case 'FormGetDTO':
          return new FormGetDTO.fromJson(value);
        case 'FormUpdateDTO':
          return new FormUpdateDTO.fromJson(value);
        case 'FrontConfigDTO':
          return new FrontConfigDTO.fromJson(value);
        case 'GeoJsonObject':
          return new GeoJsonObject.fromJson(value);
        case 'GermplasmCreationDTO':
          return new GermplasmCreationDTO.fromJson(value);
        case 'GermplasmDTO':
          return new GermplasmDTO.fromJson(value);
        case 'GermplasmGetAllDTO':
          return new GermplasmGetAllDTO.fromJson(value);
        case 'GermplasmGetSingleDTO':
          return new GermplasmGetSingleDTO.fromJson(value);
        case 'GermplasmUpdateDTO':
          return new GermplasmUpdateDTO.fromJson(value);
        case 'GroupCreationDTO':
          return new GroupCreationDTO.fromJson(value);
        case 'GroupDTO':
          return new GroupDTO.fromJson(value);
        case 'GroupUpdateDTO':
          return new GroupUpdateDTO.fromJson(value);
        case 'GroupUserProfileDTO':
          return new GroupUserProfileDTO.fromJson(value);
        case 'InfrastructureCreationDTO':
          return new InfrastructureCreationDTO.fromJson(value);
        case 'InfrastructureFacilityCreationDTO':
          return new InfrastructureFacilityCreationDTO.fromJson(value);
        case 'InfrastructureFacilityGetDTO':
          return new InfrastructureFacilityGetDTO.fromJson(value);
        case 'InfrastructureFacilityNamedDTO':
          return new InfrastructureFacilityNamedDTO.fromJson(value);
        case 'InfrastructureFacilityUpdateDTO':
          return new InfrastructureFacilityUpdateDTO.fromJson(value);
        case 'InfrastructureGetDTO':
          return new InfrastructureGetDTO.fromJson(value);
        case 'InfrastructureUpdateDTO':
          return new InfrastructureUpdateDTO.fromJson(value);
        case 'InterestEntityCreationDTO':
          return new InterestEntityCreationDTO.fromJson(value);
        case 'InterestEntityDetailsDTO':
          return new InterestEntityDetailsDTO.fromJson(value);
        case 'InterestEntityGetDTO':
          return new InterestEntityGetDTO.fromJson(value);
        case 'InterestEntityUpdateDTO':
          return new InterestEntityUpdateDTO.fromJson(value);
        case 'Level':
          return new Level.fromJson(value);
        case 'ListItemDTO':
          return new ListItemDTO.fromJson(value);
        case 'LngLatAlt':
          return new LngLatAlt.fromJson(value);
        case 'Location':
          return new Location.fromJson(value);
        case 'MenuItemDTO':
          return new MenuItemDTO.fromJson(value);
        case 'MetadataDTO':
          return new MetadataDTO.fromJson(value);
        case 'Method':
          return new Method.fromJson(value);
        case 'MethodCreationDTO':
          return new MethodCreationDTO.fromJson(value);
        case 'MethodDetailsDTO':
          return new MethodDetailsDTO.fromJson(value);
        case 'MethodGetDTO':
          return new MethodGetDTO.fromJson(value);
        case 'MethodUpdateDTO':
          return new MethodUpdateDTO.fromJson(value);
        case 'MotivationGetDTO':
          return new MotivationGetDTO.fromJson(value);
        case 'MoveCreationDTO':
          return new MoveCreationDTO.fromJson(value);
        case 'MoveDetailsDTO':
          return new MoveDetailsDTO.fromJson(value);
        case 'MoveUpdateDTO':
          return new MoveUpdateDTO.fromJson(value);
        case 'NamedResourceDTO':
          return new NamedResourceDTO.fromJson(value);
        case 'NamedResourceDTOExperimentModel':
          return new NamedResourceDTOExperimentModel.fromJson(value);
        case 'NamedResourceDTOFactorLevelModel':
          return new NamedResourceDTOFactorLevelModel.fromJson(value);
        case 'NamedResourceDTOGroupModel':
          return new NamedResourceDTOGroupModel.fromJson(value);
        case 'NamedResourceDTOInfrastructureFacilityModel':
          return new NamedResourceDTOInfrastructureFacilityModel.fromJson(value);
        case 'NamedResourceDTOInfrastructureModel':
          return new NamedResourceDTOInfrastructureModel.fromJson(value);
        case 'NamedResourceDTOInterestEntityModel':
          return new NamedResourceDTOInterestEntityModel.fromJson(value);
        case 'NamedResourceDTOProjectModel':
          return new NamedResourceDTOProjectModel.fromJson(value);
        case 'OWLClassPropertyRestrictionDTO':
          return new OWLClassPropertyRestrictionDTO.fromJson(value);
        case 'ObjectUriResponse':
          return new ObjectUriResponse.fromJson(value);
        case 'ObservationDTO':
          return new ObservationDTO.fromJson(value);
        case 'ObservationSummary':
          return new ObservationSummary.fromJson(value);
        case 'ObservationTreatment':
          return new ObservationTreatment.fromJson(value);
        case 'ObservationUnitDTO':
          return new ObservationUnitDTO.fromJson(value);
        case 'ObservationUnitXref':
          return new ObservationUnitXref.fromJson(value);
        case 'ObservationVariableDTO':
          return new ObservationVariableDTO.fromJson(value);
        case 'OntologyReference':
          return new OntologyReference.fromJson(value);
        case 'OrderBy':
          return new OrderBy.fromJson(value);
        case 'PaginationDTO':
          return new PaginationDTO.fromJson(value);
        case 'PositionCreationDTO':
          return new PositionCreationDTO.fromJson(value);
        case 'PositionGetDTO':
          return new PositionGetDTO.fromJson(value);
        case 'PositionGetDetailDTO':
          return new PositionGetDetailDTO.fromJson(value);
        case 'ProfileCreationDTO':
          return new ProfileCreationDTO.fromJson(value);
        case 'ProfileGetDTO':
          return new ProfileGetDTO.fromJson(value);
        case 'ProfileUpdateDTO':
          return new ProfileUpdateDTO.fromJson(value);
        case 'ProjectCreationDTO':
          return new ProjectCreationDTO.fromJson(value);
        case 'ProjectGetDTO':
          return new ProjectGetDTO.fromJson(value);
        case 'ProjectGetDetailDTO':
          return new ProjectGetDetailDTO.fromJson(value);
        case 'ProvEntityModel':
          return new ProvEntityModel.fromJson(value);
        case 'ProvenanceCreationDTO':
          return new ProvenanceCreationDTO.fromJson(value);
        case 'ProvenanceGetDTO':
          return new ProvenanceGetDTO.fromJson(value);
        case 'ProvenanceUpdateDTO':
          return new ProvenanceUpdateDTO.fromJson(value);
        case 'RDFObjectRelationDTO':
          return new RDFObjectRelationDTO.fromJson(value);
        case 'RDFPropertyDTO':
          return new RDFPropertyDTO.fromJson(value);
        case 'RDFTypeDTO':
          return new RDFTypeDTO.fromJson(value);
        case 'ResourceDagDTO':
          return new ResourceDagDTO.fromJson(value);
        case 'ResourceTreeDTO':
          return new ResourceTreeDTO.fromJson(value);
        case 'RouteDTO':
          return new RouteDTO.fromJson(value);
        case 'Scale':
          return new Scale.fromJson(value);
        case 'ScientificObjectCreationDTO':
          return new ScientificObjectCreationDTO.fromJson(value);
        case 'ScientificObjectDetailByExperimentsDTO':
          return new ScientificObjectDetailByExperimentsDTO.fromJson(value);
        case 'ScientificObjectDetailDTO':
          return new ScientificObjectDetailDTO.fromJson(value);
        case 'ScientificObjectNodeDTO':
          return new ScientificObjectNodeDTO.fromJson(value);
        case 'ScientificObjectNodeWithChildrenDTO':
          return new ScientificObjectNodeWithChildrenDTO.fromJson(value);
        case 'ScientificObjectSearchDTO':
          return new ScientificObjectSearchDTO.fromJson(value);
        case 'ScientificObjectUpdateDTO':
          return new ScientificObjectUpdateDTO.fromJson(value);
        case 'Season':
          return new Season.fromJson(value);
        case 'SectionCreationDTO':
          return new SectionCreationDTO.fromJson(value);
        case 'SectionGetDTO':
          return new SectionGetDTO.fromJson(value);
        case 'SectionUpdateDTO':
          return new SectionUpdateDTO.fromJson(value);
        case 'SpeciesDTO':
          return new SpeciesDTO.fromJson(value);
        case 'StatusDTO':
          return new StatusDTO.fromJson(value);
        case 'StudyDTO':
          return new StudyDTO.fromJson(value);
        case 'StudyDetailsDTO':
          return new StudyDetailsDTO.fromJson(value);
        case 'TargetPositionCreationDTO':
          return new TargetPositionCreationDTO.fromJson(value);
        case 'TargetPositionGetDTO':
          return new TargetPositionGetDTO.fromJson(value);
        case 'ThemeConfigDTO':
          return new ThemeConfigDTO.fromJson(value);
        case 'TokenGetDTO':
          return new TokenGetDTO.fromJson(value);
        case 'Trait':
          return new Trait.fromJson(value);
        case 'URITypesDTO':
          return new URITypesDTO.fromJson(value);
        case 'URIsListPostDTO':
          return new URIsListPostDTO.fromJson(value);
        case 'UnitCreationDTO':
          return new UnitCreationDTO.fromJson(value);
        case 'UnitDetailsDTO':
          return new UnitDetailsDTO.fromJson(value);
        case 'UnitGetDTO':
          return new UnitGetDTO.fromJson(value);
        case 'UnitUpdateDTO':
          return new UnitUpdateDTO.fromJson(value);
        case 'UserCreationDTO':
          return new UserCreationDTO.fromJson(value);
        case 'UserGetDTO':
          return new UserGetDTO.fromJson(value);
        case 'UserUpdateDTO':
          return new UserUpdateDTO.fromJson(value);
        case 'VariableCreationDTO':
          return new VariableCreationDTO.fromJson(value);
        case 'VariableDatatypeDTO':
          return new VariableDatatypeDTO.fromJson(value);
        case 'VariableDetailsDTO':
          return new VariableDetailsDTO.fromJson(value);
        case 'VariableGetDTO':
          return new VariableGetDTO.fromJson(value);
        case 'VariableUpdateDTO':
          return new VariableUpdateDTO.fromJson(value);
        case 'VariablesGroupCreationDTO':
          return new VariablesGroupCreationDTO.fromJson(value);
        case 'VariablesGroupGetDTO':
          return new VariablesGroupGetDTO.fromJson(value);
        case 'VariablesGroupUpdateDTO':
          return new VariablesGroupUpdateDTO.fromJson(value);
        case 'VersionInfoDTO':
          return new VersionInfoDTO.fromJson(value);
        case 'VueDataTypeDTO':
          return new VueDataTypeDTO.fromJson(value);
        case 'VueObjectTypeDTO':
          return new VueObjectTypeDTO.fromJson(value);
        case 'VueRDFTypeDTO':
          return new VueRDFTypeDTO.fromJson(value);
        case 'VueRDFTypeParameterDTO':
          return new VueRDFTypeParameterDTO.fromJson(value);
        case 'VueRDFTypePropertyDTO':
          return new VueRDFTypePropertyDTO.fromJson(value);
        case 'Feature':
          return new Feature.fromJson(value);
        case 'FeatureCollection':
          return new FeatureCollection.fromJson(value);
        case 'GeometryCollection':
          return new GeometryCollection.fromJson(value);
        case 'LineString':
          return new LineString.fromJson(value);
        case 'MultiLineString':
          return new MultiLineString.fromJson(value);
        case 'MultiPoint':
          return new MultiPoint.fromJson(value);
        case 'MultiPolygon':
          return new MultiPolygon.fromJson(value);
        case 'Point':
          return new Point.fromJson(value);
        case 'Polygon':
          return new Polygon.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(Uri.parse(url), headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(Uri.parse(url), headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(Uri.parse(url), headers: headerParams);
        case "PATCH":
          return client.patch(Uri.parse(url), headers: headerParams, body: msgBody);
        default:
          return client.get(Uri.parse(url), headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
