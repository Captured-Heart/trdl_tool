import 'package:trdl_tool/core/all_imports.dart';

class WisselsVrijmaken extends StatelessWidget {
  const WisselsVrijmaken({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'TRDLtool',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Wissels vrijmaken',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wissels vrijmaken mag pas als:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- ARI uitstaat;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Alle bijzonderheden_trein stilstaan;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Seinen niet meer in de automaat staan;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Wissels niet worden gekrukt.',
                      ),
                    ],
                  ),
                ),
              ),
              /*RISICO CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.risico,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van bijzonderheden_trein wordt niet tijdig teruggebracht voor het gevaarpunt.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CONTEXT CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.context,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De communicatie tussen de beveiliging en de bediening is als gevolg van een stroomonderbreking niet meer betrouwbaar. Met de opdracht \'wissels vrijmaken\' breng je de beveiligingsapparatuur na deze stroomonderbreking in de ruststand van de bediening terug.',
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
