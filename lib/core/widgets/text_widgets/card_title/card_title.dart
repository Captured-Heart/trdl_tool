import 'package:trdl_tool/core/all_imports.dart';

class CardTitle extends StatelessWidget {
  final String title;

  const CardTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SubTitleText(
            subtitle: title,
          ),
        ),
      ],
    );
  }
}
