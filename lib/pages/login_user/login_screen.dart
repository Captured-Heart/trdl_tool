import 'package:trdl_tool/all_imports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  late User user;
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
                        'assets/images/trdlToolLogoSmallPNG.png',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBoxH(),
              SizedBox(
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
                          children: const [
                            Expanded(
                              child: TitleText(title: 'Login'),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  email = value;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Emailadres',
                                  hintText: 'Vul een @prorail.nl emailadres in',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  password = value;
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Wachtwoord',
                                  hintText:
                                      'Wachtwoord bevat minimaal 6 tekens',
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                try {
                                  await _auth.signInWithEmailAndPassword(
                                    email: email,
                                    password: password,
                                  );
                                  if (_auth.currentUser!.emailVerified) {
                                    Navigator.pushReplacementNamed(
                                      context,
                                      'homescreen',
                                    );
                                  } else if (!_auth
                                      .currentUser!.emailVerified) {
                                    Logger().wtf(
                                      'Gebruiker heeft zijn emailadres nog niet geverifieerd.',
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      snackBarLoginEmailVerificatie,
                                    );
                                  }
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarLoginErIsIetsMis,
                                  );
                                }
                              },
                              child: const Text('LOGIN'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBoxH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        'register',
                      );
                    },
                    child: const Text(
                      'Nog geen account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        'wachtwoordscreen',
                      );
                    },
                    child: const Text(
                      'Wachtwoord vergeten?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
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
