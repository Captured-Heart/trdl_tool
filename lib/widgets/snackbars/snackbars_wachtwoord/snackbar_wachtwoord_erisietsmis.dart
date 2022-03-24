import 'package:trdl_tool/core/all_imports.dart';

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
