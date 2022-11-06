import '/all_imports.dart';

class AIWisselsMain extends StatelessWidget {
  const AIWisselsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIWisselsMainNavigation(),
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
                    title: 'Wissels',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/wissels_achtergrond_main.jpg',
                  ),
                  SizedBoxH(),
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
                        buttontext: 'Wissels - basisinformatie',
                        destination: 'ai_wissels_basis',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Wissel niet in eindstand',
                        destination: 'ai_wissel_eindstand',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Gestoord wissel',
                        destination: 'ai_gestoord_wissel',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Opengereden wissel',
                        destination: 'ai_opengereden_wissel',
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

class AIWisselsMainNavigation extends StatelessWidget {
  const AIWisselsMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_wissels_main) {
          await Navigator.pushNamed(context, 'ww_wissels_main');
        } else if (result == PopupNavigation.ai_overige_infra_elementen) {
          await Navigator.pushNamed(
            context,
            'ai_overige_infra_elementen',
          );
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
          value: PopupNavigation.ww_wissels_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Wissels',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_overige_infra_elementen,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Overige Infra',
          ),
        ),
      ],
    );
  }
}
