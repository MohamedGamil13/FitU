import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key, required this.textBetween});
  final String textBetween;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(thickness: 1.2)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(textBetween),
        ),
        const Expanded(child: Divider(thickness: 1.2)),
      ],
    );
  }
}
