import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/core/constants/images_path.dart';
import 'package:flutter/material.dart';

class PageView3 extends StatelessWidget {
  const PageView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            context.isdarkMode
                ? Image.asset(AppImages.imagePageViewDark3)
                : Image.asset(AppImages.imagePageViewLight3),
            SizedBox(height: 100),
            Text(
              'Your Fitness Journey ',
              style: AppTextStyles.lexendBold30,
              textAlign: .center,
            ),
            Text(
              'Starts Now!',
              style: AppTextStyles.lexendBold30,
              textAlign: .center,
            ),
            SizedBox(height: 20),
            Text(
              'Get ready to achieve your goals with ',
              style: AppTextStyles.lexendSemiBold16,
              textAlign: .center,
            ),
            Text(
              'FitU',
              style: AppTextStyles.lexendSemiBold16,
              textAlign: .center,
            ),
          ],
        ),
      ],
    );
  }
}
