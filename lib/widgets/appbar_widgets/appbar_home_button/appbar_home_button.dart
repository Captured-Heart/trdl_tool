import 'package:trdl_tool/all_imports.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, 'home_screen');
      },
      icon: const Icon(
        Icons.home,
      ),
    );
  }
}
