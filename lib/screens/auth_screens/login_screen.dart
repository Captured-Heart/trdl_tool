import '/all_imports.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  late final TextEditingController _emailCtrl;
  late final TextEditingController _passwordCtrl;

  @override
  void initState() {
    _emailCtrl = TextEditingController();
    _passwordCtrl = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailCtrl.dispose();
    _passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                      children: <Widget>[
                        Row(
                          children: const <Expanded>[
                            Expanded(
                              child: TitleText(title: 'Login'),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          children: <Expanded>[
                            Expanded(
                              /*EMAIL TEXTFIELD*/
                              child: TextField(
                                controller: _emailCtrl,
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  labelText: StringUtils.loginEmail,
                                  hintText: StringUtils.loginEmailHint,
                                ),
                                autocorrect: false,
                                enableSuggestions: false,
                              ),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          children: <Expanded>[
                            Expanded(
                              /*PASSWORD TEXTFIELD*/
                              child: TextField(
                                controller: _passwordCtrl,
                                textAlign: TextAlign.center,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: StringUtils.loginPassword,
                                  hintText: StringUtils.loginPasswordHint,
                                ),
                                autocorrect: false,
                                enableSuggestions: false,
                              ),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <ElevatedButton>[
                            ElevatedButton(
                              onPressed: () async {
                                try {
                                  /*SIGN IN METHOD*/
                                  await AuthService().signIn(
                                    email: _emailCtrl.text,
                                    password: _passwordCtrl.text,
                                  );
                                  /*IF USER CLICKED VERIFICATION EMAIL*/
                                  if (_auth.currentUser!.emailVerified) {
                                    if (mounted) {
                                      await Navigator.pushReplacementNamed(
                                        context,
                                        'home_screen',
                                      );
                                    } else {
                                      return;
                                    }
                                  }
                                  /*IF USER DID NOT CLICK VERIFICATION EMAIL*/
                                  else if (!_auth.currentUser!.emailVerified) {
                                    if (mounted) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        snackBarLoginEmailVerificatie,
                                      );
                                    } else {
                                      return;
                                    }
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
                children: <TextButton>[
                  TextButton(
                    onPressed: () async {
                      /*GO TO REGISTER_SCREEN*/
                      await Navigator.pushNamed(
                        context,
                        'register_screen',
                      );
                    },
                    child: const Text(
                      StringUtils.loginNogGeenAccount,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <TextButton>[
                  TextButton(
                    onPressed: () async {
                      /*GO TO WACHTWOORD_SCREEN*/
                      await Navigator.pushNamed(
                        context,
                        'wachtwoord_screen',
                      );
                    },
                    child: const Text(
                      StringUtils.loginWachtwoordVergeten,
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