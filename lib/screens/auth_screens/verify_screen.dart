import 'dart:async';
import '/all_imports.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  VerifyScreenState createState() => VerifyScreenState();
}

class VerifyScreenState extends State<VerifyScreen> {
  User? currentUser = FirebaseAuth.instance.currentUser;
  late Timer timer;

  @override
  void initState() {
    //In the initState, run _waitForEmailVerification() FIRST.
    Future<void>.delayed(Duration.zero, () async {
      await _waitForEmailVerification();
    });
    super.initState();
  }

  //Function that checks if currentUser is NOT null and NOT emailverified -> Send verification email.
  Future<void> _waitForEmailVerification() async {
    if (currentUser != null && !currentUser!.emailVerified) {
      Logger().i('Sending verification email...');
      await currentUser!.sendEmailVerification();
    }

    //Timer checks if user clicked on verification every 5 seconds
    timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      Logger()
          .i('Checking every 5 seconds if user pressed Verification Link...');
      checkEmailVerified();
    });
  }

  //Function that checks if user clicked on the link in the verification email
  Future<void> checkEmailVerified() async {
    currentUser = FirebaseAuth.instance.currentUser;
    //Refreshes the currentUser, if signed in
    await currentUser!.reload();
    //If user clicks on the link, stop the timer and return to LoginScreen
    if (currentUser!.emailVerified) {
      timer.cancel();
      if (mounted) {
        Logger().i('Success! Going to LoginScreen()');
        await Navigator.pushReplacementNamed(
          context,
          'login_screen',
        );
      } else {
        //Keep waiting in limbo until user does click on the link
        return;
      }
    }
  }

  @override
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
                left: 24.0,
                right: 24.0,
              ),
              child: TRDLtoolLogo(),
            ),
            const SizedBox(
              height: 24.0,
            ),
            Text(
              'Een verificatie email is verstuurd naar ${currentUser!.email}, controleer ook de junk-/spamfolder. U wordt doorgestuurd naar de inlogpagina als u op de verificatielink hebt geklikt.',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24.0,
            ),
            SpinKitDoubleBounce(
              color: greenMoneyColorsLight.primary,
              size: 100.0,
            ),
            const SizedBox(
              height: 24.0,
            ),
            const Text(
              StringUtils.poweredBy,
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
            SizedBox(
              height: 30.0,
              width: 100.0,
              child: Image.asset('assets/icons/plotsklappsLogoSmall.png'),
            ),
            const Text(
              StringUtils.and,
              style: TextStyle(
                fontSize: 8.0,
              ),
            ),
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