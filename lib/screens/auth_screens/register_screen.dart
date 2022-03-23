import 'package:trdl_tool/core/all_imports.dart';

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
                height: 350,
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
                              child: TitleText(title: 'Registreer'),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          children: [
                            Expanded(
                              /*EMAIL TEXTFIELD*/
                              child: TextField(
                                controller: _emailCtrl,
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                decoration: const InputDecoration(
                                  labelText: Strings.registerEmail,
                                  hintText: Strings.registerEmailHint,
                                ),
                                autocorrect: false,
                                enableSuggestions: false,
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
                                controller: _password1Ctrl,
                                textAlign: TextAlign.center,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: Strings.registerPassword,
                                  hintText: Strings.registerPasswordHint,
                                ),
                                autocorrect: false,
                                enableSuggestions: false,
                              ),
                            ),
                          ],
                        ),
                        const SizedBoxH(),
                        Row(
                          children: [
                            Expanded(
                              /*CHECK PASSWORD TEXTFIELD*/
                              child: TextField(
                                controller: _password2Ctrl,
                                textAlign: TextAlign.center,
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: Strings.registerPasswordCheck,
                                  hintText: Strings.registerPasswordHintCheck,
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
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                /*SUPERUSER ACCOUNT*/
                                if (_emailCtrl.text
                                    .contains('plotsklapps@gmail.com')) {
                                  await AuthService().signUp(
                                    email: _emailCtrl.text,
                                    password: _password1Ctrl.text,
                                  );
                                  Navigator.pushReplacementNamed(
                                    context,
                                    'verify_screen',
                                  );
                                }
                                /*CHECK IF EMAIL IS EMPTY OR NOT PRORAIL*/
                                else if (_emailCtrl.text.isEmpty ||
                                    !_emailCtrl.text.contains('@prorail.nl')) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterEmailWrong,
                                  );
                                }
                                /*CHECK PASSWORD LENGTH > 6 FOR FIREBASE*/
                                else if (_password1Ctrl.text.length < 6) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterPasswordShort,
                                  );
                                }
                                /*CHECK PASSWORD ARE THE SAME*/
                                else if (_password1Ctrl.text !=
                                    _password2Ctrl.text) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterPasswordNotEqual,
                                  );
                                } else {
                                  try {
                                    /*CREATE USER AND GO TO VERIFY_SCREEN*/
                                    await AuthService().signUp(
                                      email: _emailCtrl.text,
                                      password: _password1Ctrl.text,
                                    );
                                    Navigator.pushReplacementNamed(
                                      context,
                                      'verify_screen',
                                    );
                                  }
                                  /*CATCH ALL OTHER ERRORS*/
                                  catch (errorMessage) {
                                    Logger().wtf(
                                      'Er is iets misgegaan: $errorMessage',
                                    );
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
                children: [
                  TextButton(
                    onPressed: () {
                      /*BACK TO LOGIN_SCREEN*/
                      Navigator.pushNamed(context, 'login_screen');
                    },
                    child: const Text(
                      Strings.registerAlEenAccount,
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
