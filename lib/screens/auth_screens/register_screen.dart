import '/all_imports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late final TextEditingController _emailCtrl;
  late final TextEditingController _password1Ctrl;
  late final TextEditingController _password2Ctrl;

  @override
  void initState() {
    _emailCtrl = TextEditingController();
    _password1Ctrl = TextEditingController();
    _password2Ctrl = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailCtrl.dispose();
    _password1Ctrl.dispose();
    _password2Ctrl.dispose();
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
                height: 400,
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
                              child: TitleText(title: 'Registreer'),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          children: <Widget>[
                            Expanded(
                              /*EMAIL TEXTFIELD*/
                              child: TextField(
                                controller: _emailCtrl,
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  labelText: StringUtils.registerEmail,
                                  hintText: StringUtils.registerEmailHint,
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
                                controller: _password1Ctrl,
                                textAlign: TextAlign.center,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: StringUtils.registerPassword,
                                  hintText: StringUtils.registerPasswordHint,
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
                              /*CHECK PASSWORD TEXTFIELD*/
                              child: TextField(
                                controller: _password2Ctrl,
                                textAlign: TextAlign.center,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: StringUtils.registerPasswordCheck,
                                  hintText:
                                      StringUtils.registerPasswordHintCheck,
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
                                /*SUPERUSER ACCOUNT*/
                                Logger().i(
                                  'Creating SUPERUSER plotsklapps... Going to VerifyScreen',
                                );
                                if (_emailCtrl.text
                                    .contains('plotsklapps@gmail.com')) {
                                  await FirebaseAuth.instance
                                      .createUserWithEmailAndPassword(
                                    email: _emailCtrl.text,
                                    password: _password1Ctrl.text,
                                  );
                                  if (mounted) {
                                    await Navigator.pushReplacementNamed(
                                      context,
                                      'verify_screen',
                                    );
                                  } else {
                                    return;
                                  }
                                }
                                /*CHECK IF EMAIL IS EMPTY OR NOT PRORAIL*/
                                else if (_emailCtrl.text.isEmpty ||
                                    !_emailCtrl.text.contains('@prorail.nl')) {
                                  Logger()
                                      .i('Email eindigt NIET op @prorail.nl');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterEmailWrong,
                                  );
                                }
                                /*CHECK PASSWORD LENGTH > 6 FOR FIREBASE*/
                                else if (_password1Ctrl.text.length < 6) {
                                  Logger().i('Wachtwoord is te kort');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterPasswordShort,
                                  );
                                }
                                /*CHECK PASSWORD ARE THE SAME*/
                                else if (_password1Ctrl.text !=
                                    _password2Ctrl.text) {
                                  Logger().i('Wachtwoorden zijn niet gelijk');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterPasswordNotEqual,
                                  );
                                } else {
                                  try {
                                    /*CREATE USER AND GO TO VERIFY_SCREEN*/
                                    Logger().i(
                                      'Creating user... Going to VerifyScreen',
                                    );
                                    await AuthService().signUp(
                                      email: _emailCtrl.text,
                                      password: _password1Ctrl.text,
                                    );
                                    if (mounted) {
                                      await Navigator.pushReplacementNamed(
                                        context,
                                        'verify_screen',
                                      );
                                    } else {
                                      return;
                                    }
                                  }
                                  /*CATCH ALL OTHER ERRORS*/
                                  catch (errorMessage) {
                                    Logger().i('Error: $errorMessage');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Er is iets misgegaan: $errorMessage',
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        action: SnackBarAction(
                                          label: 'OK',
                                          onPressed: () {},
                                        ),
                                      ),
                                    );
                                  }
                                }
                              },
                              child: const Text(
                                'REGISTREER',
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
                      /// Back to loginscreen
                      await Navigator.pushNamed(context, 'login_screen');
                    },
                    child: const Text(
                      StringUtils.registerAlEenAccount,
                      style: TextStyle(fontWeight: FontWeight.bold),
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