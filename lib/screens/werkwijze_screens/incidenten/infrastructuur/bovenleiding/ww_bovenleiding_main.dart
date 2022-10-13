import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWBovenleidingMain {
  home_screen,
  ai_incidenten_main,
  ai_infra_main,
  ai_bovenleiding_main,
}

class WWBovenleidingMain extends StatelessWidget {
  const WWBovenleidingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWBovenleidingMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWBovenleidingMain result) {
              if (result == WhereToGoFromWWBovenleidingMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWBovenleidingMain.ai_incidenten_main) {
                Navigator.pushNamed(context, 'ai_incidenten_main');
              } else if (result ==
                  WhereToGoFromWWBovenleidingMain.ai_infra_main) {
                Navigator.pushNamed(context, 'ai_infra_main');
              } else if (result ==
                  WhereToGoFromWWBovenleidingMain.ai_bovenleiding_main) {
                Navigator.pushNamed(context, 'ai_bovenleiding_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWBovenleidingMain>>[
              const PopupMenuItem<WhereToGoFromWWBovenleidingMain>(
                value: WhereToGoFromWWBovenleidingMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBovenleidingMain>(
                value: WhereToGoFromWWBovenleidingMain.ai_incidenten_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Incidenten',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBovenleidingMain>(
                value: WhereToGoFromWWBovenleidingMain.ai_infra_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Infra',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBovenleidingMain>(
                value: WhereToGoFromWWBovenleidingMain.ai_bovenleiding_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Bovenleiding',
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
                      title: 'Bovenleiding',
                    ),
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
                          buttontext: 'Schouwen bovenleiding',
                          destination: 'ww_schouwen_bovenleiding',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Schakelen bovenleiding',
                          destination: 'ww_schakelen_bovenleiding',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Procedure RU/CLU',
                          destination: 'ww_procedure_ruclu',
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
