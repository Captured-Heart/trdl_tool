import '/all_imports.dart';

enum WhereToGoFromAIInfraMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_infrastructuur_main,
}

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
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIInfraMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIInfraMain result) async {
              if (result == WhereToGoFromAIInfraMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIInfraMain.ww_infrastructuur_main) {
                await Navigator.pushNamed(context, 'ww_infrastructuur_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIInfraMain>>[
              const PopupMenuItem<WhereToGoFromAIInfraMain>(
                value: WhereToGoFromAIInfraMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIInfraMain>(
                value: WhereToGoFromAIInfraMain.ww_infrastructuur_main,
                child: MenuItemContent(
                  icon: Icons.train,
                  text: 'WW Infra',
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
            /*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const <Widget>[
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
                          destination: 'ai_kunstwerken',
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}