import 'package:fitu/core/config/themes/Theme_cubit/theme_cubit.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            ElevatedButton(
              onPressed: () {
                if (context.isdarkMode) {
                  context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                } else {
                  context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                }
              },
              child: const Text('data'),
            ),
          ],
        ),
      ),
    );
  }
}
