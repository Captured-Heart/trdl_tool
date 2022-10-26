import '/all_imports.dart';

class ChangesMade extends StatelessWidget {
  const ChangesMade({
    required this.changes,
    Key? key,
  }) : super(key: key);

  final String changes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Expanded>[
        Expanded(
          child: Text(
            changes,
            // style: const TextStyle(
            //   fontSize: 16.0,
            // ),
          ),
        ),
      ],
    );
  }
}