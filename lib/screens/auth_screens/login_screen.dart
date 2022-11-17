import '/all_imports.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
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
                              //Email textfield
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
                              //Password textfield
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
                                  //Sign in method
                                  Logger().i(
                                    'Signing in... Checking for verification...',
                                  );
                                  await AuthService().signIn(
                                    email: _emailCtrl.text,
                                    password: _passwordCtrl.text,
                                  );
                                  //Check if user clicked on verification email, if so, continue to HomeScreen
                                  if (FirebaseAuth
                                      .instance.currentUser!.emailVerified) {
                                    if (mounted) {
                                      Logger().i(
                                        'User is verified... Going to HomeScreen',
                                      );
                                      await Navigator.pushReplacementNamed(
                                        context,
                                        'home_screen',
                                      );
                                    } else {
                                      return;
                                    }
                                  }
                                  //If user did NOT click on verification email return SnackBar notifying user
                                  else if (!FirebaseAuth
                                      .instance.currentUser!.emailVerified) {
                                    if (mounted) {
                                      Logger().i(
                                        'User is NOT verified... Returning SnackBar',
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        snackBarLoginEmailVerificatie,
                                      );
                                    } else {
                                      return;
                                    }
                                  }
                                  //All other error situations, show on console and return SnackBar notifying user
                                } catch (errorMessage) {
                                  Logger().w('Error: $errorMessage');
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
                      //Go to RegisterScreen
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
                      //Go to WachtwoordScreen
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
