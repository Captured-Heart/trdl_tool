import 'package:trdl_tool/core/all_imports.dart';

class AppBarText extends StatelessWidget {
  const AppBarText({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
