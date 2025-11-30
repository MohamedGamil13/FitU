import 'package:fitu/core/constants/images_path.dart';
import 'package:fitu/core/routes/router_name.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/auth_custom_button.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_divider.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_text_row.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/sign_up_textfields.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SignUpTextfields(),
                const CustomDivider(textBetween: 'OR'),
                const SizedBox(height: 35),
                const AuthCustomButton(
                  text: 'Sign In With Google',
                  logo: AppImages.googleIcon,
                ),
                const SizedBox(height: 25),
                const AuthCustomButton(
                  text: 'Sign In With FaceBook',
                  logo: AppImages.faceBookIcon,
                ),

                const SizedBox(height: 10),
                CustomTextRow(
                  text: 'Already have an account?',
                  clkText: 'Log In',
                  action: () {
                    context.go(AppRoutes.signInView);
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
