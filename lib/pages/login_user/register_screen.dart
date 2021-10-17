import 'package:trdl_tool/all_imports.dart';

class Register extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  late final String email;
  late final String password;

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
                    Expanded(child: Image.asset('assets/images/trdlToolLogoSmallPNG.png')),
                  ],
                ),
              ),
              SizedBoxH(),
              Container(
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
                          children: [
                            Expanded(
                              child: TitleText(title: 'Registreer'),
                            ),
                          ],
                        ),
                        SizedBoxH(),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  email = value;
                                },
                                style: GoogleFonts.questrial(),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Emailadres',
                                  hintText: 'Vul een geldig emailadres in',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBoxH(),
                        Row(
                          children: [
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  password = value;
                                },
                                style: GoogleFonts.questrial(),
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Wachtwoord',
                                  hintText: 'Wachtwoord bevat minimaal 6 tekens',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBoxH(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                if (email.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Controleer het emailadres, is het correct ingevuld?',
                                        style: GoogleFonts.questrial(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      action: SnackBarAction(
                                        label: 'OK',
                                        onPressed: () {},
                                      ),
                                    ),
                                  );
                                } else if (password.isEmpty || password.length < 6) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Kies een wachtwoord van minimaal 6 tekens',
                                        style: GoogleFonts.questrial(
                                          textStyle: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      action: SnackBarAction(
                                        label: 'OK',
                                        onPressed: () {},
                                      ),
                                    ),
                                  );
                                } else {
                                  try {
                                    final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
                                    if (newUser != null) {
                                      Navigator.pushReplacementNamed(context, 'verifyscreen');
                                    }
                                  } catch (errorMessage) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          'Er is iets misgegaan: $errorMessage',
                                          style: GoogleFonts.questrial(
                                            textStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            ),
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
                              child: Text('REGISTREER'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBoxH(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: Text(
                      'Heb je al een account?',
                      style: GoogleFonts.questrial(
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
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
