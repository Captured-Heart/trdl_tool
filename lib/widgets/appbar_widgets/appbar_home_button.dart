import '/all_imports.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await Navigator.pushReplacementNamed(context, 'home_screen');
      },
      icon: const Icon(IconUtils.iconHome),
      tooltip: 'Terug naar begin',
    );
  }
}