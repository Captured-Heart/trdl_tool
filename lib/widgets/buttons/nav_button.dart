import 'package:trdl_tool/core/all_imports.dart';

class NavButton extends StatelessWidget {
  const NavButton({
    required this.buttontext,
    required this.destination,
    Key? key,
  }) : super(key: key);
  final String destination;
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, destination);
      },
      child: Text(
        buttontext,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
