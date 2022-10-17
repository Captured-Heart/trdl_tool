import '/all_imports.dart';

/// Firebase constants
final FirebaseAuth _auth = FirebaseAuth.instance;
String? emailCurrentUser = _auth.currentUser!.email;

/// Card constants
const double kCardElevation = 8.0;
const EdgeInsets kCardPadding = EdgeInsets.all(12.0);

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
