import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fitu/core/widgets/custom_box_shadow.dart';
import 'package:flutter/material.dart';

class CalorieGoalCard extends StatelessWidget {
  final double progress; // بين 0 و 1
  final int goal;

  const CalorieGoalCard({
    super.key,
    required this.progress,
    required this.goal,
  });

  @override
  Widget build(BuildContext context) {
    final percentage = (progress * 100).toInt();

    final bool isDark = context.isdarkMode;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDark ? AppColors.fillColorDark : Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: isDark ? [] : [customboxShadow],
        border: BoxBorder.all(
          color: isDark ? AppColors.outlineBorderColorDark : Colors.transparent,
        ), // مفيش shadow في الدارك
      ),
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            width: 120,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: progress,
                  strokeWidth: 12,
                  backgroundColor: isDark
                      ? Colors.white.withOpacity(0.08)
                      : Colors.grey.shade200,
                  valueColor: const AlwaysStoppedAnimation(Color(0xFF00D04A)),
                ),

                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$percentage%",
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Daily Goal",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          Text(
            "Daily Calorie Goal",
            style: Theme.of(context).textTheme.titleMedium,
          ),

          const SizedBox(height: 4),

          Text("$goal kcal", style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
