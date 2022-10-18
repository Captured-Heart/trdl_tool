import '/all_imports.dart';

Future<bool> showExitPopup(BuildContext context) async {
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
                'Wil je de app verlaten?',
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
                      onPressed: () {
                        /*USER SELECTED YES. OFFICAL ANDROID CLOSEDOWN*/
                        SystemNavigator.pop(
                          animated: true,
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
                        /*USER SELECTED NO. STAY IN APP.*/
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
  ) as bool;
}
