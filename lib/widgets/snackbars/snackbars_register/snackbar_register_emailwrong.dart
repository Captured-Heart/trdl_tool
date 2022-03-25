import 'package:trdl_tool/core/all_imports.dart';

final snackBarRegisterEmailWrong = SnackBar(
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
