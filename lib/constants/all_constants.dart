import 'package:trdl_tool/all_imports.dart';

/*FIREBASE CONSTANTS*/
final FirebaseAuth _auth = FirebaseAuth.instance;
String? emailCurrentUser = _auth.currentUser!.email;

/*CARD CONSTANTS*/
const double kCardElevation = 6.0;
const EdgeInsets kCardPadding = EdgeInsets.all(8.0);

/*PROCHAT CONSTANTS*/
late String hintText;

const kSendButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 28.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
  hintText: 'Typ hier je bericht...',
);

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: 10.0,
    horizontal: 20.0,
  ),
);
