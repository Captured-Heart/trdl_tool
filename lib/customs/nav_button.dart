import 'package:trdl_tool/all_imports.dart';

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
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
        ),
      ),
      child: Text(
        buttontext,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
