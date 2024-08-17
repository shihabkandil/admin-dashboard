import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeData {
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    primaryColorDark: AppColors.primaryColorDark,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    focusColor: Colors.white,
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryColor,
      iconTheme: IconThemeData(color: AppColors.onPrimaryColor),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.accentColor,
      surface: AppColors.surfaceColor,
      error: AppColors.errorColor,
      onPrimary: AppColors.onPrimaryColor,
      onSecondary: AppColors.onSecondaryColor,
      onSurface: AppColors.onSurfaceColor,
      onError: AppColors.onErrorColor,
    ),
  );
}

extension AppThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
}
