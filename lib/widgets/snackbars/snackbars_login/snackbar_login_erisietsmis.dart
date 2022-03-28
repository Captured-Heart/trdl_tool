import 'package:trdl_tool/all_imports.dart';

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
