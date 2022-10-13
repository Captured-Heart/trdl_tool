import 'dart:async';

import 'package:trdl_tool/all_imports.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final _auth = FirebaseAuth.instance;
  User? currentUser = FirebaseAuth.instance.currentUser;
  late Timer timer;

  @override
  void initState() {
    _waitForEmailVerification();
    super.initState();
  }

  _waitForEmailVerification() async {
    if (currentUser != null && !currentUser!.emailVerified) {
      await currentUser!.sendEmailVerification();
    }

    timer = Timer.periodic(const Duration(seconds: 5), (timer) {
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
    currentUser = _auth.currentUser!;
    await currentUser!.reload();
    if (currentUser!.emailVerified) {
      timer.cancel();
      Navigator.pushReplacementNamed(
        context,
        'login_screen',
      );
    }
  }
}