import 'package:trdl_tool/core/all_imports.dart';

final alreadySignedInUser = FirebaseAuth.instance.currentUser;

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
    if (alreadySignedInUser != null) {
      Logger().wtf(
        'User is known and logged in, go to home_screen.',
      );
      timer = Timer(
        /*SET TIMER TO ... SECONDS*/
        const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(
          context,
          'home_screen',
        ),
      );
    }
    /*USER IS UNKNOWN => WELCOME_SCREEN*/
    else {
      Logger().wtf(
        'User is unknown or new, go to welcome_screen. Timer takes 3 seconds.',
      );
      timer = Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacementNamed(
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
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 16.0,
                left: 24.0,
                right: 24.0,
              ),
              child: TRDLtoolLogo(),
            ),
            const SizedBox(
              height: 24.0,
            ),
            const SpinKitDoubleBounce(
              /*SPINNER DURATION ENDLESS*/
              color: Color(kDarkGreen),
              size: 100.0,
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Text(
              Strings.poweredBy,
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
              Strings.and,
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