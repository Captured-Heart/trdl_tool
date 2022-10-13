import 'package:trdl_tool/all_imports.dart';

class MenuItemContent extends StatelessWidget {
  const MenuItemContent({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          icon,
          color: greenMoneyColorsLight.primary,
        ),
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerRight,
            child: Text(
              text,
            ),
          ),
        ),
      ],
    );
  }
}