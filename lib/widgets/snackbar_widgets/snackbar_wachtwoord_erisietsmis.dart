import '/all_imports.dart';

final SnackBar snackBarWachtwoordErIsIetsMis = SnackBar(
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