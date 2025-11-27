import 'package:fitu/core/config/themes/text_style.dart';
import 'package:flutter/material.dart';

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({
    super.key,
    required this.text,
    required this.clkText,
    required this.action,
  });
  final String text;
  final String clkText;
  final void Function()? action;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
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
