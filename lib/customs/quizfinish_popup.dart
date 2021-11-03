import 'package:trdl_tool/all_imports.dart';

Future<bool> finishQuizPopup(context) async {
  return await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          height: 200.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Einde van de Quiz',
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                'Je had $correctAmount antwoorden goed en $wrongAmount antwoorden fout.',
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        /*User selected YES*/
                        Navigator.of(context).pop();
                      },
                      child: const Text('Speel nog een keer'),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        /*User selected NO*/
                        Navigator.pushReplacementNamed(
                          context,
                          'homescreen',
                        );
                      },
                      child: const Text(
                        'Stop en ga terug',
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
