library swagger.api;

import '../api.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/annotations_api.dart';
part 'api/area_api.dart';
part 'api/authentication_api.dart';
part 'api/brapi_api.dart';
part 'api/data_api.dart';
part 'api/devices_api.dart';
part 'api/documents_api.dart';
part 'api/events_api.dart';
part 'api/experiments_api.dart';
part 'api/factors_api.dart';
part 'api/germplasm_api.dart';
part 'api/mobile_api.dart';
part 'api/ontology_api.dart';
part 'api/organisations_api.dart';
part 'api/positions_api.dart';
part 'api/projects_api.dart';
part 'api/scientific_objects_api.dart';
part 'api/security_api.dart';
part 'api/species_api.dart';
part 'api/system_api.dart';
part 'api/variables_api.dart';
part 'api/vue_js_api.dart';
part 'api/vue_js_ontology_extension_api.dart';


part 'model/activity_creation_dto.dart';
part 'model/activity_get_dto.dart';
part 'model/agent_model.dart';
part 'model/annotation_creation_dto.dart';
part 'model/annotation_get_dto.dart';
part 'model/annotation_update_dto.dart';
part 'model/api_contact_info_dto.dart';
part 'model/api_external_docs_dto.dart';
part 'model/api_git_commit_dto.dart';
part 'model/api_license_info_dto.dart';
part 'model/api_modules_info.dart';
part 'model/area_creation_dto.dart';
part 'model/vendange_years_dto.dart';
part 'model/area_get_dto.dart';
part 'model/instance_get_dto.dart';
part 'model/area_update_dto.dart';
part 'model/authentication_dto.dart';
part 'model/csv_cell.dart';
part 'model/csv_datatype_error.dart';
part 'model/csv_duplicate_uri_error.dart';
part 'model/csvuri_not_found_error.dart';
part 'model/csv_validation_dto.dart';
part 'model/csv_validation_model.dart';
part 'model/call.dart';
part 'model/characteristic_creation_dto.dart';
part 'model/characteristic_details_dto.dart';
part 'model/characteristic_get_dto.dart';
part 'model/characteristic_update_dto.dart';
part 'model/code_lot_csv_validation_dto.dart';
part 'model/code_lot_csv_validation_model.dart';
part 'model/contact.dart';
part 'model/credential_dto.dart';
part 'model/credentials_group_dto.dart';
part 'model/crs.dart';
part 'model/data_csv_validation_dto.dart';
part 'model/data_csv_validation_model.dart';
part 'model/data_confidence_dto.dart';
part 'model/data_creation_dto.dart';
part 'model/data_file_get_dto.dart';
part 'model/data_file_path_creation_dto.dart';
part 'model/data_get_dto.dart';
part 'model/data_link.dart';
part 'model/data_provenance_model.dart';
part 'model/data_update_dto.dart';
part 'model/device_creation_dto.dart';
part 'model/device_get_dto.dart';
part 'model/device_get_details_dto.dart';
part 'model/document_get_dto.dart';
part 'model/documentation_link.dart';
part 'model/entity_creation_dto.dart';
part 'model/entity_details_dto.dart';
part 'model/entity_get_dto.dart';
part 'model/entity_update_dto.dart';
part 'model/error_dto.dart';
part 'model/error_response.dart';
part 'model/event_creation_dto.dart';
part 'model/event_details_dto.dart';
part 'model/event_get_dto.dart';
part 'model/event_update_dto.dart';
part 'model/experiment_creation_dto.dart';
part 'model/experiment_get_dto.dart';
part 'model/instance_dto.dart';
part 'model/experiment_get_list_dto.dart';
part 'model/factor_category_get_dto.dart';
part 'model/factor_creation_dto.dart';
part 'model/factor_details_get_dto.dart';
part 'model/factor_get_dto.dart';
part 'model/factor_level_creation_dto.dart';
part 'model/factor_level_get_dto.dart';
part 'model/factor_level_get_detail_dto.dart';
part 'model/factor_update_dto.dart';
part 'model/font_config_dto.dart';
part 'model/form_creation_dto.dart';
part 'model/form_with_sections_creation_dto.dart';
part 'model/form_with_sections_update_dto.dart';
part 'model/form_get_dto.dart';
part 'model/form_update_dto.dart';
part 'model/front_config_dto.dart';
part 'model/geo_json_object.dart';
part 'model/germplasm_creation_dto.dart';
part 'model/germplasm_dto.dart';
part 'model/germplasm_get_all_dto.dart';
part 'model/germplasm_get_single_dto.dart';
part 'model/germplasm_update_dto.dart';
part 'model/group_creation_dto.dart';
part 'model/group_dto.dart';
part 'model/group_update_dto.dart';
part 'model/group_user_profile_dto.dart';
part 'model/infrastructure_creation_dto.dart';
part 'model/infrastructure_facility_creation_dto.dart';
part 'model/infrastructure_facility_get_dto.dart';
part 'model/infrastructure_facility_named_dto.dart';
part 'model/infrastructure_facility_update_dto.dart';
part 'model/infrastructure_get_dto.dart';
part 'model/infrastructure_update_dto.dart';
part 'model/interest_entity_creation_dto.dart';
part 'model/interest_entity_details_dto.dart';
part 'model/interest_entity_get_dto.dart';
part 'model/interest_entity_update_dto.dart';
part 'model/level.dart';
part 'model/list_item_dto.dart';
part 'model/lng_lat_alt.dart';
part 'model/location.dart';
part 'model/menu_item_dto.dart';
part 'model/metadata_dto.dart';
part 'model/method.dart';
part 'model/method_creation_dto.dart';
part 'model/method_details_dto.dart';
part 'model/method_get_dto.dart';
part 'model/method_update_dto.dart';
part 'model/motivation_get_dto.dart';
part 'model/move_creation_dto.dart';
part 'model/move_details_dto.dart';
part 'model/move_update_dto.dart';
part 'model/named_resource_dto.dart';
part 'model/named_resource_dto_experiment_model.dart';
part 'model/named_resource_dto_factor_level_model.dart';
part 'model/named_resource_dto_group_model.dart';
part 'model/named_resource_dto_infrastructure_facility_model.dart';
part 'model/named_resource_dto_infrastructure_model.dart';
part 'model/named_resource_dto_interest_entity_model.dart';
part 'model/named_resource_dto_project_model.dart';
part 'model/owl_class_property_restriction_dto.dart';
part 'model/object_uri_response.dart';
part 'model/observation_dto.dart';
part 'model/observation_summary.dart';
part 'model/observation_treatment.dart';
part 'model/observation_unit_dto.dart';
part 'model/observation_unit_xref.dart';
part 'model/observation_variable_dto.dart';
part 'model/ontology_reference.dart';
part 'model/order_by.dart';
part 'model/pagination_dto.dart';
part 'model/position_creation_dto.dart';
part 'model/position_get_dto.dart';
part 'model/position_get_detail_dto.dart';
part 'model/profile_creation_dto.dart';
part 'model/profile_get_dto.dart';
part 'model/profile_update_dto.dart';
part 'model/project_creation_dto.dart';
part 'model/project_get_dto.dart';
part 'model/project_get_detail_dto.dart';
part 'model/prov_entity_model.dart';
part 'model/provenance_creation_dto.dart';
part 'model/provenance_get_dto.dart';
part 'model/provenance_update_dto.dart';
part 'model/rdf_object_relation_dto.dart';
part 'model/rdf_property_dto.dart';
part 'model/rdf_type_dto.dart';
part 'model/resource_dag_dto.dart';
part 'model/resource_tree_dto.dart';
part 'model/route_dto.dart';
part 'model/scale.dart';
part 'model/scientific_object_creation_dto.dart';
part 'model/scientific_object_detail_by_experiments_dto.dart';
part 'model/scientific_object_detail_dto.dart';
part 'model/scientific_object_node_dto.dart';
part 'model/scientific_object_node_with_children_dto.dart';
part 'model/scientific_object_search_dto.dart';
part 'model/scientific_object_update_dto.dart';
part 'model/season.dart';
part 'model/section_creation_dto.dart';
part 'model/section_get_dto.dart';
part 'model/section_update_dto.dart';
part 'model/species_dto.dart';
part 'model/status_dto.dart';
part 'model/study_dto.dart';
part 'model/study_details_dto.dart';
part 'model/target_position_creation_dto.dart';
part 'model/target_position_get_dto.dart';
part 'model/theme_config_dto.dart';
part 'model/token_get_dto.dart';
part 'model/trait.dart';
part 'model/uri_types_dto.dart';
part 'model/ur_is_list_post_dto.dart';
part 'model/unit_creation_dto.dart';
part 'model/unit_details_dto.dart';
part 'model/unit_get_dto.dart';
part 'model/unit_update_dto.dart';
part 'model/user_creation_dto.dart';
part 'model/user_get_dto.dart';
part 'model/user_update_dto.dart';
part 'model/variable_creation_dto.dart';
part 'model/variable_datatype_dto.dart';
part 'model/variable_details_dto.dart';
part 'model/variable_get_dto.dart';
part 'model/variable_update_dto.dart';
part 'model/variables_group_creation_dto.dart';
part 'model/variables_group_get_dto.dart';
part 'model/variables_group_update_dto.dart';
part 'model/version_info_dto.dart';
part 'model/vue_data_type_dto.dart';
part 'model/vue_object_type_dto.dart';
part 'model/vue_rdf_type_dto.dart';
part 'model/vue_rdf_type_parameter_dto.dart';
part 'model/vue_rdf_type_property_dto.dart';
part 'model/feature.dart';
part 'model/feature_collection.dart';
part 'model/geometry_collection.dart';
part 'model/line_string.dart';
part 'model/multi_line_string.dart';
part 'model/multi_point.dart';
part 'model/multi_polygon.dart';
part 'model/point.dart';
part 'model/polygon.dart';


ApiClient defaultApiClient = new ApiClient();

void connectToOpenSILEX(String identifier, String password, String host) async {
  var client = new ApiClient(basePath: host);
  var api_instance_auth = new AuthenticationApi(client);
  var authenticate = new AuthenticationDTO();

  // authenticate.identifier = "admin@opensilex.org";
  // authenticate.password = "admin";

  authenticate.identifier = identifier;
  authenticate.password = password;
  try {
    var result = await api_instance_auth.authenticate(body: authenticate);
    defaultApiClient = client;
    defaultApiClient.token = result.token;
  } catch (e) {
    print(e);
  }
}
