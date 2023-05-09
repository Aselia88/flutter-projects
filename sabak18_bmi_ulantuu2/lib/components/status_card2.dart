import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/components/weight_age.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_colors.dart';

class StatusCard2 extends StatelessWidget {
  const StatusCard2({
    super.key,
    required this.text,
    required this.san,
  });

  final String text;
  final String san;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColors.cardColor,
        child: WeightAge(text: text, san: san),
      ),
    );
  }
}
