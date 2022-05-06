import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWBrand {
  home_screen,
  ai_brand,
  ai_ruclu,
  ai_schakelen_bovenleiding,
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
        actions: [
          PopupMenuButton<WhereToGoFromWWBrand>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWBrand result) {
              if (result == WhereToGoFromWWBrand.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWBrand.ai_brand) {
                Navigator.pushNamed(context, 'ai_brand');
              } else if (result == WhereToGoFromWWBrand.ai_ruclu) {
                Navigator.pushNamed(context, 'ai_ruclu');
              } else if (result ==
                  WhereToGoFromWWBrand.ai_schakelen_bovenleiding) {
                Navigator.pushNamed(context, 'ai_schakelen_bovenleiding');
              } else if (result == WhereToGoFromWWBrand.ai_overige_incidenten) {
                Navigator.pushNamed(context, 'ai_overige_incidenten');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWBrand>>[
              PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.home_screen,
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
              PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.ai_brand,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Brand'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.ai_ruclu,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI RU/CLU'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.ai_schakelen_bovenleiding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Schakelen Bovenleiding'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromWWBrand>(
                value: WhereToGoFromWWBrand.ai_overige_incidenten,
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
