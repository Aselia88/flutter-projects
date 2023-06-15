import 'dart:math';

import 'package:flutter/material.dart';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int firstDice = 1;
  int secondtDice = 1;
  int nextDice = 1;
  void change() {
    setState(() {
      firstDice = Random().nextInt(6) + 1;
      secondtDice = Random().nextInt(6) + 1;
      nextDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Тапшырма 5', style: TextStyle(color: Colors.black)),
        ),
        elevation: 0,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        if (firstDice == 4)
        if (secondtDice == 2)
          Container(
            height: 40,
            width: 153,
            color: Colors.green,
            child:  const Center(
              child: Text(
                'Урраа 4 саны чыкты!!!',
                style: TextStyle(color: Colors.white),
              ),
               
            ),
          ),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Expanded(
                  child: InkWell(
                      onTap: () {
                        change();
                        print(firstDice);
                      },
                      child: Image.asset('images/dice$firstDice-png.png'))),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                  child: InkWell(
                      onTap: () {
                        change();
                      },
                      child: Image.asset('images/dice$secondtDice-png.png'))),
            ],
          ),
        )
      ]),
    );
  }
}
