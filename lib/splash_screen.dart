import 'dart:async';

import 'all_imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => WelcomeScreen(),
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child:
                        Image.asset('assets/images/trdlToolLogoSmallPNG.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            SpinKitDoubleBounce(
              color: Color(0xFF0D4F18),
              size: 100.0,
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              'powered by',
              style: GoogleFonts.questrial(
                  textStyle: TextStyle(
                fontSize: 8.0,
              )),
            ),
            Container(
              height: 30.0,
              width: 100.0,
              child: Image.asset('assets/images/plotsklappsLogo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
