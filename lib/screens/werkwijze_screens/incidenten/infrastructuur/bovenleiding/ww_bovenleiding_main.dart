import '/all_imports.dart';

class WWBovenleidingMain extends StatelessWidget {
  const WWBovenleidingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWBovenleidingMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <TitleText>[
                  TitleText(
                    title: 'Bovenleiding',
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
            ],
          ),
        ),
      ),
    );
  }
}

class WWBovenleidingMainNavigation extends StatelessWidget {
  const WWBovenleidingMainNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
        } else if (result == PopupNavigation.ai_infra_main) {
          await Navigator.pushNamed(context, 'ai_infra_main');
        } else if (result == PopupNavigation.ai_bovenleiding_main) {
          await Navigator.pushNamed(context, 'ai_bovenleiding_main');
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
          value: PopupNavigation.ai_incidenten_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_infra_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Infra',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_bovenleiding_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Bovenleiding',
          ),
        ),
      ],
    );
  }
}