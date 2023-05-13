import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu4/components/calculate_button.dart';
import 'package:sabak20_bmi_ulantuu4/components/height.dart';
import 'package:sabak20_bmi_ulantuu4/components/male_female.dart';
import 'package:sabak20_bmi_ulantuu4/components/result_page.dart';
import 'package:sabak20_bmi_ulantuu4/components/status_card.dart';
import 'package:sabak20_bmi_ulantuu4/components/weight_age.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_colors.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_texts.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTrue = true;
  int weight = 60;
  int age = 23;
  double height = 180;

  void resultattar() {
    final res = weight / pow(height / 100, 2);
    if (res <= 18.5) {
      //   _showAlertDialog(context, 'Сиз арыксыз');
      //   // print('Сиз арыксыз:$res');
      // } else if (res >= 18.6 && res <= 25) {
      //   _showAlertDialog(context, 'Сиздин салмагыныз нормалдуу');
      //   // print('Сиздин салмагыныз нормалдуу:$res');
      // } else if (res >= 25.1 && res <= 30) {
      //   _showAlertDialog(context, 'Сиз ашыкча салмактуусуз');
      //   // print('Сиз ашыкча салмактуусуз:$res');
      // } else {
      //   _showAlertDialog(context, 'Сиз семизсиз');
      // print('Сиз семизсиз:$res');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgrColor,
      appBar: AppBar(
        backgroundColor: AppColors.bgrColor,
        title: const Center(child: Text(AppTexts.bmi)),
        elevation: 0,
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 21, top: 22, right: 21, bottom: 41),
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                StatusCard(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isTrue = true;
                        print('1');
                      });
                    },
                    child: MaleFemale(
                      icon: Icons.male,
                      text: AppTexts.male,
                      isTrue: isTrue,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 35,
                ),
                StatusCard(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isTrue = false;
                        print('2');
                      });
                    },
                    child: MaleFemale(
                      icon: Icons.female,
                      text: AppTexts.female,
                      isTrue: !isTrue,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          StatusCard(
            child: Height(
              text: AppTexts.height,
              text1: '${height.toInt()}',
              text2: 'cm',
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
              height: height,
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Expanded(
            child: Row(
              children: [
                StatusCard(
                    child: WeightAge(
                  text: AppTexts.weight,
                  san: '$weight',
                  removebasuu: () {
                    setState(() {
                      weight--;
                    });
                  },
                  addbasuu: () {
                    setState(() {
                      weight++;
                    });
                  },
                )),
                const SizedBox(
                  width: 25,
                ),
                StatusCard(
                  child: WeightAge(
                    text: AppTexts.age,
                    san: '$age',
                    removebasuu: () {
                      setState(() {
                        age--;
                      });
                    },
                    addbasuu: () {
                      setState(() {
                        age++;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: CalculateButton(
        onPressd: () {
          resultattar();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultPage(
                metri: height,
                salmak: weight,
              ),
            ),
          );
        },
      ),
    );
  }
}

// Future<void> _showAlertDialog(BuildContext context, String text) async {
//   return showDialog<void>(
//     context: context,
//     barrierDismissible: false,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         backgroundColor: AppColors.cardColor,
//         // <-- SEE HERE
//         title: const Text(
//           AppTexts.bmi,
//           textAlign: TextAlign.center,
//         ),
//         content: Text(
//           text,
//           textAlign: TextAlign.center,
//         ),
//         actions: <Widget>[
//           TextButton(
//             child: const Text('Чыгуу'),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
