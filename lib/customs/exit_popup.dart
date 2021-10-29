import 'package:trdl_tool/all_imports.dart';

Future<bool> showExitPopup(context) async {
  return await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            height: 90,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Wil je de app verlaten?',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          /*User selected YES*/
                          SystemNavigator.pop();
                        },
                        child: const Text('Ja'),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: ElevatedButton(
                      onPressed: () {
                        /*User selected NO*/
                        Navigator.of(context).pop();
                      },
                      child: const Text(
                        'Nee',
                      ),
                    ))
                  ],
                )
              ],
            ),
          ),
        );
      });
}
