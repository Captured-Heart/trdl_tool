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

//All icons all over app should use these constants!
class Utils {
  static const IconData iconHome =
      IconData(0xf107, fontFamily: 'MaterialIcons');
  static const IconData iconInfo =
      IconData(0xf128, fontFamily: 'MaterialIcons');
  static const IconData iconWW = IconData(0xf458, fontFamily: 'MaterialIcons');
  static const IconData iconAI = IconData(0xf1c2, fontFamily: 'MaterialIcons');
  static const IconData iconGame =
      IconData(0xf3ca, fontFamily: 'MaterialIcons');
  static const IconData iconChat =
      IconData(0xf0b0, fontFamily: 'MaterialIcons');

  static const double kCardElevation = 8.0;
  static const EdgeInsets kCardPadding = EdgeInsets.all(12.0);

  static const String appBarTitleWW = 'Werkwijze';
  static const String appBarTitleAI = 'Achtergrondinformatie';

  static const String textCardTitleProcedure = 'Procedure';
  static const String textCardTitleRisico = "Risico('s)";
  static const String textCardTitleContext = 'Context';
}