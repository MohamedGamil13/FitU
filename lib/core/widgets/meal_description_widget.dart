import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fitu/core/config/themes/text_style.dart';
import 'package:flutter/material.dart';

class MealDescriptionWidget extends StatelessWidget {
  const MealDescriptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    bool isdark = context.isdarkMode;
    return Column(
      crossAxisAlignment: .start,
      children: [
        Text(
          'Breakfast',
          style: AppTextStyles.lexendSemiBold18.copyWith(
            color: isdark ? Colors.white : Colors.black,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          'Oatmeal with berries - 350 kcal',
          style: AppTextStyles.regular18.copyWith(
            color: AppColors.seconderyText,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
