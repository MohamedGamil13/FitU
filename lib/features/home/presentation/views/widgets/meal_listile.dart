import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fitu/core/constants/images_path.dart';
import 'package:fitu/core/widgets/custom_image.dart';
import 'package:fitu/core/widgets/meal_description_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MealListile extends StatelessWidget {
  const MealListile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.isdarkMode
            ? AppColors.fillColorDark
            : AppColors.whtColor,
        border: Border.all(
          color: context.isdarkMode
              ? AppColors.outlineBorderColorDark
              : AppColors.gray10,
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: const Row(
          children: [
            CustomImage(imagePath: AppImages.mealPlaceHolder),
            Expanded(child: MealDescriptionWidget()),
          ],
        ),
      ),
    );
  }
}
