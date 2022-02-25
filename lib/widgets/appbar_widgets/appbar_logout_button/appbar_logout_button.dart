import 'package:trdl_tool/core/all_imports.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showLogOutPopup(context);
      },
      icon: const Icon(Icons.logout),
    );
  }
}
