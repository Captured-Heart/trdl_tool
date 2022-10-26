import '/all_imports.dart';

enum WhereToGoFromAIUitvoerenPlanMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_uitvoeren_plan_main,
  // ignore: constant_identifier_names
  ai_rijwegen_ari,
}

class AIUitvoerenPlanMain extends StatelessWidget {
  const AIUitvoerenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIUitvoerenPlanMain>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIUitvoerenPlanMain result) async {
              if (result == WhereToGoFromAIUitvoerenPlanMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIUitvoerenPlanMain.ww_uitvoeren_plan_main) {
                await Navigator.pushNamed(context, 'ww_uitvoeren_plan_main');
              } else if (result ==
                  WhereToGoFromAIUitvoerenPlanMain.ai_rijwegen_ari) {
                await Navigator.pushNamed(context, 'ai_rijwegen_ari');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIUitvoerenPlanMain>>[
              const PopupMenuItem<WhereToGoFromAIUitvoerenPlanMain>(
                value: WhereToGoFromAIUitvoerenPlanMain.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIUitvoerenPlanMain>(
                value: WhereToGoFromAIUitvoerenPlanMain.ww_uitvoeren_plan_main,
                child: MenuItemContent(
                  icon: Utils.iconWW,
                  text: 'WW Uitvoeren Plan',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIUitvoerenPlanMain>(
                value: WhereToGoFromAIUitvoerenPlanMain.ai_rijwegen_ari,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Rijwegen ARI',
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
            /*TITLE CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <TitleText>[
                    TitleText(
                      title: 'Uitvoeren Plan',
                    ),
                  ],
                ),
              ),
            ),
            /*NAVIGATION CARD*/
            Card(
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
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
                          buttontext: 'Uitvoeren plan - basis',
                          destination: 'ai_uitvoeren_plan',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Geplande Werkzaamheden',
                          destination: 'ai_geplande_werkzaamheden_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzonderheden Trein',
                          destination: 'ai_bijzonderheden_trein_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzonderheden Rijwegen',
                          destination: 'ai_bijzonderheden_rijwegen_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Communicatie',
                          destination: 'ai_communicatie_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'NCBG',
                          destination: 'ai_ncbg',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Dienstovergave',
                          destination: 'ai_dienstovergave',
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
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <Widget>[
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/spoorKaart2020.jpg',
                    ),
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