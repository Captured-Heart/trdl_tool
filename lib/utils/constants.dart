import '/all_imports.dart';

/// Firebase constants
final FirebaseAuth _auth = FirebaseAuth.instance;
String? emailCurrentUser = _auth.currentUser!.email;

/// ProChat constants
late String hintText;

const TextStyle kSendButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 28.0,
);

const InputDecoration kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  hintText: 'Typ hier je bericht...',
);

const InputDecoration kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
);