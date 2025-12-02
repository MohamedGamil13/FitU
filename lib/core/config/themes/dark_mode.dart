import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/text_style.dart';
import 'package:flutter/material.dart';

ThemeData getDarkMode() {
  return ThemeData(
    scaffoldBackgroundColor: AppColors.backGroundDark,
    brightness: .dark,
    useMaterial3: false,
    colorScheme: const ColorScheme(
      brightness: .dark,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.onPrimaryColor,
      secondary: AppColors.secondColor,
      onSecondary: AppColors.onPrimaryColor,
      error: AppColors.error,
      onError: AppColors.onError,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
    ),
    textTheme: ThemeData.dark().textTheme.copyWith(
      labelLarge: AppTextStyles.lexend,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.onSurface,
        minimumSize: const Size(380, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        textStyle: AppTextStyles.lexendBold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.fillColorDark,
      filled: true,
      outlineBorder: const BorderSide(color: AppColors.outlineBorderColor),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.outlineBorderColorDark),
      ),
    ),
    listTileTheme: const ListTileThemeData(tileColor: AppColors.fillColorDark),
  );
}
