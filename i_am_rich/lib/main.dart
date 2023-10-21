import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IamRich(),
    );
  }
}

class IamRich extends StatefulWidget {
  const IamRich({super.key});

  @override
  State<IamRich> createState() => _IamRichState();
}

class _IamRichState extends State<IamRich> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Center(
          child: Text(
            "Тапшырма 3",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "I'm Rich",
              style: TextStyle(
                fontSize: 55,
                fontFamily: "Pacifico-Regular",
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            const SizedBox(
              width: 350,
              height: 150,
            ),
            Image.asset(
              "assets/images/brilliant.png",
            ),
          ],
        ),
      ),
    );
  }
}
