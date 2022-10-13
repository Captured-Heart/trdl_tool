import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWBeveiligingMain {
  home_screen,
  ai_infra_main,
  ai_beveiliging_main,
}

class WWBeveiligingMain extends StatelessWidget {
  const WWBeveiligingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWBeveiligingMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWBeveiligingMain result) {
              if (result == WhereToGoFromWWBeveiligingMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWBeveiligingMain.ai_infra_main) {
                Navigator.pushNamed(context, 'ai_infra_main');
              } else if (result ==
                  WhereToGoFromWWBeveiligingMain.ai_beveiliging_main) {
                Navigator.pushNamed(context, 'ai_beveiliging_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWBeveiligingMain>>[
              const PopupMenuItem<WhereToGoFromWWBeveiligingMain>(
                value: WhereToGoFromWWBeveiligingMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBeveiligingMain>(
                value: WhereToGoFromWWBeveiligingMain.ai_infra_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Infra',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWBeveiligingMain>(
                value: WhereToGoFromWWBeveiligingMain.ai_beveiliging_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Beveiliging',
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
                      title: 'Beveiliging',
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
                          buttontext: 'Tegen de rijrichting',
                          destination: 'ww_tegen_rijrichting',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Veiligheidsstoring sein',
                          destination: 'ww_veiligheidsstoring_sein',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Reset assenteller AzLM',
                          destination: 'ww_reset_assenteller',
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
