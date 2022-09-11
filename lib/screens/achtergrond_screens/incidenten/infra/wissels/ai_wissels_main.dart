import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIWisselsMain {
  home_screen,
  ww_wissels_main,
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
        actions: [
          PopupMenuButton<WhereToGoFromAIWisselsMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIWisselsMain result) {
              if (result == WhereToGoFromAIWisselsMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIWisselsMain
                      .ww_wissels_main) {
                Navigator.pushNamed(context, 'ww_wissels_main');
              } else if (result ==
                  WhereToGoFromAIWisselsMain
                      .ai_overige_infra_elementen) {
                Navigator.pushNamed(context, 'ai_overige_infra_elementen');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIWisselsMain>>[
              PopupMenuItem<WhereToGoFromAIWisselsMain>(
                value: WhereToGoFromAIWisselsMain.home_screen,
                child: MenuItemContent(icon: Icons.home, text: 'Home',),
              ),
              PopupMenuItem<WhereToGoFromAIWisselsMain>(
                value: WhereToGoFromAIWisselsMain
                    .ww_wissels_main,
                child: MenuItemContent(icon: Icons.train, text: 'WW Wissels',),
              ),
              PopupMenuItem<WhereToGoFromAIWisselsMain>(
                value: WhereToGoFromAIWisselsMain
                    .ai_overige_infra_elementen,
                child: MenuItemContent(icon: Icons.menu_book, text: 'AI Overige Infra',),
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
