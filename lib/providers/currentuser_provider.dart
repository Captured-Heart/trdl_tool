import '/all_imports.dart';

//This provider is not used (yet). I need to figure out how to reset the currentUser when logging out first!

final StateNotifierProvider<CurrentUser, User?> currentUserProvider =
// ignore: always_specify_types
    StateNotifierProvider<CurrentUser, User?>((ref) {
  return CurrentUser();
});

class CurrentUser extends StateNotifier<User?> {
  // ignore: public_member_api_docs
  CurrentUser() : super(FirebaseAuth.instance.currentUser);

  Future<void> reloadCurrentUser() async {
    await FirebaseAuth.instance.currentUser?.reload();
    state = FirebaseAuth.instance.currentUser;
  }
}
