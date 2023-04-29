import 'package:audioplayers/audioplayers.dart';
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
      theme: ThemeData.dark(),
      home: const DemoScreen(),
    );
  }
}

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DemoScreen'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            children: [
              const Padding(padding: EdgeInsets.symmetric(horizontal: 20)),
              GestureDetector(
                onTap: () {
                  AudioPlayer().play(AssetSource('noti.mp3'));
                },
                child: Container(
                  height: 180,
                  width: 50,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer().play(
                    AssetSource('re.mp3'),
                  );
                },
                child: Container(
                  height: 160,
                  width: 50,
                  color: Colors.pink,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer().play(
                    AssetSource('mi.mp3'),
                  );
                },
                child: Container(
                  height: 140,
                  width: 50,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer().play(
                    AssetSource('fa.mp3'),
                  );
                },
                child: Container(
                  height: 120,
                  width: 50,
                  color: Colors.red,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer().play(
                    AssetSource('sol.mp3'),
                  );
                },
                child: Container(
                  height: 100,
                  width: 50,
                  color: Colors.cyan,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer().play(
                    AssetSource('lya.mp3'),
                  );
                },
                child: Container(
                  height: 80,
                  width: 50,
                  color: Colors.purple,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  AudioPlayer().play(
                    AssetSource('ci.mp3'),
                  );
                },
                child: Container(
                  height: 60,
                  width: 50,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
