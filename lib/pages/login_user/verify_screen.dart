import 'package:trdl_tool/all_imports.dart';

class VerifyScreen extends StatefulWidget {
  final String email;
  final String password;
  const VerifyScreen({Key? key, required this.email, required this.password}) : super(key: key);

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final _auth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;
  Timer? timer;

  @override
  void initState() {
    _asyncMethod();
    super.initState();
  }

  _asyncMethod() async {
    if (user != null && !user!.emailVerified) {
      await user!.sendEmailVerification();
    }

    timer = Timer.periodic(Duration(seconds: 5), (timer) {
      checkEmailVerified();
    });
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    child: Image.asset('assets/images/trdlToolLogoSmallPNG.png'),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
              ),
              child: TitleText(
                title: 'Een verificatie email is verstuurd naar ${user!.email}, je kunt inloggen nadat je bent geverifieerd',
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

  Future<void> checkEmailVerified() async {
    user = _auth.currentUser!;
    await user!.reload();
    if (user!.emailVerified) {
      timer!.cancel();
      await _auth.createUserWithEmailAndPassword(
        email: widget.email,
        password: widget.password,
      );
      Navigator.pushReplacementNamed(
        context,
        'login',
      );
    }
  }
}
