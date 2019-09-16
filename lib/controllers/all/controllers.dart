import 'package:http/http.dart' as http;

int putJson(String url, String jsonStr) {
  int status = -1;
  http.put(Uri.encodeFull(url),
      body: jsonStr, headers: {"accept": "application/json"}).then((result) {
    status = result.statusCode;
  });
  return status;
}

makeGetRequest() async {
  // make GET request
  String url = 'http://qualityproject-001-site1.ctempurl.com/api/v1/policy';
  http.Response response = await http.get(url);
  // sample info available in response
  int statusCode = response.statusCode;
  Map<String, String> headers = response.headers;
  String contentType = headers['content-type'];
  String json = response.body;
  return json;
}
