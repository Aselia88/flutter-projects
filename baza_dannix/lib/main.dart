import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ForPractice(),
    );
  }
}

class ForPractice extends StatefulWidget {
  bool a = false;
  @override
  State<ForPractice> createState() => _ForPracticeState();
}

class _ForPracticeState extends State<ForPractice> {
  get a => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ForPractice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: a == true ? null : () {
                AlertDialog()
              },
              child: const Text('restart'),
            ),
          ],
        ),
      ),
    );
  }
}
