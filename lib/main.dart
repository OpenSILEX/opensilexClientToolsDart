import 'package:swagger/api.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' as mime;

void main() async {
  var client = ApiClient();
  try {
    await client.connectToOpenSILEX(
        identifier: "admin@opensilex.org",
        password: "admin",
        /*host: "http://localhost:8666/rest"*/host: 'http://138.102.159.37:8084/rest');
  } catch (e) {
    print(e);
  }
  // var security_instance_auth = new SecurityApi(client);
  // try {
  //   var users = await security_instance_auth.searchUsers();
  //   print(users);
  // } catch (e) {
  //   print("$e\n");
  // }
  // var experiment_instance = new ExperimentsApi(client);
  // try {
  //   var exps = await experiment_instance.searchExperiments();
  //   print(exps);
  // } catch (e) {
  //   print("$e\n");
  // }
  var mobile_instance = new MobileApi(client);
  try {
    /*var filePath =
        "/home/hart/Documents/formAppDocs/csvTests/noErrorCsvexample.csv";
    var file = await http.MultipartFile.fromPath('file', filePath);


    // if (response.statusCode == 200) print('Uploaded!');
    var response = await mobile_instance.importCSVCodes(file);

    //List<FormGetDTO> forms = await mobile_instance.searchForms(page:0, acceptLanguage: 'en');
    await mobile_instance.createForm(body: FormCreationDTO.fromJson({'is_root':true, 'section_uris': [],'form_children_codes': [],'form_parents_codes': [], 'type':'http://www.opensilex.org/vocabulary/iado#RedSolidWinemaking', 'code_lot':'fuck', 'commit_address':'ahhhhh','created_date':'2012-02-07T13:15:16Z'}));*/

    //OntologyApi _ontologyApi = OntologyApi(client);
    //String typeName = _ontologyApi.getRDFType('iado:WineDescription');

    print('ddddd');
  } catch (e) {
    print(e.stackTrace);
    print("$e\n");
  }
}