import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIBijzonderhedenRijwegenMain {
  home_screen,
  ww_bijzonderheden_rijwegen_main,
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
        actions: [
          PopupMenuButton<WhereToGoFromAIBijzonderhedenRijwegenMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIBijzonderhedenRijwegenMain result) {
              if (result ==
                  WhereToGoFromAIBijzonderhedenRijwegenMain.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIBijzonderhedenRijwegenMain
                      .ww_bijzonderheden_rijwegen_main) {
                Navigator.pushNamed(context, 'ww_bijzonderheden_rijwegen_main');
              } else if (result ==
                  WhereToGoFromAIBijzonderhedenRijwegenMain
                      .ww_kop_van_trein_voorbij_sein) {
                Navigator.pushNamed(context, 'ww_kop_van_trein_voorbij_sein');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIBijzonderhedenRijwegenMain>>[
              PopupMenuItem<WhereToGoFromAIBijzonderhedenRijwegenMain>(
                value: WhereToGoFromAIBijzonderhedenRijwegenMain.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAIBijzonderhedenRijwegenMain>(
                value: WhereToGoFromAIBijzonderhedenRijwegenMain
                    .ww_bijzonderheden_rijwegen_main,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.train,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('WW Bijzonderheden Rijwegen'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAIBijzonderhedenRijwegenMain>(
                value: WhereToGoFromAIBijzonderhedenRijwegenMain
                    .ww_kop_van_trein_voorbij_sein,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.train,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('WW Kop voorbij Sein'),
                  ],
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //*PROCEDURE CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SubTitleText(
                      subtitle: 'Bijzonderheden Rijwegen',
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
                  children: [
                    const TitleText(
                      title: 'Ga snel naar',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
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
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
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
