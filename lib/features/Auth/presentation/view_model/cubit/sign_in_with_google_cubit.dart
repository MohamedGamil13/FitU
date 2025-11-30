import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitu/features/Auth/data/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_in_with_google_state.dart';

class SignInWithGoogleCubit extends Cubit<SignInWithGoogleState> {
  AuthRepository repo;
  SignInWithGoogleCubit(this.repo) : super(SignInWithGoogleInitial());

  Future<void> signInWithGoogle() async {
    emit(SignInWithGoogleWaiting());
    final user = await repo.signInWithGoogle();
    if (user == null) {
      emit(SignInWithGoogleFailure());
    } else {
      emit(SignInWithGoogleSucess(user: user));
    }
  }
}
