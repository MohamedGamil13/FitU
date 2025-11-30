import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitu/features/Auth/data/services/google_auth_service.dart';

class AuthRepository {
  final GoogleAuthService _googleAuthService;

  AuthRepository(this._googleAuthService);

  Future<User?> signInWithGoogle() async {
    final user = await _googleAuthService.signInWithGoogle();
    return user;
  }
}
