import 'package:flutter/material.dart';
import 'package:sabak20_bmi_ulantuu4/theme/app_colors.dart';

class CircularButtom extends StatelessWidget {
  const CircularButtom({
    super.key,
    required this.icon,
    required this.basuu,
  });
  final IconData icon;
  final void Function() basuu;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: FloatingActionButton(
        backgroundColor: AppColors.greyColor,
        onPressed: basuu,
        child: Icon(
          icon,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
