import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIAanpassenPlanMain {
  home_screen,
  ww_aanpassen_plan_main,
}

class AIAanpassenPlanMain extends StatelessWidget {
  const AIAanpassenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinfo',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIAanpassenPlanMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIAanpassenPlanMain result) {
              if (result == WhereToGoFromAIAanpassenPlanMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIAanpassenPlanMain.ww_aanpassen_plan_main) {
                Navigator.pushNamed(context, 'ww_aanpassen_plan_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIAanpassenPlanMain>>[
              const PopupMenuItem<WhereToGoFromAIAanpassenPlanMain>(
                value: WhereToGoFromAIAanpassenPlanMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIAanpassenPlanMain>(
                value: WhereToGoFromAIAanpassenPlanMain.ww_aanpassen_plan_main,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'WW Aanpassen Plan',
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
            /*TITLE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    TitleText(
                      title: 'Aanpassen Plan',
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
                          buttontext: 'Aanpassen plan - basis',
                          destination: 'ai_aanpassen_plan',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Stappenplan versperringen',
                          destination: 'ai_stappenplan_versperringen',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Orderacceptatie',
                          destination: 'ai_orderacceptatie',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Ongepland werk',
                          destination: 'ai_ongepland_werk_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Vertragingen',
                          destination: 'ai_vertragingen',
                        ),
                      ],
                    ),
                    const SizedBoxH(),
                  ],
                ),
              ),
            ),
            /*IMAGE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/aanpassen_plan/info_bord.png',
                    ),
                    SizedBoxH(),
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
