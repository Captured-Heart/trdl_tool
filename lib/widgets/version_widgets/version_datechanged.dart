import 'package:trdl_tool/core/all_imports.dart';

class DateChanged extends StatelessWidget {
  const DateChanged({
    required this.date,
    Key? key,
  }) : super(key: key);

  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            date,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}