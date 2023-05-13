import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_colors.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_text_style.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_texts.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.onPressd,
  });
  final void Function() onPressd;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: double.infinity,
      color: AppColors.pinkColor,
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.pinkColor,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero),
              ),
              minimumSize: const Size(double.infinity, 73)),
          onPressed: onPressd,
          child: const Text(
            AppTexts.calculator,
            style: AppTextStyle.calculateStyle,
          ),
        ),
      ),
    );
  }
}
