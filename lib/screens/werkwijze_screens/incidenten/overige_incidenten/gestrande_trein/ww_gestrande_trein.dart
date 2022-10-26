import '/all_imports.dart';

enum WhereToGoFromWWGestrandeTrein {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_gestrande_trein,
  // ignore: constant_identifier_names
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
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWGestrandeTrein>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWGestrandeTrein result) async {
              if (result == WhereToGoFromWWGestrandeTrein.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWGestrandeTrein.ai_gestrande_trein) {
                await Navigator.pushNamed(context, 'ai_gestrande_trein');
              } else if (result ==
                  WhereToGoFromWWGestrandeTrein.ai_overige_incidenten) {
                await Navigator.pushNamed(context, 'ai_overige_incidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWGestrandeTrein>>[
              const PopupMenuItem<WhereToGoFromWWGestrandeTrein>(
                value: WhereToGoFromWWGestrandeTrein.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWGestrandeTrein>(
                value: WhereToGoFromWWGestrandeTrein.ai_gestrande_trein,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Gestrande Trein',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWGestrandeTrein>(
                value: WhereToGoFromWWGestrandeTrein.ai_overige_incidenten,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Overige Incidenten',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
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
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
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
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
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