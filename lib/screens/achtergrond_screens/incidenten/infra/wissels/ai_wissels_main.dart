import '/all_imports.dart';

enum WhereToGoFromAIWisselsMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_wissels_main,
  // ignore: constant_identifier_names
  ai_overige_infra_elementen,
}

class AIWisselsMain extends StatelessWidget {
  const AIWisselsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIWisselsMain>(
            icon: const Icon(IconUtils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIWisselsMain result) async {
              if (result == WhereToGoFromAIWisselsMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromAIWisselsMain.ww_wissels_main) {
                await Navigator.pushNamed(context, 'ww_wissels_main');
              } else if (result ==
                  WhereToGoFromAIWisselsMain.ai_overige_infra_elementen) {
                await Navigator.pushNamed(
                  context,
                  'ai_overige_infra_elementen',
                );
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIWisselsMain>>[
              const PopupMenuItem<WhereToGoFromAIWisselsMain>(
                value: WhereToGoFromAIWisselsMain.home_screen,
                child: MenuItemContent(
                  icon: IconUtils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIWisselsMain>(
                value: WhereToGoFromAIWisselsMain.ww_wissels_main,
                child: MenuItemContent(
                  icon: IconUtils.iconWW,
                  text: 'WW Wissels',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIWisselsMain>(
                value: WhereToGoFromAIWisselsMain.ai_overige_infra_elementen,
                child: MenuItemContent(
                  icon: IconUtils.iconAI,
                  text: 'AI Overige Infra',
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            /*PROCEDURE CARD*/
            Card(
              elevation: CardUtils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    TitleText(
                      title: 'Wissels',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/incidenten/wissels_achtergrond_main.jpg',
                    ),
                    SizedBoxH(),
                  ],
                ),
              ),
            ),
            /*NAVIGATION CARD*/
            Card(
              elevation: CardUtils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: <Widget>[
                    const TitleText(
                      title: 'Ga snel naar',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        NavButton(
                          buttontext: 'Wissels - basisinformatie',
                          destination: 'ai_wissels_basis',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Wissel niet in eindstand',
                          destination: 'ai_wissel_eindstand',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Gestoord wissel',
                          destination: 'ai_gestoord_wissel',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Opengereden wissel',
                          destination: 'ai_opengereden_wissel',
                        ),
                      ],
                    ),
                    const SizedBoxH(),
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