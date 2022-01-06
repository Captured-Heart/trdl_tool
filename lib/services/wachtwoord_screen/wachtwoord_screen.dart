import 'package:trdl_tool/core/all_imports.dart';

class Wachtwoord extends StatefulWidget {
  const Wachtwoord({Key? key}) : super(key: key);

  @override
  State<Wachtwoord> createState() => _WachtwoordState();
}

class _WachtwoordState extends State<Wachtwoord> {
  final _auth = FirebaseAuth.instance;
  late String email;

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
                              child: TitleText(
                                title: 'Reset Wachtwoord',
                              ),
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
                                  labelText: 'Emailadres',
                                  hintText:
                                      'Vul een geldig @prorail.nl emailadres in',
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
                              onPressed: () {
                                try {
                                  /*SEND PASSWORD RESETLINK*/
                                  Logger().wtf(
                                    'Password reset mail sent to $email',
                                  );
                                  _auth.sendPasswordResetEmail(email: email);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarWachtwoordEmailVerzonden,
                                  );
                                  Navigator.pushNamed(
                                    context,
                                    'login',
                                  );
                                }
                                /*CATCH ALL OTHER ERRORS*/
                                catch (errorMessage) {
                                  Logger().wtf('Er is iets mis: $errorMessage');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    snackBarWachtwoordErIsIetsMis,
                                  );
                                }
                              },
                              child: const Text(
                                'RESET',
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
                      Navigator.pushReplacementNamed(context, 'login');
                    },
                    child: const Text(
                      'Terug naar login',
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
