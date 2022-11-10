import '/all_imports.dart';

class FirebaseUtils {
  static String? emailCurrentUser = FirebaseAuth.instance.currentUser?.email;
}