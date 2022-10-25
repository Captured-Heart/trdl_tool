import '/all_imports.dart';

enum WhereToGoFromWWBrand {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_brand,
  // ignore: constant_identifier_names
  ai_ruclu,
  // ignore: constant_identifier_names
  ai_schakelen_bovenleiding,
  // ignore: constant_identifier_names
  ai_overige_incidenten,
}

class WWBrand extends StatelessWidget {
  const WWBrand({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromWWBrand>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWBrand result) async {
              if (result == WhereToGoFromWWBrand.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWBrand.ai_brand) {
                await Navigator.pushNamed(context, 'ai_brand');
              } else if (result == WhereToGoFromWWBrand.ai_ruclu) {
                await Navigator.pushNamed(context, 'ai_ruclu');
              } else if (result ==
                  WhereToGoFromWWBrand.ai_schakelen_bovenleiding) {
                await Navigator.pushNamed(context, 'ai_schakelen_bovenleiding');
              } else if (result == WhereToGoFromWWBrand.ai_overige_incidenten) {
                await Navigator.pushNamed(context, 'ai_overige_incidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWBrand>>[
              const PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.ai_brand,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Brand',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.ai_ruclu,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Procedure RU/CLU',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.ai_schakelen_bovenleiding,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Schakelen Bovenleiding',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.ai_overige_incidenten,
                child: MenuItemContent(
                  icon: Icons.menu_book,
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
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Brand',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij de melding van brand in of nabij het spoor of brand in materieel vraag je het volgende uit:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Betrokken spoor/sporen;\n\n- Station, baanvak, trein(nummer) en kilometrering;\n\n- Aard van de brand: klein of uitslaand;\n\n- Eventuele gevolgen voor het treinverkeer.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Een brand in een biels meld je altijd bij de MKS/BO.',
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
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Een brand in materieel, in of nabij de infra kan door weersomstandigheden, rijwind en locatie zich snel ontwikkelen. Ook een brand in de nabijheid van het spoor kan gevolgen hebben voor het treinverkeer. Hulpdiensten kunnen besluiten dat het treinverkeer beperkt moet worden.',
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
