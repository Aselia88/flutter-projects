import 'package:flutter/material.dart';

class MyWeather extends StatefulWidget {
  const MyWeather({super.key});

  @override
  State<MyWeather> createState() => _MyWeatherState();
}

class _MyWeatherState extends State<MyWeather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'MyWeather',
          style: TextStyle(
              decorationColor: Colors.purple,
              fontSize: 20,
              fontFamily: 'grenouille-cyr.ttf'),
        )),
        leading: const Column(
          children: [Card()],
        ),
      ),
    );
  }
}
