import '/all_imports.dart';

final SnackBar snackBarRegisterPasswordShort = SnackBar(
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