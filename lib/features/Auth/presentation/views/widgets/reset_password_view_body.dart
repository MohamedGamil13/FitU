import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/core/routes/router_name.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_text_row.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPasswordViewBody extends StatelessWidget {
  const ResetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            SizedBox(height: 200),
            Text('Reset Your Password', style: AppTextStyles.lexendBold36),
            SizedBox(height: 10),
            Text(
              'Enter your email to receive a reset link',
              style: AppTextStyles.lexendSemiBold18,
            ),
            SizedBox(height: 35),
            CustomTextfield(fieldHint: 'Email Address'),
            SizedBox(height: 35),
            ElevatedButton(onPressed: () {}, child: Text('Send Reset Link')),
            SizedBox(height: 35),
            CustomTextRow(
              clkText: 'Back to Login',
              action: () {
                context.go(AppRoutes.signInView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
