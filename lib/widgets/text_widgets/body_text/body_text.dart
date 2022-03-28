import 'package:trdl_tool/all_imports.dart';

class BodyText extends StatelessWidget {
  const BodyText({required this.indents, required this.text, Key? key})
      : super(key: key);
  final int indents;
  final String text;

  @override
  Widget build(BuildContext context) {
    if (indents == 0) {
      return Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    } else if (indents == 1) {
      return Row(
        children: [
          const SizedBoxW(),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    } else if (indents == 2) {
      return Row(
        children: [
          const SizedBoxW(),
          const SizedBoxW(),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    } else if (indents == 3) {
      return Row(
        children: [
          const SizedBoxW(),
          const SizedBoxW(),
          const SizedBoxW(),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    }
  }
}
