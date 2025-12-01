import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({
    super.key,
    required this.title,
    required this.subtitle,
    this.containerWidth = 150,
  });
  final String title;
  final String subtitle;
  final double containerWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerWidth.w,
      height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.fillColorDark,
        border: Border.all(color: AppColors.outlineBorderColorDark, width: 1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: AppTextStyles.regular18),
            SizedBox(height: 4.h),
            Text(subtitle, style: AppTextStyles.lexendBold28),
          ],
        ),
      ),
    );
  }
}
