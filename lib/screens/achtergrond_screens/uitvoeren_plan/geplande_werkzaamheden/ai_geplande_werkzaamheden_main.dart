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
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIGeplandeWerkzaamhedenMain>(
            icon: const Icon(Icons.info_outlined),
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
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIGeplandeWerkzaamhedenMain>(
                value: WhereToGoFromAIGeplandeWerkzaamhedenMain
                    .ww_geplande_werkzaamheden_main,
                child: MenuItemContent(
                  icon: Icons.train,
                  text: 'WW Geplande Werkzaamheden',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Card>[
            //*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <TitleText>[
                    TitleText(
                      title: 'Geplande Werkzaamheden',
                    ),
                  ],
                ),
              ),
            ),
            /*NAVIGATION CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: <Widget>[
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
              ),
            ),
            /*IMAGE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/geplande_werkzaamheden/werkzaamhedenBovenleiding.jpg',
                    ),
                    SizedBoxH(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}