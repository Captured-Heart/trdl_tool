import '/all_imports.dart';

class AIInzetRailvoertuigICB extends StatelessWidget {
  const AIInzetRailvoertuigICB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIOngeplandWerkMaterieelNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Inzet Railvoertuig ICB',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Work in progress...',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIInzetRailvoertuigICBNavigation extends StatelessWidget {
  const AIInzetRailvoertuigICBNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_ongepland_werk_materieel) {
          await Navigator.pushNamed(
            context,
            'ww_ongepland_werk_materieel',
          );
        } else if (result == PopupNavigation.ai_infra_ter_beschikking) {
          await Navigator.pushNamed(context, 'ai_infra_ter_beschikking');
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
          value: PopupNavigation.ww_ongepland_werk_materieel,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Ongepland Werk - Materieel',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_infra_ter_beschikking,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Infra ter beschikking stellen',
          ),
        ),
      ],
    );
  }
}