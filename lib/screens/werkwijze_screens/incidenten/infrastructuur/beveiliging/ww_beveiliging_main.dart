import '/all_imports.dart';

enum WhereToGoFromWWBeveiligingMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_infra_main,
  // ignore: constant_identifier_names
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
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWBeveiligingMainNavigation(),
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
                    title: 'Beveiliging',
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
            ],
          ),
        ),
      ),
    );
  }
}

class WWBeveiligingMainNavigation extends StatelessWidget {
  const WWBeveiligingMainNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWBeveiligingMain>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWBeveiligingMain result) async {
        if (result == WhereToGoFromWWBeveiligingMain.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWBeveiligingMain.ai_infra_main) {
          await Navigator.pushNamed(context, 'ai_infra_main');
        } else if (result ==
            WhereToGoFromWWBeveiligingMain.ai_beveiliging_main) {
          await Navigator.pushNamed(context, 'ai_beveiliging_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWBeveiligingMain>>[
        const PopupMenuItem<WhereToGoFromWWBeveiligingMain>(
          value: WhereToGoFromWWBeveiligingMain.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWBeveiligingMain>(
          value: WhereToGoFromWWBeveiligingMain.ai_infra_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Infra',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWBeveiligingMain>(
          value: WhereToGoFromWWBeveiligingMain.ai_beveiliging_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Beveiliging',
          ),
        ),
      ],
    );
  }
}
