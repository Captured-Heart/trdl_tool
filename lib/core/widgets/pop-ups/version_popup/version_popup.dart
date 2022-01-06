import 'package:trdl_tool/core/all_imports.dart';

showVersionUpdatePopup(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
          width: MediaQuery.of(context).size.width * 0.75,
          height: MediaQuery.of(context).size.width * 0.50,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        'De huidige versie is 0.1.2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-12-11: 0.1.2\n - Logo\'s en iconen aangepast\n - Achtergrondinformatie verder uitgebreid (5)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-12-11: 0.1.1\n - Grote refactor, 13.000 regels code verwijderd\n - Achtergrondinformatie verder uitgebreid (4)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-11-25: 0.0.9\n - Material You design toegepast\n - Navigatie beginscherm aangepast naar swipe\n - UX/UI tweaks',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-11-19: 0.0.8\n - Werkwijze nu compleet\n - Achtergrondinformatie verder uitgebreid (3)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-11-12: 0.0.7\n - Achtergrondinformatie verder uitgebreid (2)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-11-10: 0.0.6\n - Achtergrondinformatie verder uitgebreid (1)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-11-07: 0.0.5\n - Logout geeft nu ook een popup\n - Carousel_slider toegevoegd',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-11-05: 0.0.4\n - Terugknop geeft nu een popup\n - Begin gemaakt met achtergrondinformatie',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-11-04: 0.0.3\n - Terugknop verlaat app niet meer\n - Grote aanpassing UI/UX ProQuiz',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-10-30: 0.0.2\n - Navigatieknoppen consistentie aangepakt',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBoxH(),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        '2021-10-27: 0.0.1\n - Cherry popped',
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
    },
  );
}
