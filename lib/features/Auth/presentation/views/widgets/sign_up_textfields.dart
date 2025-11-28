import 'package:fitu/core/config/themes/text_style.dart';
import 'package:flutter/material.dart';

class SignUpTextfields extends StatelessWidget {
  const SignUpTextfields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
