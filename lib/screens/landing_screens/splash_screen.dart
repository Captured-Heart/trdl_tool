import 'dart:async';

import '/all_imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    /*USER IS KNOWN => HOME_SCREEN*/
    if (FirebaseAuth.instance.currentUser != null) {
      timer = Timer(
        /*SET TIMER TO ... SECONDS*/
        const Duration(seconds: 3),
        () async => Navigator.pushReplacementNamed(
          context,
          'home_screen',
        ),
      );
    }
    /*USER IS UNKNOWN => WELCOME_SCREEN*/
    else {
      timer = Timer(
        const Duration(seconds: 5),
        () async => Navigator.pushReplacementNamed(
          context,
          'welcome_screen',
        ),
      );
    }
    super.initState();
  }

  @override
  /*KILL TIMER*/
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(
                top: 16.0,
                left: 16.0,
                right: 16.0,
              ),
              child: TRDLtoolLogo(),
            ),
            const SizedBox(
              height: 24.0,
            ),
            SpinKitDoubleBounce(
              /*SPINNER DURATION ENDLESS*/
              color: greenMoneyColorsLight.primary,
              size: 100.0,
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Text(
              StringUtils.poweredBy,
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            SizedBox(
              height: 75.0,
              width: 150.0,
              child: Image.asset(
                'assets/icons/plotsklappsLogoSmall.png',
              ),
            ),
            const Text(
              StringUtils.and,
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
            const SizedBoxH(),
            const FlutterLogo(
              size: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}
