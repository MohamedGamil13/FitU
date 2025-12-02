import 'package:fitu/core/constants/images_path.dart';
import 'package:fitu/core/routes/router_name.dart';
import 'package:fitu/core/widgets/custom_snackbar.dart';
import 'package:fitu/features/Auth/presentation/view_model/cubit/sign_in_with_google_cubit.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/auth_custom_button.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_divider.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/custom_text_row.dart';
import 'package:fitu/features/Auth/presentation/views/widgets/sign_up_textfields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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

                BlocConsumer<SignInWithGoogleCubit, SignInWithGoogleState>(
                  listener: (context, state) {
                    if (state is SignInWithGoogleSucess) {
                      context.go(AppRoutes.homeView);
                    } else if (state is SignInWithGoogleFailure) {
                      customSnackBar(context, state);
                    }
                  },
                  builder: (context, state) {
                    return AuthCustomButton(
                      text: 'Sign In With Google',
                      logo: AppImages.googleIcon,
                      action: () {},
                      //  () {
                      //   context
                      //       .read<SignInWithGoogleCubit>()
                      //       .signInWithGoogle();
                      // },
                    );
                  },
                ),

                const SizedBox(height: 25),
                AuthCustomButton(
                  text: 'Sign In With FaceBook',
                  logo: AppImages.faceBookIcon,
                  action: () {},
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
