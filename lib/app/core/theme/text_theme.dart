import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_font_size.dart';

final class AppTextStyleLight {
  static const fontFamily = "";

  //display textStyle
  static final TextStyle displayLarge = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize36,
    fontFamily: fontFamily,
  );
  static final TextStyle displayMedium = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize30,
    fontFamily: fontFamily,
  );
  static final TextStyle displaySmall = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize26,
    fontFamily: fontFamily,
  );
  // headline textStyle
  static final TextStyle headlineMedium = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize24,
    fontFamily: fontFamily,
  );
  static final TextStyle headlineSmall = TextStyle(
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize20,
    fontFamily: fontFamily,
  );
  //title textStyle
  static final TextStyle titleLarge = TextStyle(
    fontWeight: FontWeight.w500,
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize18,
    fontFamily: fontFamily,
  );
  static final TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize16,
    fontFamily: fontFamily,
  );
  static final TextStyle titleSmall = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize14,
    fontFamily: fontFamily,
  );
  // body textStyle
  static final TextStyle bodySmall = TextStyle(
    fontWeight: FontWeight.w300,
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize12,
    fontFamily: fontFamily,
  );
  static final TextStyle bodyMedium = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize14,
    fontFamily: fontFamily,
  );
  static final TextStyle bodyLarge = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize16,
    fontFamily: fontFamily,
  );
  // label textStyle
  static final TextStyle labelLarge = TextStyle(
    fontWeight: FontWeight.w300,
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize12,
  );
  static final TextStyle labelSmall = TextStyle(
    fontWeight: FontWeight.w400,
    color: AppColors.primaryTextColor,
    fontSize: AppFontSize.fontSize16,
  );
}
