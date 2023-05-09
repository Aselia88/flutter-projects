import 'package:flutter/material.dart';
import 'package:sabak19_bmi_ulantuu3/theme/app_colors.dart';
import 'package:sabak19_bmi_ulantuu3/theme/app_text_style.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    super.key,
    required this.icon,
    required this.text,
    required this.isTrue,
  });

  final IconData icon;
  final String text;
  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,
            color: isTrue ? AppColors.pinkColor : AppColors.whiteColor,
            size: 80),
        Text(
          text,
          style: AppTextStyle.titleStyle,
        ),
      ],
    );
  }
}
