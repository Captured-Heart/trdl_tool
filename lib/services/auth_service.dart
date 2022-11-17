// ignore_for_file: use_build_context_synchronously

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
  Future<void> signIn({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    Logger().i(
      'Signing in... Checking for verification...',
    );
//TODO: LETS RUN THE WHOLE LOGIN PROCESS HERE
    try {
      final UserCredential user =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (user.user!.emailVerified) {
        Logger().i(
          'User is verified... Going to HomeScreen',
        );
        await Navigator.pushReplacementNamed(
          context,
          'home_screen',
        );
      }
      //IF THIS USER IS NOT VERIFIED, YOU CAN SEND THE EMAIL VERFICATION MAIL, AND UI[DIALOG,SNACKBAR] INFORMING USER TO GO TO MAIL AND VERIFY THE ACCT
      else {
        await user.user!.sendEmailVerification();
        //TODO: DISPLAY DIALOG TO INFORM USER

// I JUST SAW YOU METHODS, I WILL PASTE THEM AS YOU EARLIER DID
        Logger().i(
          'User is NOT verified... Returning SnackBar',
        );
        ScaffoldMessenger.of(context).showSnackBar(
          snackBarLoginEmailVerificatie,
        );
      }
    } on FirebaseAuthException catch (e) {
      // YOU COULD IMPLEMENT ANY METHOD HERE ON CATCH ERRORS
      Logger().w('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        snackBarLoginErIsIetsMis,
      );
    }
  }

  //Sign OUT user
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    Logger().i(
        'Signing out currentUser... Currentuser: ${FirebaseAuth.instance.currentUser!.email} should ');
  }

  //Send password reset email only with valid email
  Future<void> resetPassword({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(
      email: email,
    );
  }
}
