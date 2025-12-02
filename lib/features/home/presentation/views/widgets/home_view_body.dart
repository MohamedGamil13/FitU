import 'package:fitu/features/home/presentation/views/widgets/activity_icons_row.dart';
import 'package:fitu/features/home/presentation/views/widgets/calorie_goal_card.dart';
import 'package:fitu/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:fitu/features/home/presentation/views/widgets/home_view_body_section.dart';
import 'package:fitu/features/home/presentation/views/widgets/meals_listtile.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            HomeViewAppBar(),
            HomeViewBodySection(),
            SizedBox(height: 24),
            CalorieGoalCard(progress: 0.60, goal: 2000),
            ActivityIconsRow(),
            MealsListtile(),
          ],
        ),
      ),
    );
  }
}
