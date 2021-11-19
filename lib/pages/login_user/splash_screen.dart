import 'package:trdl_tool/all_imports.dart';

final alreadySignedInUser = FirebaseAuth.instance.currentUser;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    /*Check if user is already signed in*/
    if (alreadySignedInUser != null) {
      Logger().wtf(
        'User is known and logged in, go to home_screen.',
      );
      Timer(
        /*Set timer duration to ... seconds*/
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen(),
          ),
        ),
      );
    }
    /*Go to welcome_screen, user is unknown*/
    else {
      Logger().wtf(
        'User is unknown or new, go to welcome_screen. Timer takes 3 seconds.',
      );
      Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const WelcomeScreen(),
          ),
        ),
      );
    }

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
              /*Show a spinner, duration endless*/
              color: Color(kDarkGreen),
              size: 100.0,
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Text(
              Strings.poweredBy,
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
            SizedBox(
              height: 30.0,
              width: 100.0,
              //TODO: Get someone to make a better logo!
              child: Image.asset(
                'assets/images/plotsklappsLogoBlack.png',
              ),
            ),
            const Text(
              Strings.and,
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
            const SizedBoxH(),
            const FlutterLogo(
              size: 24.0,
            ),
          ],
        ),
      ),
    );
  }
}
