import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sabak11_piano_app_ui/components/demo_black_key.dart';
import 'package:sabak11_piano_app_ui/components/demo_white_key.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          // height: double.infinity,
          child: Stack(children: [
            ListView.builder(
              itemCount: 7,
              scrollDirection: Axis.horizontal,
              itemBuilder: (
                BuildContext context,
                index,
              ) {
                return const DemoWhiteKey();
              },
            ),
            //кара кнопка башталат

            Row(
              children: [
                const SizedBox(
                  width: 40,
                ),
                DemoBlackKey(),
                SizedBox(
                  width: 15,
                ),
                DemoBlackKey(),
                SizedBox(
                  width: 70,
                ),
                DemoBlackKey(),
                SizedBox(
                  width: 79,
                ),
                DemoBlackKey(),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
