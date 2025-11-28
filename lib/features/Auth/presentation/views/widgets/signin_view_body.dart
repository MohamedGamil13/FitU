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
                Text('Welcome Back!', style: AppTextStyles.lexendBold36),
                SizedBox(height: 10),
                Text(
                  'Log in to continue your fitness journey.',
                  style: AppTextStyles.lexendSemiBold18,
                ),
                SizedBox(height: 45),
                CustomTextfield(fieldHint: 'Email Address'),
                SizedBox(height: 20),
                CustomTextfield(fieldHint: 'Password'),
                CustomTextRow(
                  clkText: 'Forget Password?',
                  action: () {
                    context.go(AppRoutes.resetPasswordView);
                  },
                  mainAxisAlignment: .end,
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {}, child: Text('Log In')),
                SizedBox(height: 35),
                CustomDivider(textBetween: 'Or continue with'),
                SizedBox(height: 35),
                LogoCustomRow(),
                SizedBox(height: 35),
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
