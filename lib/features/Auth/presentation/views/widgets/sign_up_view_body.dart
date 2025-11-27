import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/core/constants/images_path.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/auth_custom_button.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_divider.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_text_row.dart';
import 'package:flutter/material.dart';

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
                Text('Join FitU', style: AppTextStyles.lexendBold36),
                SizedBox(height: 10),
                Text(
                  'Start your fitness journay today.',
                  style: AppTextStyles.lexendSemiBold18,
                ),
                SizedBox(height: 35),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your Password',
                    prefixIcon: Icon(Icons.lock_outlined),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'confirm your Password',
                    prefixIcon: Icon(Icons.lock_outlined),
                  ),
                ),
                SizedBox(height: 35),
                ElevatedButton(onPressed: () {}, child: Text('Create Account')),
                SizedBox(height: 45),
                CustomDivider(textBetween: 'OR'),
                SizedBox(height: 35),
                AuthCustomButton(
                  text: 'Sign In With Google',
                  logo: AppImages.googleIcon,
                ),
                SizedBox(height: 25),
                AuthCustomButton(
                  text: 'Sign In With FaceBook',
                  logo: AppImages.faceBookIcon,
                ),
                SizedBox(height: 10),
                CustomTextRow(
                  text: 'Already have an account?',
                  clkText: 'Log In',
                  action: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
