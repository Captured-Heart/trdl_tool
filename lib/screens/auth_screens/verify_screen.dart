import 'dart:async';

import '/all_imports.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  VerifyScreenState createState() => VerifyScreenState();
}

class VerifyScreenState extends State<VerifyScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;
  late Timer timer;

  @override
  void initState() {
    Future<void>.delayed(Duration.zero, () async {
      await _waitForEmailVerification();
    });
    super.initState();
  }

  Future<void> _waitForEmailVerification() async {
    if (currentUser != null && !currentUser!.emailVerified) {
      await currentUser!.sendEmailVerification();
    }

    timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      checkEmailVerified();
    });
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
              Strings.poweredBy,
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
              Strings.and,
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

  Future<void> checkEmailVerified() async {
    currentUser = _auth.currentUser;
    await currentUser!.reload();
    if (currentUser!.emailVerified) {
      timer.cancel();
      if (mounted) {
        await Navigator.pushReplacementNamed(
          context,
          'login_screen',
        );
      } else {
        return;
      }
    }
  }
}
