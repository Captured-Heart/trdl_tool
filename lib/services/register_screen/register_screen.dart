import 'package:trdl_tool/core/all_imports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  late String password1;
  late String password2;

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
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  email = value;
                                },
                                decoration: const InputDecoration(
                                  labelText: Strings.registerEmail,
                                  hintText: Strings.registerEmailHint,
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
                                  password1 = value;
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: Strings.registerPassword,
                                  hintText: Strings.registerPasswordHint,
                                ),
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
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  password2 = value;
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: Strings.registerPasswordCheck,
                                  hintText: Strings.registerPasswordHintCheck,
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
                                /*SUPERUSER ACCOUNT*/
                                if (email.contains('plotsklapps@gmail.com')) {
                                  await _auth.createUserWithEmailAndPassword(
                                    email: email,
                                    password: password1,
                                  );
                                  Navigator.pushReplacementNamed(
                                    context,
                                    'verifyscreen',
                                  );
                                }
                                /*CHECK IF EMAIL IS EMPTY OR NOT PRORAIL*/
                                else if (email.isEmpty ||
                                    !email.contains('@prorail.nl')) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterEmailWrong,
                                  );
                                }
                                /*CHECK PASSWORD LENGTH > 6 FOR FIREBASE*/
                                else if (password1.length < 6) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterPasswordShort,
                                  );
                                }
                                /*CHECK PASSWORD ARE THE SAME*/
                                else if (password1 != password2) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterPasswordNotEqual,
                                  );
                                } else {
                                  try {
                                    /*CREATE USER AND GO TO VERIFY_SCREEN*/
                                    await _auth.createUserWithEmailAndPassword(
                                      email: email,
                                      password: password1,
                                    );
                                    Navigator.pushReplacementNamed(
                                      context,
                                      'verifyscreen',
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
                      Navigator.pushNamed(context, 'login');
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
