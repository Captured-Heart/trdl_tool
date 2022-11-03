import '/all_imports.dart';

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
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_infrastructuur_main) {
          await Navigator.pushNamed(context, 'ai_infrastructuur_main');
        } else if (result == PopupNavigation.ai_beveiliging_main) {
          await Navigator.pushNamed(context, 'ai_beveiliging_main');
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
          value: PopupNavigation.ai_infrastructuur_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Infra',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_beveiliging_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Beveiliging',
          ),
        ),
      ],
    );
  }
}
