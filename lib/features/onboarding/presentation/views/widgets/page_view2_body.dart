import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/core/constants/images_path.dart';
import 'package:flutter/material.dart';

class PageView2 extends StatelessWidget {
  const PageView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // context.isdarkMode
        //     ? Image.asset(AppImages.imagePageViewDark2, fit: .scaleDown)
        //     : Image.asset(AppImages.imagePageView2),
        context.isdarkMode
            ? Image.asset(AppImages.imagePageViewDark2, fit: .scaleDown)
            : Image.asset(AppImages.imagePageView2),
        SizedBox(height: 100),
        Text(
          'Smart Meal Recommendations',
          style: AppTextStyles.lexendBold30,
          textAlign: .center,
        ),
        SizedBox(height: 20),
        Text(
          'Get personalized meal suggestions tailored to your goals and daily calorie needs',
          style: AppTextStyles.lexendSemiBold16,
          textAlign: .center,
        ),
      ],
    );
  }
}
