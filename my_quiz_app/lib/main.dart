import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Quiz App',
        theme: ThemeData(primarySwatch: Colors.amber),
        home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text('Тестирование'),
            ),
          ),
          body: Container(
            color: Colors.blue,
            width: 300,
            height: 50,
          ),
        ));
  }
}
