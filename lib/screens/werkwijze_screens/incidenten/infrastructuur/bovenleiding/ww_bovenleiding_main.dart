import '/all_imports.dart';

enum WhereToGoFromWWBovenleidingMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_incidenten_main,
  // ignore: constant_identifier_names
  ai_infra_main,
  // ignore: constant_identifier_names
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
    return PopupMenuButton<WhereToGoFromWWBovenleidingMain>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWBovenleidingMain result) async {
        if (result == WhereToGoFromWWBovenleidingMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWBovenleidingMain.ai_incidenten_main) {
          await Navigator.pushNamed(context, 'ai_incidenten_main');
        } else if (result == WhereToGoFromWWBovenleidingMain.ai_infra_main) {
          await Navigator.pushNamed(context, 'ai_infra_main');
        } else if (result ==
            WhereToGoFromWWBovenleidingMain.ai_bovenleiding_main) {
          await Navigator.pushNamed(context, 'ai_bovenleiding_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWBovenleidingMain>>[
        const PopupMenuItem<WhereToGoFromWWBovenleidingMain>(
          value: WhereToGoFromWWBovenleidingMain.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWBovenleidingMain>(
          value: WhereToGoFromWWBovenleidingMain.ai_incidenten_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Incidenten',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWBovenleidingMain>(
          value: WhereToGoFromWWBovenleidingMain.ai_infra_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Infra',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWBovenleidingMain>(
          value: WhereToGoFromWWBovenleidingMain.ai_bovenleiding_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Bovenleiding',
          ),
        ),
      ],
    );
  }
}
