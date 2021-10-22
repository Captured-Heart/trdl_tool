import 'package:trdl_tool/all_imports.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final alreadySignedInUser = FirebaseAuth.instance.currentUser;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /*Check if user is already signed in*/
    if (alreadySignedInUser != null) {
      Logger().d('User is known and logged in, go to home_screen.');
      Timer(
        /*Set timer duration to 2 seconds*/
        const Duration(seconds: 2),
        () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen(),
          ),
        ),
      );
    } else {
      Logger().d('User is unknown or new, go to welcome_screen.');
      /*Go to welcome_screen, user is unknown*/
      Timer(
        const Duration(seconds: 2),
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
            Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                left: 24.0,
                right: 24.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    //TODO: Get someone to make a better logo!
                    child: Image.asset('assets/images/trdlToolLogoSmallPNG.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            const SpinKitDoubleBounce(
              /*Show a spinner, duration endless*/
              color: Color(0xFF0D4F18),
              size: 100.0,
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Text(
              Strings.splashPoweredBy,
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
            SizedBox(
              height: 30.0,
              width: 100.0,
              //TODO: Get someone to make a better logo!
              child: Image.asset('assets/images/plotsklappsLogo.png'),
            ),
            const SizedBoxH(),
            const Text(
              Strings.splashAnd,
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
            const SizedBoxH(),
            const SizedBox(
              height: 30.0,
              width: 100.0,
              child: FlutterLogo(
                size: 30.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
