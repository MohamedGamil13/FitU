import 'package:fitu/core/config/themes/Theme_cubit/theme_cubit.dart';
import 'package:fitu/core/config/themes/app_colors.dart';
import 'package:fitu/core/config/themes/extension/theme_extension.dart';
import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/core/constants/images_path.dart';
import 'package:fitu/core/routes/router_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                if (context.isdarkMode) {
                  context.read<ThemeCubit>().updateTheme(ThemeMode.light);
                } else {
                  context.read<ThemeCubit>().updateTheme(ThemeMode.dark);
                }
              },
              child: Image.asset(AppImages.registerImage),
            ),
            SizedBox(height: 140),
            Text('FitU', style: AppTextStyles.lexendBold36),
            SizedBox(height: 10),
            Text(
              'Your Fitness Journey Starts Here',
              style: AppTextStyles.lexendSemiBold18,
            ),
            Spacer(flex: 2),
            ElevatedButton(
              onPressed: () {
                context.push(AppRoutes.signUpView);
              },
              child: Text('Create Account'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondColor,
                foregroundColor: AppColors.surface,
              ),
              child: Text('Log In'),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
