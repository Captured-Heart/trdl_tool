import 'package:trdl_tool/all_imports.dart';

/*Appbar Text*/
class AppBarText extends StatelessWidget {
  const AppBarText({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

/*AppBar IconButton*/
class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, 'homescreen');
      },
      icon: const Icon(
        Icons.home,
      ),
    );
  }
}

/*Title Text*/
class TitleText extends StatelessWidget {
  const TitleText({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24.0,
      ),
    );
  }
}

/*Subtitle Text*/
class SubTitleText extends StatelessWidget {
  const SubTitleText({required this.subtitle, Key? key}) : super(key: key);
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/*Body Text*/
class BodyText extends StatelessWidget {
  const BodyText({required this.text, Key? key}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 16.0,
      ),
    );
  }
}

/*SizedBox Height 8.0*/
class SizedBoxH extends StatelessWidget {
  const SizedBoxH({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 8.0,
    );
  }
}

/*SizedBox Width 8.0*/
class SizedBoxW extends StatelessWidget {
  const SizedBoxW({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 8.0,
    );
  }
}

/*Navigation Button*/
class NavButton extends StatelessWidget {
  const NavButton({
    required this.buttontext,
    required this.destination,
    Key? key,
  }) : super(key: key);
  final String destination;
  final String buttontext;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, destination);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            12.0,
          ),
        ),
      ),
      child: Text(
        buttontext,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/*Rounded Button from ChatPage*/
class RoundedButton extends StatelessWidget {
  const RoundedButton({
    required this.text,
    required this.color,
    required this.onPressed,
    Key? key,
  }) : super(
          key: key,
        );
  final Color color;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
