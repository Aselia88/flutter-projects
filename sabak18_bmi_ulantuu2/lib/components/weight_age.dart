import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/components/circular_buttom.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
  });

  final String text;
  final String san;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(text, style: AppTextStyle.titleStyle),
      Text(san, style: AppTextStyle.sanTextStyle),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularButtom(
            icon: Icons.remove,
          ),
          SizedBox(
            width: 10,
          ),
          CircularButtom(
            icon: Icons.add,
          ),
        ],
      ),
    ]);
  }
}
