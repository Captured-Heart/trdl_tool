import '/all_imports.dart';

class WWAanpassenPlanMain extends StatelessWidget {
  const WWAanpassenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWAanpassenPlanMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Aanpassen Plan',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het actuele plan aanpassen als gevolg van een incident of extra capaciteitsaanvraag.',
                  ),
                ],
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
                        buttontext: 'Stappenplan Versperringen',
                        destination: 'ww_stappenplan_versperringen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Incidenten',
                        destination: 'ww_incidenten_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Ongepland Werk',
                        destination: 'ww_ongepland_werk_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Vertragingen',
                        destination: 'ww_vertragingen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Orderacceptatie',
                        destination: 'ww_orderacceptatie',
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WWAanpassenPlanMainNavigation extends StatelessWidget {
  const WWAanpassenPlanMainNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_aanpassen_plan_main) {
          await Navigator.pushNamed(context, 'ai_aanpassen_plan_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_aanpassen_plan_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Aanpassen Plan',
          ),
        ),
      ],
    );
  }
}