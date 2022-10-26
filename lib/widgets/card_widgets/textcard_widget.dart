import '/all_imports.dart';

class TextCard extends StatelessWidget {
  const TextCard({
    Key? key,
    required this.widgetList,
  }) : super(key: key);

  final List<Widget> widgetList;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: Utils.kCardElevation,
      child: Padding(
        padding: Utils.kCardPadding,
        child: Column(
          children: widgetList,
        ),
      ),
    );
  }
}