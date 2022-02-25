import 'package:trdl_tool/core/all_imports.dart';

class SubTitleText extends StatelessWidget {
  const SubTitleText({
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
