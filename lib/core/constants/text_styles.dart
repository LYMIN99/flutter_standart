import 'package:flutter/material.dart';
import 'package:myapp/core/constants/app_colors.dart';

class AppTextStyles {
  // Primary Text Style
  static const TextStyle headline1 = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimaryColor,
  );

  static const TextStyle bodyText1 = TextStyle(
    fontSize: 16.0,
    color: AppColors.textPrimaryColor,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 14.0,
    color: AppColors.textSecondaryColor,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
}
