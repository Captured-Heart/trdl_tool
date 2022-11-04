import '/all_imports.dart';

class AIInfraMain extends StatelessWidget {
  const AIInfraMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: const <Widget>[
          AIInfrastructuurMainNavigation(),
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
                    title: 'Infra',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/infra_incidenten_main.jpg',
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
                        buttontext: 'Wissels',
                        destination: 'ai_wissels_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Overwegen',
                        destination: 'ai_overwegen_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Beveiliging',
                        destination: 'ai_beveiliging_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Bovenleiding',
                        destination: 'ai_bovenleiding_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Spoor',
                        destination: 'ai_spoor_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Kunstwerken',
                        destination: 'ai_kunstwerken_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Sectie',
                        destination: 'ai_sectie_main',
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

class AIInfrastructuurMainNavigation extends StatelessWidget {
  const AIInfrastructuurMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_infrastructuur_main) {
          await Navigator.pushNamed(context, 'ww_infrastructuur_main');
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
          value: PopupNavigation.ww_infrastructuur_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Infrastructuur',
          ),
        ),
      ],
    );
  }
}