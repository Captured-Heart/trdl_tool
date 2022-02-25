import 'package:trdl_tool/core/all_imports.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
