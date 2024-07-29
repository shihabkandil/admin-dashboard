import 'package:flutter/material.dart';

import '../app_text_styles.dart';
import 'app_colors.dart';

class AppThemeData {
  AppThemeData._();

  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColors.primaryColor,
    primaryColorDark: AppColors.primaryColorDark,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    appBarTheme: const AppBarTheme(
      color: AppColors.primaryColor,
      iconTheme: IconThemeData(color: AppColors.onPrimaryColor),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: const TextTheme(
      displayLarge: AppTextStyles.displayLarge,
      displayMedium: AppTextStyles.displayMedium,
      displaySmall: AppTextStyles.displaySmall,
      headlineMedium: AppTextStyles.headlineMedium,
      headlineSmall: AppTextStyles.headlineSmall,
      titleLarge: AppTextStyles.titleLarge,
      titleMedium: AppTextStyles.titleMedium,
      titleSmall: AppTextStyles.titleSmall,
      bodyLarge: AppTextStyles.bodyLarge,
      labelSmall: AppTextStyles.labelSmall,
      bodyMedium: AppTextStyles.bodyMedium,
      bodySmall: AppTextStyles.bodySmall,
      headlineLarge: AppTextStyles.headlineLarge,
      labelLarge: AppTextStyles.labelLarge,
      labelMedium: AppTextStyles.labelMedium,
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
