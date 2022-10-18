import '/all_imports.dart';

enum WhereToGoFromAIAanpassenPlanMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
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
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIAanpassenPlanMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIAanpassenPlanMain result) async {
              if (result == WhereToGoFromAIAanpassenPlanMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIAanpassenPlanMain.ww_aanpassen_plan_main) {
                await Navigator.pushNamed(context, 'ww_aanpassen_plan_main');
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
          children: <Card>[
            /*TITLE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <TitleText>[
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
                  children: <Widget>[
                    const TitleText(
                      title: 'Ga snel naar',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
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
                  children: const <Widget>[
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
