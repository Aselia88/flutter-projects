import 'package:flutter/material.dart';

import 'package:sabak15_quize_app/constants/app_colors.dart';
import 'package:sabak15_quize_app/constants/app_text_styles.dart';
import 'package:sabak15_quize_app/constants/texts.dart';
import 'package:sabak15_quize_app/useFile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UseQuize useQuize = UseQuize();
  List<Icon> iconAluu = [];

  void teksher(bool koldonuu) {
    bool correctAnswer = useQuize.joopAluu();
    setState(() {
      if (useQuize.isFinished() == true) {
        showDialog<void>(
          context: context,
          barrierDismissible: false,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Тест QuizeApp'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('Сиздин тест аягына келип жетти'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Жок'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: const Text('Ооба'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
        useQuize.indexZero();
        iconAluu = [];
      } else {
        if (correctAnswer == koldonuu) {
          iconAluu.add(const Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          iconAluu.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        useQuize.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const Center(
          child: Text(
            'Тапшырма 7',
            style: AppTextStyle.appBarTextStyle,
          ),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Spacer(),
            Text(
              useQuize.surooAluu(),
              style: AppTextStyle.appTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 70,
              width: 335,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.trueBgrColor,
                ),
                onPressed: () {
                  teksher(true);
                },
                child: const Text(
                  AppTexts.tuura,
                  style: AppTextStyle.trueStyle,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 70,
              width: 335,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.falseBgrColor,
                ),
                onPressed: () {
                  teksher(false);
                },
                child: const Text(
                  AppTexts.tuuraEmes,
                  style: AppTextStyle.trueStyle,
                ),
              ),
            ),

            SizedBox(
              height: 40,
              child: ListView.builder(
                  itemCount: iconAluu.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return iconAluu[index];
                  }),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
            // SizedBox(
            //   height: 50,
            //   child: ListView.builder(
            //       itemCount: 10,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (context, index) {
            //         return iconAluu[index];
            //       }),
            // ),
          ]),
        ),
      ),
    );
  }
}
