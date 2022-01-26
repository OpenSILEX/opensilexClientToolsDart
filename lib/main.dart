import 'package:swagger/api.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart' as mime;

void main() async {
  var client = ApiClient();
  try {
    await client.connectToOpenSILEX(
        identifier: "admin@opensilex.org",
        password: "admin",
        host: "http://localhost:8666/rest");
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
    var filePath =
        "/home/hart/Documents/formAppDocs/csvTests/noErrorCsvexample.csv";
    var file = await http.MultipartFile.fromPath('file', filePath);
    // var uri = Uri.parse("http://localhost:8666/rest/mobile/import");
    // var request = new http.MultipartRequest("POST", uri);
    // request.files.add(file);
    // request.headers.addAll({'Authorization': 'Bearer ' + client.token});
    // var response = await request.send();

    // if (response.statusCode == 200) print('Uploaded!');
    var response = await mobile_instance.importCSVCodes(file);

    print(response);
  } catch (e) {
    print(e.stackTrace);
    print("$e\n");
  }
}