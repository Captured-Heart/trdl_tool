import 'package:trdl_tool/all_imports.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp({required String email, required String password}) async {
    /*SIGN UP USER ONLY WITH EMAIL AND PASSWORD*/
    await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> signIn({required String email, required String password}) async {
    /*SIGN IN USER ONLY WITH EMAIL AND PASSWORD*/
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  Future<void> resetPassword({required String email}) async {
    /*SEND PASSWORD RESET EMAIL ONLY WITH VALID EMAIL*/
    await _auth.sendPasswordResetEmail(
      email: email,
    );
  }
}
