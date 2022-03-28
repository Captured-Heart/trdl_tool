import 'package:trdl_tool/all_imports.dart';

class CurrentVersion extends StatelessWidget {
  const CurrentVersion({
    required this.versionNumber,
    Key? key,
  }) : super(key: key);

  final String versionNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'De huidige versie is $versionNumber',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
