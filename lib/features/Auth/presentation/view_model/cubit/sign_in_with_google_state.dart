part of 'sign_in_with_google_cubit.dart';

@immutable
sealed class SignInWithGoogleState {}

final class SignInWithGoogleInitial extends SignInWithGoogleState {}

final class SignInWithGoogleSucess extends SignInWithGoogleState {
  final User user;

  SignInWithGoogleSucess({required this.user});
}

final class SignInWithGoogleFailure extends SignInWithGoogleState {
  final String errorMessage;

  SignInWithGoogleFailure({required this.errorMessage});
}

final class SignInWithGoogleWaiting extends SignInWithGoogleState {}
