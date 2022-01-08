import 'package:trdl_tool/core/all_imports.dart';

class OnregelmatighedenBaan extends StatelessWidget {
  const OnregelmatighedenBaan({Key? key}) : super(key: key);

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
                        title: 'Onregelmatigheden aan de baan',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Wanneer een onregelmatigheid aan de baan gemeld wordt, geef je een aanwijzing VR af. Dit doe je totdat de storingsdienst anders aangeeft, of wanneer deze snelheidsbeperking vermeld staat in de van kracht zijnde TSB-Dag- of Weekpublicatie.',
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
                            'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                            'Als treindienstleider heb je na een melding van een onregelmatigheid aan de baan geen zicht op de exacte toestand van het spoor. Daarom moet een machinist met aangepaste snelheid (maximaal 40 km/h) rijden tot de storingsdienst ter plaatse is. De machinist kan dan op tijd stoppen voor het gevaarpunt De storingsmonteur kan de exacte toestand van de baan bepalen en geeft aan of de railinfra veilig bereden kan worden en onder welke voorwaarden.',
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