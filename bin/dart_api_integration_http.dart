import 'package:http/http.dart' as http;

void main() async {
  var url = 'https://jsonplaceholder.typicode.com/todos';
  final response = await http.get(Uri.parse(url));
  print(response.body);
  print('status code: ${response.statusCode}');
}
