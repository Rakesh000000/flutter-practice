import 'package:http/http.dart' as http;

class HttpRequestPage {

  static fetchFacts() async {
    var url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return response.body;
  }
}