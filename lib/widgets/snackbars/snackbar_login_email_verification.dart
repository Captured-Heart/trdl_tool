import 'package:trdl_tool/core/all_imports.dart';

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
