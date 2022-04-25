import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIIncidentenWisselsMain {
  home_screen,
  ai_overige_infra_elementen,
}

class AIIncidentenWisselsMain extends StatelessWidget {
  const AIIncidentenWisselsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIIncidentenWisselsMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIIncidentenWisselsMain result) {
              if (result == WhereToGoFromAIIncidentenWisselsMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIIncidentenWisselsMain
                      .ai_overige_infra_elementen) {
                Navigator.pushNamed(context, 'ai_uitvoeren_plan_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIIncidentenWisselsMain>>[
              PopupMenuItem<WhereToGoFromAIIncidentenWisselsMain>(
                value: WhereToGoFromAIIncidentenWisselsMain.home_screen,
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
              PopupMenuItem<WhereToGoFromAIIncidentenWisselsMain>(
                value: WhereToGoFromAIIncidentenWisselsMain
                    .ai_overige_infra_elementen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Overige infra-elementen'),
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
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const TitleText(
                      title: 'Ga snel naar',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        NavButton(
                          buttontext: 'Werkwijze - Wissels',
                          destination: 'ww_wissels_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Wissels - basisinformatie',
                          destination: 'ai_incidenten_wissels_basis',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Wissel niet in eindstand',
                          destination: 'ai_incidenten_wisselnietineindstand',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Gestoord wissel',
                          destination: 'ai_incidenten_gestoordwissel',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Opengereden wissel',
                          destination: 'ai_incidenten_opengeredenwissel',
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
