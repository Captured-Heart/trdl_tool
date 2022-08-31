import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWOnjuisteDetectie {
  home_screen,
  ai_onjuiste_detectie,
}

class WWOnjuisteDetectie extends StatelessWidget {
  const WWOnjuisteDetectie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWOnjuisteDetectie>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWOnjuisteDetectie result) {
              if (result == WhereToGoFromWWOnjuisteDetectie.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWOnjuisteDetectie.ai_onjuiste_detectie) {
                Navigator.pushNamed(context, 'ai_onjuiste_detectie');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWOnjuisteDetectie>>[
              PopupMenuItem<WhereToGoFromWWOnjuisteDetectie>(
                value: WhereToGoFromWWOnjuisteDetectie.home_screen,
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
              PopupMenuItem<WhereToGoFromWWOnjuisteDetectie>(
                value: WhereToGoFromWWOnjuisteDetectie.ai_onjuiste_detectie,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const SizedBox(
                      width: 2.0,
                    ),
                    const Text('AI Onjuiste Detectie'),
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
                      title: 'Voertuigen zonder juiste detectie',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Als je een voertuig zonder juiste treindetectie laat staan op een gecontroleerd spoor, dan neem je veiligheidsmaatregelen om te voorkomen dat er een rijweg van of naar dit spoor kan worden ingesteld.\n\nAls je een rijweg wilt instellen voor een voertuig zonder juiste treindetectie dan:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Licht je de brugwachters in van de niet door jou beheerste bruggen;\n\n- Vraag je de MCN zich terug te melden zodra hij op de plaats van bestemming is of achter het tegensein staat;\n\n- Maak je gebruik van een NDM- of STS rijweg.',
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
                          'Treinen komen niet tijdig tot stilstand voor een gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                          'Bij een voertuig zonder juiste treindetectie ontbreekt de garantie op signalering. Hierdoor kan de beveiliging bij rijweginstelling niet of niet goed functioneren van of naar het betrokken spoor.',
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
