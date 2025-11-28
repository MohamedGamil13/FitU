import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fitu/core/config/themes/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.fieldHint});
  final String fieldHint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          fieldHint,
          style: AppTextStyles.lexendSemiBold16.copyWith(
            color: context.isdarkMode
                ? AppColors.backGroundLight
                : AppColors.onSurface,
          ),
        ),
        SizedBox(height: 8),
        TextField(),
      ],
    );
  }
}
