import '/all_imports.dart';

enum WhereToGoFromWWAanrijdingViaduct {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_aanrijding_viaduct,
}

class WWAanrijdingViaduct extends StatelessWidget {
  const WWAanrijdingViaduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWAanrijdingViaduct>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWAanrijdingViaduct result) async {
              if (result == WhereToGoFromWWAanrijdingViaduct.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWAanrijdingViaduct.ai_aanrijding_viaduct) {
                await Navigator.pushNamed(context, 'ai_aanrijding_viaduct');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWAanrijdingViaduct>>[
              const PopupMenuItem<WhereToGoFromWWAanrijdingViaduct>(
                value: WhereToGoFromWWAanrijdingViaduct.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWAanrijdingViaduct>(
                value: WhereToGoFromWWAanrijdingViaduct.ai_aanrijding_viaduct,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Aanrijding Viaduct',
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
                      title: 'Aanrijding/aanvaring brug/viaduct',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Na een melding van een aanrijding viaduct of aanvaring brug:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Staak je het verkeer over de betrokken railinfra;\n\n- De MKS/BO geeft aan of de betrokken railinfra bereden mag worden, inclusief de eventuele beperkingen.',
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
                          'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                          'Na een aanvaring of aanrijding van een brug of viaduct kan de TRDL er niet meer vanuit gaan dat deze infra nog veilig bereden kan worden.\n\nDe MKS/BO beschikt over informatie van iedere brug of viaduct en kan aangeven onder welke voorwaarden de infra wel of niet bereden mag worden. Een storingsmonteur kan de situatie ter plaatse beoordelen.',
                    ),
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