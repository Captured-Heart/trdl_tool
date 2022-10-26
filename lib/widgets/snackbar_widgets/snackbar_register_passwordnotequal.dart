import '/all_imports.dart';

final SnackBar snackBarRegisterPasswordNotEqual = SnackBar(
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