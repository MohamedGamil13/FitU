import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(Icons.home),
        Icon(Icons.restaurant_menu),
        Icon(Icons.bar_chart),
        Icon(Icons.person),
      ],
    );
  }
}
