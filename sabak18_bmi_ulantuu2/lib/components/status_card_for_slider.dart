import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/components/height.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_colors.dart';

class StatusCardSlider extends StatelessWidget {
  const StatusCardSlider({
    super.key,
    required this.text,
    required this.text1,
    required this.text2,
  });

  final String text, text1, text2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColors.cardColor,
        child: Height(text: text, text1: text1, text2: text2),
      ),
    );
  }
}
