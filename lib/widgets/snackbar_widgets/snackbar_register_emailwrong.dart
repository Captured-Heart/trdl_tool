import '/all_imports.dart';

final SnackBar snackBarRegisterEmailWrong = SnackBar(
  content: const Text(
    'Controleer het emailadres. LET OP: Het emailadres móet eindigen op @prorail.nl',
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