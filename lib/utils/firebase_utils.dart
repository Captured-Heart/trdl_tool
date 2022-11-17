import '/all_imports.dart';

class FirebaseUtils {
  static String? emailCurrentUser = FirebaseAuth.instance.currentUser!.email;
  static String? displayNameCurrentUser =
      FirebaseAuth.instance.currentUser!.displayName;
}
