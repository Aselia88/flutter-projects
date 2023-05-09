import 'package:flutter/material.dart';
import 'package:sabak19_bmi_ulantuu3/components/circular_button.dart';
import 'package:sabak19_bmi_ulantuu3/theme/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.addbasuu,
    required this.removebasuu,
  });

  final String text;
  final String san;
  final void Function() addbasuu;
  final void Function() removebasuu;
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(text, style: AppTextStyle.titleStyle),
      Text(san, style: AppTextStyle.sanTextStyle),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularButtom(
            icon: Icons.remove,
            basuu: removebasuu,
          ),
          const SizedBox(
            width: 10,
          ),
          CircularButtom(
            icon: Icons.add,
            basuu: addbasuu,
          ),
        ],
      ),
    ]);
  }
}
