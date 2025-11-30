import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:flutter/material.dart';

class AuthCustomButton extends StatelessWidget {
  const AuthCustomButton({
    super.key,
    required this.text,
    required this.logo,
    required this.action,
  });
  final String text;
  final String logo;
  final void Function()? action;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: context.isdarkMode
            ? AppColors.fillColorDark
            : AppColors.backGroundLight,
        foregroundColor: context.isdarkMode
            ? AppColors.surface
            : AppColors.seconderyText,

        // minimumSize: const Size(380, 50),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: action,
      child: Row(
        mainAxisAlignment: .center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Image.asset(logo, height: 25),
          ),
          // SizedBox(width: 10),
          Text(text),
        ],
      ),
    );
  }
}
