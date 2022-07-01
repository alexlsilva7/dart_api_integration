import 'package:dio/dio.dart';

void main() async {
  var url = 'https://jsonplaceholder.typicode.com/todos';
  final response = await Dio().get(url);
  print(response.data); //List<Map>
  print(response.data[0]);
  print('status code: ${response.statusCode}');
}
