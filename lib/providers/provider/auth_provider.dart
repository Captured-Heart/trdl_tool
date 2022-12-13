
// ignore_for_file: comment_references, always_specify_types

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../all_imports.dart';
// import '../../services/auth_service.dart';


final  firebaseProvider = Provider<FirebaseAuth>((ProviderRef<FirebaseAuth> ref) {
  return FirebaseAuth.instance;
});

/// user current [uuid]
final Provider<String> currentUUIDProvider = Provider<String>((ProviderRef<String> ref) {
  return ref.watch(firebaseProvider).currentUser!.uid;
});

/// auth services [signOut_signIn_etc]
final  authProvider = Provider<AuthService>(( ref) {
  return AuthService();
});

final StreamProvider<User?> authStateChangesProvider = StreamProvider<User?>((StreamProviderRef<User?> ref) async* {
  yield* ref.watch(firebaseProvider).authStateChanges();
});
