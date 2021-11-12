import 'package:trdl_tool/all_imports.dart';

/*Jungle Green color constant*/
const kDarkGreen = 0xFF004E14;
const kLightGreen = 0xFF738E7E;
const kSecondaryGreen = 0xFF2F3E32;

/*ProChat constants*/
late String hintText;

const kSendButtonTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 24.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Typ hier je bericht...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xFF0D4F18), width: 2.0),
  ),
);

const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF0D4F18), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF0D4F18), width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

/*SnackBar constants*/
final snackBarLoginEmailVerificatie = SnackBar(
  content: const Text(
    'Je emailadres is nog niet geverifieerd. Nog niks ontvangen? Controleer ook je SPAM folder.',
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  duration: const Duration(
    seconds: 5,
  ),
  action: SnackBarAction(
    label: 'OK',
    onPressed: () {},
  ),
);

final snackBarLoginErIsIetsMis = SnackBar(
  content: const Text(
    'Er is iets mis!\nBen je al geregistreerd of is je wachtwoord misschien onjuist?',
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  duration: const Duration(
    seconds: 5,
  ),
  action: SnackBarAction(
    label: 'OK',
    onPressed: () {},
  ),
);

final snackBarWachtwoordEmailVerzonden = SnackBar(
  content: const Text(
    'Als het emailadres bekend is, zal er een resetlink om het wachtwoord te wijzigen verzonden worden. Controleer ook de SPAM folder.',
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  duration: const Duration(
    seconds: 5,
  ),
  action: SnackBarAction(
    label: 'OK',
    onPressed: () {},
  ),
);

final snackBarWachtwoordErIsIetsMis = SnackBar(
  content: const Text(
    'Er is iets mis!\nBen je al geregistreerd?',
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  duration: const Duration(
    seconds: 5,
  ),
  action: SnackBarAction(
    label: 'OK',
    onPressed: () {},
  ),
);

final snackBarRegisterEmailWrong = SnackBar(
  content: const Text(
    'Controleer het emailadres. LET OP: Het emailadres moet eindingen op @prorail.nl',
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  duration: const Duration(
    seconds: 5,
  ),
  action: SnackBarAction(
    label: 'OK',
    onPressed: () {},
  ),
);

final snackBarRegisterPasswordShort = SnackBar(
  content: const Text(
    'Kies een wachtwoord van minimaal 6 tekens',
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  duration: const Duration(
    seconds: 5,
  ),
  action: SnackBarAction(
    label: 'OK',
    onPressed: () {},
  ),
);

final snackBarRegisterPasswordNotEqual = SnackBar(
  content: const Text(
    'De ingevulde wachtwoorden komen niet overeen',
    style: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  duration: const Duration(
    seconds: 5,
  ),
  action: SnackBarAction(
    label: 'OK',
    onPressed: () {},
  ),
);
