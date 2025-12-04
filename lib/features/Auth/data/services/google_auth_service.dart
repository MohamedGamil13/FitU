import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<User?> signInWithGoogle() async {
    try {
      await GoogleSignIn.instance.initialize(
        // clientId: EnvKey.cLIENT_ID,
        // serverClientId: EnvKey.cLIENT_ID_server,
      );

      final googleUser = await GoogleSignIn.instance.authenticate();

      final googleAuth = googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );

      final userCredential = await auth.signInWithCredential(credential);
      return userCredential.user;
    } catch (e) {
      print("Google Sign-In Error: $e");
      return null;
    }
  }
}
