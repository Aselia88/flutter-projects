import 'package:flutter/material.dart';

import 'package:sabak15_quize_app/constants/app_colors.dart';

class AppTextStyle {
  static const appBarTextStyle = TextStyle(
      color: AppColors.appBarTextColor,
      fontSize: 23,
      fontWeight: FontWeight.w500);

  static const appTextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 40,
  );

  static const trueStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 40,
    fontWeight: FontWeight.w500,
  );
}
