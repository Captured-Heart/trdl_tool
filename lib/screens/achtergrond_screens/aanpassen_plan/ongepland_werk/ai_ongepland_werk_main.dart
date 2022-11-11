import '/all_imports.dart';

class AIOngeplandWerkMain extends StatelessWidget {
  const AIOngeplandWerkMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIOngeplandWerkMainNavigation(),
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
                    title: 'Ongepland Werk',
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
                        buttontext: 'Ongepland Werk - Werkwijze',
                        destination: 'ww_ongepland_werk_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Ongepland werk - Infra',
                        destination: 'ai_ongepland_werk_infra',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Ongepland werk - Materieel',
                        destination: 'ai_ongepland_werk_materieel',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Infra ter beschikking stellen',
                        destination: 'ai_infra_beschikbaar_stellen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Toelaten werktreinen',
                        destination: 'ai_toelaten_werktreinen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Inzetten railvoertuig (ICB)',
                        destination: 'ai_inzet_railvoertuig_icb',
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/ongepland_werk_main.png',
                  ),
                  SizedBoxH(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIOngeplandWerkMainNavigation extends StatelessWidget {
  const AIOngeplandWerkMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_ongepland_werk_main) {
          await Navigator.pushNamed(context, 'ww_ongepland_werk_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_ongepland_werk_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Ongepland Werk',
          ),
        ),
      ],
    );
  }
}
