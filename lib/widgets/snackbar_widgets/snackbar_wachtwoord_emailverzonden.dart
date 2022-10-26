import '/all_imports.dart';

final SnackBar snackBarWachtwoordEmailVerzonden = SnackBar(
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