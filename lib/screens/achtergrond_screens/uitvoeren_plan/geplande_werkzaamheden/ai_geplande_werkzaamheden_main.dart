import '/all_imports.dart';

enum WhereToGoFromAIGeplandeWerkzaamhedenMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_geplande_werkzaamheden_main,
}

class AIGeplandeWerkzaamhedenMain extends StatelessWidget {
  const AIGeplandeWerkzaamhedenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.titleAI,
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
            TextCard(
                  widgetList: const <TitleText>[
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
                          destination: 'ai_fouten_wbi',
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
            TextCard(
                  widgetList: const <Widget>[
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
    ),);
  }
}

class AIGeplandeWerkzaamhedenMainNavigation extends StatelessWidget {
  const AIGeplandeWerkzaamhedenMainNavigation({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIGeplandeWerkzaamhedenMain>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected:
                (WhereToGoFromAIGeplandeWerkzaamhedenMain result) async {
              if (result ==
                  WhereToGoFromAIGeplandeWerkzaamhedenMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIGeplandeWerkzaamhedenMain
                      .ww_geplande_werkzaamheden_main) {
                await Navigator.pushNamed(
                  context,
                  'ww_geplande_werkzaamheden_main',
                );
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIGeplandeWerkzaamhedenMain>>[
              const PopupMenuItem<WhereToGoFromAIGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromAIGeplandeWerkzaamhedenMain.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromAIGeplandeWerkzaamhedenMain
                    .ww_geplande_werkzaamheden_main,
                child: MenuItemContent(
                  icon: Utils.iconWW,
                  text: 'WW Geplande Werkzaamheden',
                ),
              ),
            ],
          );
  }
}
