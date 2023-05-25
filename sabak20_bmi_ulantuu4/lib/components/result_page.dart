import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu4/components/all_calculate.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_colors.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_text_style.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_texts.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.metri, required this.salmak});
  final double metri;
  final int salmak;

  @override
  Widget build(BuildContext context) {
    double resultattar = BmiCalculator().bmi(height: metri, weight: salmak);
    return Scaffold(
      backgroundColor: AppColors.bgrColor,
      appBar: AppBar(
        title: const Text('Ден-соолук индекси (BMI)'),
        actions: const <Widget>[
          Icon(
            Icons.favorite_border_rounded,
            color: AppColors.pinkColor,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 11, right: 9, top: 53),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.only(left: 14),
            child: Text(
              'Жыйынтык',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            height: 315,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.cardColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  BmiCalculator().bmiResult(resultattar),
                  style:
                      const TextStyle(fontSize: 24, color: AppColors.resColor),
                ),
                Text(resultattar.toStringAsFixed(1),
                    style: const TextStyle(fontSize: 80)),
                Text(BmiCalculator().bmiDescription(resultattar),
                    style: const TextStyle(fontSize: 12)),
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.pinkColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
            minimumSize: const Size(double.infinity, 73)),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          AppTexts.kairaesepte,
          style: AppTextStyle.calculateStyle,
        ),
      ),
    );
  }
}
