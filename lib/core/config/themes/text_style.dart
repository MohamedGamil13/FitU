import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static const TextStyle lexend = TextStyle(
    fontSize: 10,
    color: AppColors.onSurface,
  );
  static const TextStyle lexendBold = TextStyle(
    fontWeight: .bold,
    fontSize: 18,
    color: AppColors.onSurface,
  );
  static const TextStyle lexendBold30 = TextStyle(
    fontWeight: .bold,
    fontSize: 30,
    // color: AppColors.onSurface,
  );
  static const TextStyle lexendBold36 = TextStyle(
    fontWeight: .bold,
    fontSize: 36,
    // color: AppColors.onSurface,
  );
  static const TextStyle lexendSemiBold16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.seconderyText,
  );
  static const TextStyle lexendSemiBold18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.seconderyText,
  );
  static const TextStyle lexendsemuBoldButton16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  AppTextStyles._();
}
