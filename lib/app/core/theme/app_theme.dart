import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_init/app/core/theme/text_theme.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: AppColors.bgColor,
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.red),
    iconTheme: IconThemeData(color: AppColors.accentColor, size: 25.0),
    appBarTheme: AppBarTheme(
      elevation: 0,
      surfaceTintColor: AppColors.bgColor,
      scrolledUnderElevation: 0,
      backgroundColor: AppColors.bgColor,
      titleTextStyle: const TextStyle(color: Colors.black),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        statusBarColor: AppColors.bgColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: AppColors.bgColor,
      ),
    ),
    textTheme: TextTheme(
      displayMedium: AppTextStyleLight.displayMedium,
      displaySmall: AppTextStyleLight.displaySmall,
      headlineMedium: AppTextStyleLight.headlineMedium,
      headlineSmall: AppTextStyleLight.headlineSmall,
      displayLarge: AppTextStyleLight.displayLarge,
      titleLarge: AppTextStyleLight.titleLarge,
      titleMedium: AppTextStyleLight.titleMedium,
      titleSmall: AppTextStyleLight.titleSmall,
      bodySmall: AppTextStyleLight.bodySmall,
      bodyMedium: AppTextStyleLight.bodyMedium,
      bodyLarge: AppTextStyleLight.bodyLarge,
      labelLarge: AppTextStyleLight.labelLarge,
      labelSmall: AppTextStyleLight.labelSmall,
    ),
    inputDecorationTheme: inputDecorationTheme(),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.blue,
      disabledColor: Colors.grey,
    ),
    drawerTheme: DrawerThemeData(
      backgroundColor: AppColors.bgColor,
    ),
  );
}

///inputDecorationTheme
InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: AppColors.borderColor),
    gapPadding: 10,
  );
  OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: AppColors.accentColor.withOpacity(0.5),
      width: 2,
    ),
    gapPadding: 10,
  );

  OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: Color(0xFFe8e8fa)),
    gapPadding: 10,
  );

  return InputDecorationTheme(
    //floatingLabelBehavior: FloatingLabelBehavior.never,
    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    enabledBorder: enabledBorder,
    focusedBorder: focusedBorder,
    border: outlineInputBorder,
    hintStyle: TextStyle(
        color: AppColors.secondaryColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 1),
  );
}
