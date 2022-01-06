import 'package:trdl_tool/core/all_imports.dart';

class BoldText extends StatelessWidget {
  const BoldText({required this.boldtext, Key? key}) : super(key: key);
  final String boldtext;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            boldtext,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
