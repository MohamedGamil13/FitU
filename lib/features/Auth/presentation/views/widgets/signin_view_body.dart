import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/core/routes/router_name.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_divider.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_text_row.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_textfield.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/logo_custom_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text('Welcome Back!', style: AppTextStyles.lexendBold36),
                const SizedBox(height: 10),
                const Text(
                  'Log in to continue your fitness journey.',
                  style: AppTextStyles.lexendSemiBold18,
                ),
                const SizedBox(height: 45),
                const CustomTextfield(fieldHint: 'Email Address'),
                const SizedBox(height: 20),
                const CustomTextfield(fieldHint: 'Password'),
                CustomTextRow(
                  clkText: 'Forget Password?',
                  action: () {
                    context.go(AppRoutes.resetPasswordView);
                  },
                  mainAxisAlignment: .end,
                ),
                const SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text('Log In')),
                const SizedBox(height: 35),
                const CustomDivider(textBetween: 'Or continue with'),
                const SizedBox(height: 35),
                const LogoCustomRow(),
                const SizedBox(height: 35),
                CustomTextRow(
                  text: 'Don’t have an account?',
                  clkText: 'Create one',
                  action: () {
                    context.go(AppRoutes.signUpView);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
