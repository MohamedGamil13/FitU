import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fitu/core/config/themes/text_style.dart';
import 'package:flutter/material.dart';

class CustomActivityIcons extends StatelessWidget {
  const CustomActivityIcons({
    super.key,
    required this.icon,
    required this.title,
  });
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CircleAvatar(
            radius: 30.0,
            backgroundColor: context.isdarkMode
                ? AppColors.circleAvtarColorDark
                : AppColors.circleAvtarColorLight,
            child: Icon(icon, size: 30.0, color: AppColors.primaryColor),
          ),
        ),
        Text(title, style: AppTextStyles.lexendSemiBold14),
      ],
    );
  }
}
