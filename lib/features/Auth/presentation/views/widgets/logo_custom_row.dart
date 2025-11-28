import 'package:fitu/core/constants/images_path.dart';
import 'package:flutter/material.dart';

class LogoCustomRow extends StatelessWidget {
  const LogoCustomRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      spacing: 50,
      children: [
        Image.asset(AppImages.faceBookIcon, height: 50),
        Image.asset(AppImages.googleIcon, height: 50),
      ],
    );
  }
}
