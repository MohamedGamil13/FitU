import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/core/constants/images_path.dart';
import 'package:flutter/material.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        // mainAxisAlignment: .spaceBetween,
        children: [
          Image.asset(AppImages.userPlaceHolder, height: 50),
          const SizedBox(width: 10),
          const Text(
            'Good Morning, Abdalrahman',
            style: AppTextStyles.lexendsemiBoldButton22,
          ),
          const Expanded(child: SizedBox()),
          const Icon(Icons.access_alarm),
        ],
      ),
    );
  }
}
