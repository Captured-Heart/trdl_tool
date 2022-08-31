import 'package:trdl_tool/all_imports.dart';

class MenuItemText extends StatelessWidget {
  const MenuItemText({
    Key? key,
    required this.menuItemText,
  }) : super(key: key);

  final String menuItemText;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerRight,
        child: Text(
          menuItemText,
        ),
      ),
    );
  }
}
