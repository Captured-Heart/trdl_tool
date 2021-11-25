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
                              /*EMAIL TEXTFIELD*/
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  email = value;
                                },
                                decoration: const InputDecoration(
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
                              /*PASSWORD TEXTFIELD*/
                              child: TextField(
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  password = value;
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
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
                                  /*SING IN METHOD*/
                                  await _auth.signInWithEmailAndPassword(
                                    email: email,
                                    password: password,
                                  );
                                  /*IF USER CLICKED VERIFICATION EMAIL*/
                                  if (_auth.currentUser!.emailVerified) {
                                    Logger().wtf(
                                      'Gebruiker heeft netjes zijn emailadres geverifieerd.',
                                    );
                                    Navigator.pushReplacementNamed(
                                      context,
                                      'homescreen',
                                    );
                                  }
                                  /*IF USER DID NOT CLICK VERIFICATION EMAIL*/
                                  else if (!_auth.currentUser!.emailVerified) {
                                    Logger().wtf(
                                      'Gebruiker heeft zijn emailadres nog niet geverifieerd.',
                                    );
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      snackBarLoginEmailVerificatie,
                                    );
                                  }
                                  /*ALL OTHER ERROR SITUATIONS*/
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarLoginErIsIetsMis,
                                  );
                                }
                              },
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
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
                      /*GO TO REGISTER_SCREEN*/
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
                      /*GO TO WACHTWOORD_SCREEN*/
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
