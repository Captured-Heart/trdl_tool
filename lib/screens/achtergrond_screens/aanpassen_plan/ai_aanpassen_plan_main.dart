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
          title: Utils.titleAI,
        ),
        actions: const<Widget>[
          AIAanpassenPlanMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: <TextCard>[
            TextCard(
                  children: const <TitleText>[
                    TitleText(
                      title: 'Aanpassen Plan',
                    ),
                  ],
                ),
              ),
            ),
            TextCard(
                  widgetList: <Widget>[
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
            TextCard(
                  widgetList: const <Widget>[
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/aanpassen_plan/info_bord.png',
                    ),
                    SizedBoxH(),
                  ],
                ),),
          ],
    ),);
  }
}

class AIAanpassenPlanMainNavigation extends StatelessWidget {
  const AIAanpassenPlanMainNavigation({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIAanpassenPlanMain>(
            icon: const Icon(Utils.iconInfo),
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
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIAanpassenPlanMain>(
                value: WhereToGoFromAIAanpassenPlanMain.ww_aanpassen_plan_main,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'WW Aanpassen Plan',
                ),
              ),
            ],
          );
  }
}