import '/all_imports.dart';

//AuthService class to setup signing process
class AuthService {
  //Sign UP user only with email and password
  Future<void> signUp({required String email, required String password}) async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  //Sign IN user only with email and password
  Future<void> signIn({required String email, required String password}) async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  //Send password reset email only with valid email
  Future<void> resetPassword({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: email,
    );
  }
}