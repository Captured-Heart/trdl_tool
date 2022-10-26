import '/all_imports.dart';

enum WhereToGoFromAIBijzonderhedenRijwegenMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_bijzonderheden_rijwegen_main,
  // ignore: constant_identifier_names
  ww_kop_van_trein_voorbij_sein,
}

class AIBijzonderhedenRijwegenMain extends StatelessWidget {
  const AIBijzonderhedenRijwegenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIBijzonderhedenRijwegenMain>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected:
                (WhereToGoFromAIBijzonderhedenRijwegenMain result) async {
              if (result ==
                  WhereToGoFromAIBijzonderhedenRijwegenMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIBijzonderhedenRijwegenMain
                      .ww_bijzonderheden_rijwegen_main) {
                await Navigator.pushNamed(
                  context,
                  'ww_bijzonderheden_rijwegen_main',
                );
              } else if (result ==
                  WhereToGoFromAIBijzonderhedenRijwegenMain
                      .ww_kop_van_trein_voorbij_sein) {
                await Navigator.pushNamed(
                  context,
                  'ww_kop_van_trein_voorbij_sein',
                );
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIBijzonderhedenRijwegenMain>>[
              const PopupMenuItem<WhereToGoFromAIBijzonderhedenRijwegenMain>(
                value: WhereToGoFromAIBijzonderhedenRijwegenMain.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBijzonderhedenRijwegenMain>(
                value: WhereToGoFromAIBijzonderhedenRijwegenMain
                    .ww_bijzonderheden_rijwegen_main,
                child: MenuItemContent(
                  icon: Utils.iconWW,
                  text: 'WW Bijzonderheden Rijwegen',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBijzonderhedenRijwegenMain>(
                value: WhereToGoFromAIBijzonderhedenRijwegenMain
                    .ww_kop_van_trein_voorbij_sein,
                child: MenuItemContent(
                  icon: Utils.iconWW,
                  text: 'WW Kop van Trein Voorbij Sein',
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
              elevation: Utils.kCardElevation,
              child: Padding(
                padding: Utils.kCardPadding,
                child: Column(
                  children: const <SubTitleText>[
                    SubTitleText(
                      subtitle: 'Bijzonderheden Rijwegen',
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
                          buttontext: 'Inzetten railvoertuig (ICB)',
                          destination: 'ai_inzetten_icb',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Toelaten werktreinen',
                          destination: 'ai_toelaten_werktreinen',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Rijwegen - Planopbouw',
                          destination: 'ai_rijwegen_planopbouw',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Rijwegen - Planscherm',
                          destination: 'ai_rijwegen_planscherm',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Rijwegen - ARI',
                          destination: 'ai_rijwegen_ari',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Rijwegen - TROTS en ABT',
                          destination: 'ai_rijwegen_trots',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Rijwegen - Bedienscherm',
                          destination: 'ai_rijwegen_bedienscherm',
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
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/icbVoertuig.jpg',
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