import 'package:trdl_tool/all_imports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              const Padding(
                padding: EdgeInsets.only(
                  top: 16.0,
                  left: 24.0,
                  right: 24.0,
                ),
                child: TRDLtoolLogo(),
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
                              /*Email Textfield*/
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  email = value;
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: Strings.loginEmail,
                                  hintText: Strings.loginEmailHint,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          children: [
                            Expanded(
                              /*Password Textfield*/
                              child: TextField(
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  password = value;
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: Strings.loginPassword,
                                  hintText: Strings.loginPasswordHint,
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
                                  /*Sign in*/
                                  await _auth.signInWithEmailAndPassword(
                                    email: email,
                                    password: password,
                                  );
                                  /*If user clicked verification mail*/
                                  if (_auth.currentUser!.emailVerified) {
                                    Logger().wtf(
                                      'Gebruiker heeft netjes zijn emailadres geverifieerd.',
                                    );
                                    Navigator.pushReplacementNamed(
                                      context,
                                      'homescreen',
                                    );
                                  }
                                  /*If user did NOT click verification mail*/
                                  else if (!_auth.currentUser!.emailVerified) {
                                    Logger().wtf(
                                      'Gebruiker heeft zijn emailadres nog niet geverifieerd.',
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      snackBarLoginEmailVerificatie,
                                    );
                                  }
                                  /*All other error situations*/
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
                      /*Go to register_screen*/
                      Navigator.pushNamed(
                        context,
                        'register',
                      );
                    },
                    child: const Text(
                      Strings.loginNogGeenAccount,
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
                      /*Go to wachtwoord_screen*/
                      Navigator.pushNamed(
                        context,
                        'wachtwoordscreen',
                      );
                    },
                    child: const Text(
                      Strings.loginWachtwoordVergeten,
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
