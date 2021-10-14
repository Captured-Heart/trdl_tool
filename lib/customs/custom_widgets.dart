import 'package:trdl_tool/all_imports.dart';

//APPBAR TEXT
class AppBarText extends StatelessWidget {
  final String title;
  const AppBarText({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.questrial(
        textStyle: TextStyle(
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

//APPBAR HOME ICONBUTTON
class HomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, 'homescreen');
      },
      icon: Icon(
        Icons.home,
      ),
    );
  }
}

//TITLETEXT
class TitleText extends StatelessWidget {
  final String title;
  const TitleText({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.questrial(
        textStyle: TextStyle(
          fontSize: 24.0,
        ),
      ),
    );
  }
}

//SUBTITLETEXT
class SubTitleText extends StatelessWidget {
  final String subtitle;
  const SubTitleText({required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: GoogleFonts.questrial(
        textStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

//BODYTEXT
class BodyText extends StatelessWidget {
  final String text;
  const BodyText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.questrial(
        textStyle: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}

//SIZEDBOXHEIGHT 8
class SizedBoxH extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 8.0,
    );
  }
}

//SIZEDBOXWITH 8
class SizedBoxW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 8.0,
    );
  }
}

//BUTTON NAVIGATION
class NavButton extends StatelessWidget {
  final String destination;
  final String buttontext;
  const NavButton({required this.buttontext, required this.destination});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, destination);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            24.0,
          ),
        ),
      ),
      child: Text(
        buttontext,
        style: GoogleFonts.questrial(
          textStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
