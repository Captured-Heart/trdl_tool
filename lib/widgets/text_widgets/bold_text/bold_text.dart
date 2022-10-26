import '/all_imports.dart';

class BoldText extends StatelessWidget {
  const BoldText({
    required this.boldtext,
    required this.indents,
    Key? key,
  }) : super(key: key);

  final int indents;
  final String boldtext;

  @override
  Widget build(BuildContext context) {
    if (indents == 0) {
      return Row(
        children: <Expanded>[
          Expanded(
            child: Text(
              boldtext,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      );
    } else if (indents == 1) {
      return Row(
        children: <Widget>[
          const SizedBoxW(),
          Expanded(
            child: Text(
              boldtext,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      );
    } else if (indents == 2) {
      return Row(
        children: <Widget>[
          const SizedBoxW(),
          const SizedBoxW(),
          Expanded(
            child: Text(
              boldtext,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      );
    } else if (indents == 3) {
      return Row(
        children: <Widget>[
          const SizedBoxW(),
          const SizedBoxW(),
          const SizedBoxW(),
          Expanded(
            child: Text(
              boldtext,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: <Expanded>[
          Expanded(
            child: Text(
              boldtext,
              style: const TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      );
    }
  }
}