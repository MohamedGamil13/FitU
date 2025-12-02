import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:flutter/material.dart';

class CustomActivityIcons extends StatelessWidget {
  const CustomActivityIcons({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30.0,
      backgroundColor: context.isdarkMode
          ? AppColors.circleAvtarColor
          : AppColors.seconderyText,
      child: Icon(icon, size: 30.0, color: AppColors.primaryColor),
    );
  }
}
