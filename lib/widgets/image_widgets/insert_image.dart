import 'package:trdl_tool/all_imports.dart';

class InsertImage extends StatelessWidget {
  const InsertImage({
    required this.image,
    Key? key,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          child: Image.asset(
            image,
          ),
        ),
      ],
    );
  }
}
