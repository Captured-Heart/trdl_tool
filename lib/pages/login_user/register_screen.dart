import 'package:trdl_tool/all_imports.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                              child: TitleText(title: 'Registreer'),
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
                              /*Password Textfield*/
                              child: TextField(
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  password = value;
                                },
                                obscureText: true,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: Strings.registerPassword,
                                  hintText: Strings.registerPasswordHint,
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
                                if (email.contains('plotsklapps@gmail.com')) {
                                  await _auth.createUserWithEmailAndPassword(
                                    email: email,
                                    password: password,
                                  );
                                  Navigator.pushReplacementNamed(
                                    context,
                                    'verifyscreen',
                                  );
                                }
                                /*Check if email is empty OR does NOT contain @prorail.nl*/
                                else if (email.isEmpty ||
                                    !email.contains('@prorail.nl')) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterEmailWrong,
                                  );
                                }
                                /*Check if password length is >= 6 for Firebase*/
                                else if (password.length < 6) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarRegisterPasswordShort,
                                  );
                                } else {
                                  try {
                                    /*Create user and go to verify_screen*/
                                    await _auth.createUserWithEmailAndPassword(
                                      email: email,
                                      password: password,
                                    );
                                    Navigator.pushReplacementNamed(
                                      context,
                                      'verifyscreen',
                                    );
                                  }
                                  /*Catch all errors and show snack with error*/
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
                              child: const Text('REGISTREER'),
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
                      /*Back to login*/
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
