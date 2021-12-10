import 'package:trdl_tool/all_imports.dart';

final _auth = FirebaseAuth.instance;
String? emailCurrentUser = _auth.currentUser!.email;

/*TRDLTOOL LOGO*/
class TRDLtoolLogo extends StatelessWidget {
  const TRDLtoolLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.railway_alert,
          size: 64.0,
          color: Color(kDarkGreen),
        ),
        SizedBoxW(),
        Expanded(
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              'TRDLtool',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 64.0,
                color: Color(kDarkGreen),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/*APPBAR TITLE*/
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

/*APPBAR LOGOUT BUTTON*/
class LogOutButton extends StatelessWidget {
  const LogOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showLogOutPopup(context);
      },
      icon: const Icon(Icons.logout),
    );
  }
}

/*APPBAR HOME BUTTON*/
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

/*CARDTITLE WIDGET*/
class CardTitle extends StatelessWidget {
  final String title;

  const CardTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SubTitleText(
            subtitle: title,
          ),
        ),
      ],
    );
  }
}

/*TEXT TITLE WIDGET*/
class TitleText extends StatelessWidget {
  const TitleText({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 24.0,
            ),
          ),
        ),
      ],
    );
  }
}

/*TEXT SUBTITLE WIDGET*/
class SubTitleText extends StatelessWidget {
  const SubTitleText({required this.subtitle, Key? key}) : super(key: key);
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            subtitle,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

/*BOLD TEXT WIDGET*/
class BoldText extends StatelessWidget {
  const BoldText({required this.boldtext, Key? key}) : super(key: key);
  final String boldtext;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            boldtext,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

/*TEXT BODY WIDGET WITH/WITHOUT INDENTS*/
class BodyText extends StatelessWidget {
  const BodyText({required this.indents, required this.text, Key? key}) : super(key: key);
  final int indents;
  final String text;

  @override
  Widget build(BuildContext context) {
    if (indents == 0) {
      return Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    } else if (indents == 1) {
      return Row(
        children: [
          const SizedBoxW(),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    } else if (indents == 2) {
      return Row(
        children: [
          const SizedBoxW(),
          const SizedBoxW(),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    } else if (indents == 3) {
      return Row(
        children: [
          const SizedBoxW(),
          const SizedBoxW(),
          const SizedBoxW(),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    } else {
      return Row(
        children: [
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      );
    }
  }
}

/*INSERT IMAGE WIDTH * 0.75*/
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

/*TABLECELL WIDGET BOLD*/
class TableTextBold extends StatelessWidget {
  const TableTextBold({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

/*TABLECELL WIDGET*/
class TableText extends StatelessWidget {
  const TableText({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
      ),
    );
  }
}

/*SIZEDBOX HEIGHT 8.0*/
class SizedBoxH extends StatelessWidget {
  const SizedBoxH({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 8.0,
    );
  }
}

/*SIZEDBOX WIDTH 8.0*/
class SizedBoxW extends StatelessWidget {
  const SizedBoxW({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 8.0,
    );
  }
}

/*ROUNDED BUTTON CHATPAGE*/
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
