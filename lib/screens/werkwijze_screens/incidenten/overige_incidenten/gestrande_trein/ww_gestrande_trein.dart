import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWGestrandeTrein {
  home_screen,
  ai_gestrande_trein,
  ai_overige_incidenten,
}

class WWGestrandeTrein extends StatelessWidget {
  const WWGestrandeTrein({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWGestrandeTrein>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWGestrandeTrein result) {
              if (result == WhereToGoFromWWGestrandeTrein.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWGestrandeTrein.ai_gestrande_trein) {
                Navigator.pushNamed(context, 'ai_gestrande_trein');
              } else if (result ==
                  WhereToGoFromWWGestrandeTrein.ai_overige_incidenten) {
                Navigator.pushNamed(context, 'ai_overige_incidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWGestrandeTrein>>[
              PopupMenuItem<WhereToGoFromWWGestrandeTrein>(
                value: WhereToGoFromWWGestrandeTrein.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWGestrandeTrein>(
                value: WhereToGoFromWWGestrandeTrein.ai_gestrande_trein,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Gestrande Trein'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWGestrandeTrein>(
                value: WhereToGoFromWWGestrandeTrein.ai_overige_incidenten,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Overige Incidenten'),
                  ],
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
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
                      title: 'Gestrande trein',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Als je te maken krijgt met een hulp- of evacuatietrein, bespreek je met de MCN:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De locatie van de gestrande trein;\n\n- De kant waar de hulptrein vandaan komt.',
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
                          'Conflicterend spoorgebruik en/of treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                          'Een trein is gestrand wanneer deze niet verder vervoerd kan of mag worden. Het doel is om de reizigers zo snel mogelijk handelingsvrij te maken en/of de gestrande trein zo snel mogelijk weg te krijgen.\n\nAls de gestrande trein verplaatst moet worden, of als de hulp- of evacuatietrein toegelaten moet worden, gaat dit altijd na toestemming van de Algemeen Leider. De Algemeen Leider kan eventuele beperkingen opgeven.',
                    ),
                    SizedBoxH(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
