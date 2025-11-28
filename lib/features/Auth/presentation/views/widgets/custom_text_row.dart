import 'package:fitu/core/config/themes/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({
    super.key,
    this.text = '',
    required this.clkText,
    required this.action,
    this.mainAxisAlignment = MainAxisAlignment.center,
  });
  final String text;
  final String clkText;
  final void Function()? action;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Text(text),
        // SizedBox(width: 6),
        TextButton(
          onPressed: action,
          child: Text(clkText, style: AppTextStyles.lexendsemuBoldButton16),
        ),
      ],
    );
  }
}
