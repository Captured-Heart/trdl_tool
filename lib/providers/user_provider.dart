import '/all_imports.dart';

final Provider<FirebaseAuth> userProvider =
    // ignore: always_specify_types
    Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});
