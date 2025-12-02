import 'package:fitu/core/widgets/custom_activity_icons.dart';
import 'package:flutter/material.dart';

class ActivityIconsRow extends StatelessWidget {
  const ActivityIconsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomActivityIcons(icon: Icons.restaurant_menu, title: 'Add meal'),
          CustomActivityIcons(icon: Icons.directions_run, title: 'Activity'),
          CustomActivityIcons(icon: Icons.fit_screen, title: 'Scan'),
          CustomActivityIcons(
            icon: Icons.chat_bubble_outline,
            title: 'Chat AI',
          ),
        ],
      ),
    );
  }
}
