import 'package:trdl_tool/all_imports.dart';

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
