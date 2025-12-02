import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/features/home/presentation/views/widgets/meal_listile.dart';
import 'package:flutter/material.dart';

class MealsListtile extends StatelessWidget {
  const MealsListtile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: .start,
      children: [
        Text('Meals of the Day', style: AppTextStyles.lexendBold24),
        SizedBox(height: 12),
        MealListile(),
        SizedBox(height: 10),
        MealListile(),
        SizedBox(height: 10),
        MealListile(),
      ],
    );
  }
}
