import 'package:trdl_tool/all_imports.dart';

/*Appbar Text*/
class AppBarText extends StatelessWidget {
  const AppBarText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.questrial(
        textStyle: const TextStyle(
          fontWeight: FontWeight.w700,
        ),
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
  const TitleText({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.questrial(
        textStyle: const TextStyle(
          fontSize: 24.0,
        ),
      ),
    );
  }
}

/*Subtitle Text*/
class SubTitleText extends StatelessWidget {
  const SubTitleText({Key? key, required this.subtitle}) : super(key: key);
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: GoogleFonts.questrial(
        textStyle: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/*Body Text*/
class BodyText extends StatelessWidget {
  const BodyText({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.questrial(
        textStyle: const TextStyle(
          fontSize: 16.0,
        ),
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
  const NavButton({Key? key, required this.buttontext, required this.destination,}) : super(key: key);
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
        style: GoogleFonts.questrial(
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
