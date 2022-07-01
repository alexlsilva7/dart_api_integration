import 'package:uno/uno.dart';

void main() async {
  var url = 'https://jsonplaceholder.typicode.com/todos';
  final uno = Uno();
  final response = await uno(url: url, method: 'get');
  // final response = await Uno().get(url);
  print(response.data); //List<Map>
  print(response.data[0]);
  print('status code: ${response.status}');
}
