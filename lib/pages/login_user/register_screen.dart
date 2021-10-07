import 'package:trdl_tool/all_imports.dart';

class Register extends StatelessWidget {
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
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 24.0,
                  right: 24.0,
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: Image.asset(
                            'assets/images/trdlToolLogoSmallPNG.png')),
                  ],
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
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
                              child: Text(
                                'Registreer',
                                style: GoogleFonts.questrial(
                                  textStyle: TextStyle(
                                    fontSize: 24.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
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
                                  hintText:
                                      'Email moet eindigen op @prorail.nl',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
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
                                  hintText:
                                      'Wachtwoord bevat minimaal 6 tekens',
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              onPressed: () async {
                                if (!email.endsWith('@prorail.nl')) {
                                  final wrongEmail = SnackBar(
                                    content: Text(
                                      'Email moet eindigen op @prorail.nl',
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
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(wrongEmail);
                                } else if (password.length < 6) {
                                  final shortPassword = SnackBar(
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
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(shortPassword);
                                } else if (email.endsWith('@prorail.nl')) {
                                  try {
                                    final newUser = await _auth
                                        .createUserWithEmailAndPassword(
                                            email: email, password: password);
                                    if (newUser != null) {
                                      Navigator.pushNamed(context, 'login');
                                    }
                                  } catch (errorMessage) {
                                    final errorRegister = SnackBar(
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
                                    );
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(errorRegister);
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
              SizedBox(
                height: 8.0,
              ),
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
