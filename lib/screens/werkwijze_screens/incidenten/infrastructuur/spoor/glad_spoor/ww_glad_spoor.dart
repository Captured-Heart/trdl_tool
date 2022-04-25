import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWGladSpoor {
  home_screen,
  ai_gladspoor,
}

class WWGladSpoor extends StatelessWidget {
  const WWGladSpoor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWGladSpoor>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWGladSpoor result) {
              if (result == WhereToGoFromWWGladSpoor.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromWWGladSpoor.ai_gladspoor) {
                Navigator.pushNamed(context, 'ai_gladspoor');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWGladSpoor>>[
              PopupMenuItem<WhereToGoFromWWGladSpoor>(
                value: WhereToGoFromWWGladSpoor.home_screen,
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
              PopupMenuItem<WhereToGoFromWWGladSpoor>(
                value: WhereToGoFromWWGladSpoor.ai_gladspoor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Glad Spoor'),
                  ],
                ),
              ),
            ],
          ),
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
                      title: 'Glad Spoor',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wanneer je een melding krijgt van een glad spoor licht je de DVL.\n\nBij haltes op de vrije baan verander je de \'Stops\' in \'Doors\'.\n\nBij een stop-/doorschakeling in bediend gebied (uitgezonderd kruisingsstations op enkelsporige baanvakken):',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Voeg je opgedeelde rijwegen met \'D\' of \'K\' activiteit samen;\n\n- Verander je het \'naar\'-spoor van de aankomstregel in het \'naar\'-spoor van de vertrekregel;\n\n- Hef je de vertrekregel op;\n\n- Voeg je doorbediening toe aan de aankomstregel.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Twee uur na de laatste melding vraag je de MCN van de twee eerstvolgende treinen naar de toestand van de baan. Wanneer het spoor niet meer glad is, staak je bovenstaande maatregelen. Wanneer het spoor nog wel glad is, handhaaf je de maatregelen voor de komende twee uur.',
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
                          'Door verminderd contact tussen wiel en spoorstaaf, kunnen treinen moeite hebben met optrekken en remmen. De MCN kan zijn rijgedrag aanpassen wanneer hij hiervan op de hoogte is.',
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
