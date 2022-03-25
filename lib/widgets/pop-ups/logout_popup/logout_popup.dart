import 'package:trdl_tool/core/all_imports.dart';

final _auth = FirebaseAuth.instance;

showLogOutPopup(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.width * 0.50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        /*USER SELECTED YES. GO TO LOGINSCREEN*/
                        _auth.signOut();
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
