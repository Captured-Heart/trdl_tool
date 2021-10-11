import 'package:trdl_tool/all_imports.dart';

class Login extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
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
                        child: Image.asset(
                            'assets/images/trdlToolLogoSmallPNG.png')),
                  ],
                ),
              ),
              SizedBoxH(),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Card(
                  elevation: 6.0,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: TitleText(title: 'Login'),
                            ),
                          ],
                        ),
                        SizedBoxH(),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  email = value;
                                },
                                style: GoogleFonts.questrial(),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Emailadres',
                                  hintText: 'Vul een geldig emailadres in',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBoxH(),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  password = value;
                                },
                                obscureText: true,
                                style: GoogleFonts.questrial(),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Wachtwoord',
                                  hintText:
                                      'Wachtwoord bevat minimaal 6 tekens',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBoxH(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                try {
                                  final user =
                                      await _auth.signInWithEmailAndPassword(
                                          email: email, password: password);
                                  if (user != null &&
                                      _auth.currentUser!.emailVerified) {
                                    Navigator.pushReplacementNamed(
                                        context, 'homescreen');
                                  }
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                          'Er is iets mis!\nBen je al geregistreerd of is je wachtwoord misschien onjuist?'),
                                      action: SnackBarAction(
                                        label: 'OK',
                                        onPressed: () {},
                                      ),
                                    ),
                                  );
                                }
                              },
                              child: Text('LOGIN'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBoxH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    child: Text(
                      'Nog geen account?',
                      style: GoogleFonts.questrial(
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Wachtwoord vergeten?',
                      style: GoogleFonts.questrial(
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
