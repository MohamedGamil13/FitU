import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key, required this.message, this.snackBarColor});
  final String message;
  final Color? snackBarColor;
  @override
  Widget build(BuildContext context) {
    return SnackBar(
      content: Text(message),
      backgroundColor: snackBarColor ?? AppColors.gray10,
    );
  }
}
