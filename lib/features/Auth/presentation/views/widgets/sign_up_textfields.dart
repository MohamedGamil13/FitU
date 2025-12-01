import 'package:fitu/core/config/themes/text_style.dart';
import 'package:fitu/core/routes/router_name.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpTextfields extends StatelessWidget {
  const SignUpTextfields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Join FitU', style: AppTextStyles.lexendBold36),
        const SizedBox(height: 10),
        const Text(
          'Start your fitness journay today.',
          style: AppTextStyles.lexendSemiBold18,
        ),
        const SizedBox(height: 35),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Enter your name',
            prefixIcon: Icon(Icons.person),
          ),
        ),
        const SizedBox(height: 15),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Enter your Email',
            prefixIcon: Icon(Icons.email),
          ),
        ),
        const SizedBox(height: 15),
        const TextField(
          decoration: InputDecoration(
            hintText: 'Enter your Password',
            prefixIcon: Icon(Icons.lock_outlined),
          ),
        ),
        const SizedBox(height: 15),
        const TextField(
          decoration: InputDecoration(
            hintText: 'confirm your Password',
            prefixIcon: Icon(Icons.lock_outlined),
          ),
        ),
        const SizedBox(height: 35),
        ElevatedButton(
          onPressed: () {
            context.go(AppRoutes.homeView);
          },
          child: Text('Create Account'),
        ),
        const SizedBox(height: 45),
      ],
    );
  }
}
