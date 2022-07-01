import 'dart:convert';
import 'dart:io';

void main() async {
  var url = 'https://jsonplaceholder.typicode.com/todos';

  final client = HttpClient();

  //request
  final request = await client.openUrl('get', Uri.parse(url));
  request.headers.set('content-type', 'application/json');
  //response
  final response = await request.close();
  //ouvir a stream de dados do servidor
  //a resposta do servidor vem em varias partes
  final list = <String>[];
  await for (var data in response) {
    final string = utf8.decode(data);
    list.add(string);
  }
  final body = list.join();
  print(body);
  // response.listen((data) {
  //   //converte os bytes em string
  //   final string = utf8.decode(data);
  //   list.add(string);
  // }).onDone(() {
  //   print(list.length);
  // });
}
