import '/all_imports.dart';

class AIGeplandeWerkzaamhedenMain extends StatelessWidget {
  const AIGeplandeWerkzaamhedenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIGeplandeWerkzaamhedenMainNavigation(),
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
                    title: 'Geplande Werkzaamheden',
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
                        buttontext: 'Geplande werkzaamheden - Werkwijze',
                        destination: 'ww_geplande_werkzaamheden_main',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Geplande werkzaamheden - Basis',
                        destination: 'ai_geplande_werkzaamheden',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Controleren WBI',
                        destination: 'ai_controleren_wbi',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Fouten in de WBI',
                        destination: 'ai_fouten_in_de_wbi',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Aanvang werkzaamheden',
                        destination: 'ai_aanvang_werkzaamheden',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Toelaten werktreinen',
                        destination: 'ai_toelaten_werktreinen',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Werkzones',
                        destination: 'ai_werkzones',
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
                        'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzaamhedenBovenleiding.jpg',
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

class AIGeplandeWerkzaamhedenMainNavigation extends StatelessWidget {
  const AIGeplandeWerkzaamhedenMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_geplande_werkzaamheden_main) {
          await Navigator.pushNamed(
            context,
            'ww_geplande_werkzaamheden_main',
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
          value: PopupNavigation.ww_geplande_werkzaamheden_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Geplande Werkzaamheden',
          ),
        ),
      ],
    );
  }
}
