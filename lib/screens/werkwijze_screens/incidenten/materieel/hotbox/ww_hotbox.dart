import 'package:trdl_tool/core/all_imports.dart';

class WWHotBox extends StatelessWidget {
  const WWHotBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Hotbox',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*PROCEDURE CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Hotbox & Quo Vadis',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Geef de gegevens van de melding (type alarm, asnummer, zijde van de trein) door aan de MCN;\n\n- Laat de trein bij een Hotbox melding beheerst tot stilstand brengen;\n\n- Neem de trein bij een Quo Vadis melding bij de eerstvolgende mogelijkheid aan de kant voor onderzoek;\n\n- Alarmeer als gestrande trein.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je hoort van de MCN wanneer en onder welke voorwaarden de trein weer kan rijden.',
                      ),
                    ],
                  ),
                ),
              ),
              /*RISICO CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: Strings.risico,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CONTEXT CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: Strings.context,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Hotbox meet de temperatuur van de aslagers en de wielen.\n\nQuo Vadis meet de wielrondheid van de trein, de asbelasting en de correcte belading van de trein.\n\nBij een overschrijding van de ingestelde grenswaarden genereert het systeem een automatische melding omdat er verhoogd risico is op ontsporing.',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}