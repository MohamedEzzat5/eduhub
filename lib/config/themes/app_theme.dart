import 'package:faculty_app/core/utils/constance.dart';
import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_strings.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    hintColor: AppColors.hint,
    brightness: Brightness.light,
    scaffoldBackgroundColor: kPrimaryColor,
    fontFamily: AppStrings.fontFamily,
    appBarTheme: const AppBarTheme(
      color: kPrimaryColor,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 21,
          fontFamily: AppStrings.fontFamily),
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
    ),
    useMaterial3: true,
  );
}
