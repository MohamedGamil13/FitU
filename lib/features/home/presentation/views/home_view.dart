import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeViewBody(),
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (value) {
          index = value;
        },
        color: AppColors.circleAvtarColorDark,
        backgroundColor: AppColors.backGroundDark,
        buttonBackgroundColor: AppColors.circleAvtarColorDark,
        animationDuration: const Duration(milliseconds: 200),
        items: const [
          Icon(Icons.home, size: 30),
          Icon(Icons.favorite, size: 30),
          Icon(Icons.settings, size: 30),
        ],
      ),
    );
  }
}
