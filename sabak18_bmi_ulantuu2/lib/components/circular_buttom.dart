import 'package:flutter/material.dart';
import 'package:sabak18_bmi_ulantuu2/theme/app_colors.dart';

class CircularButtom extends StatelessWidget {
  const CircularButtom({
    super.key,
    required this.icon,
  });
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: FloatingActionButton(
        backgroundColor: AppColors.greyColor,
        onPressed: () {},
        child: Icon(
          icon,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
