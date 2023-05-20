import 'package:dio/dio.dart';

void main() async {
  // async- убакыт алуучу метод
  // await- кутуп туруучу команда
  // dio- бул дата алуучу пакет
  final dio = Dio();
  final response = await dio.get('https://jsonplaceholder.typicode.com/posts');
  print(response);
}
