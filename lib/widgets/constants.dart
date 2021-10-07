import 'package:trdl_tool/all_imports.dart';

//AppbarText Widget TRDLtool
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

//FloatingActionButton Widget Home
class FabHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.home),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ),
        );
      },
    );
  }
}

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
