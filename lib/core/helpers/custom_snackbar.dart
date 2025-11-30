import 'package:fitu/core/widgets/snackbar.dart';
import 'package:fitu/features/Auth/presentation/view_model/cubit/sign_in_with_google_cubit.dart';
import 'package:flutter/material.dart';

void customSnackBar(BuildContext context, SignInWithGoogleFailure state) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackbarWidget(message: state.errorMessage) as SnackBar);
}
