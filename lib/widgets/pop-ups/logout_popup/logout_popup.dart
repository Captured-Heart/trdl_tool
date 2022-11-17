import '/all_imports.dart';

Future<dynamic> showLogOutPopup(BuildContext context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.width * 0.50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const Text(
                'Wil je uitloggen?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        /*USER SELECTED YES. GO TO LOGINSCREEN*/
                        await AuthService().signOut();
                        Navigator.pushReplacementNamed(
                          context,
                          'login_screen',
                        );
                      },
                      child: const Text(
                        'Ja',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBoxW(),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        /*USER SELECTED NO. CLOSE ALERTDIALOG.*/
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Nee',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    },
  );
}
