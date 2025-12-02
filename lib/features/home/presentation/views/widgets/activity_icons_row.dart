import 'package:fitu/core/widgets/custom_activity_icons.dart';
import 'package:flutter/material.dart';

class ActivityIconsRow extends StatelessWidget {
  const ActivityIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomActivityIcons(icon: Icons.directions_run),
          CustomActivityIcons(icon: Icons.restaurant_menu),
          CustomActivityIcons(icon: Icons.chat_bubble_outline),
          CustomActivityIcons(icon: Icons.fit_screen),
        ],
      ),
    );
  }
}
