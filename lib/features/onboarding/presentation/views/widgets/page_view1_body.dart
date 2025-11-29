import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/core/constants/images_path.dart';
import 'package:flutter/material.dart';

class PageView1Body extends StatelessWidget {
  const PageView1Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.imagePageView1),
        const SizedBox(height: 30),
        const Text('Track your Health', style: AppTextStyles.lexendBold30),
        const SizedBox(height: 5),
        const Text('Easily', style: AppTextStyles.lexendBold30),
        const SizedBox(height: 15),
        const Text(
          'Monitor your calories, meals, and daily activity with simple and smart tools',
          style: AppTextStyles.lexendSemiBold16,
          textAlign: .center,
        ),
        const Spacer(),
      ],
    );
  }
}
