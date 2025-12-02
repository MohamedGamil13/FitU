import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/text_style.dart';
import 'package:flutter/material.dart';

ThemeData getLightMode() {
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xfff6f8f6),
    brightness: .light,
    useMaterial3: false,
    colorScheme: const ColorScheme(
      brightness: .light,
      primary: AppColors.primaryColor,
      onPrimary: AppColors.onPrimaryColor,
      secondary: AppColors.secondColor,
      onSecondary: AppColors.onPrimaryColor,
      error: AppColors.error,
      onError: AppColors.onError,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
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
      fillColor: Colors.grey.shade100,
      filled: true,
      outlineBorder: const BorderSide(color: Colors.transparent),
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.backGroundLight),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.error),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 1),
      ),
    ),
  );
}
