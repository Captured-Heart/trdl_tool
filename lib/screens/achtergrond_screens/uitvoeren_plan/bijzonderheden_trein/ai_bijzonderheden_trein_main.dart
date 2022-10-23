import '/all_imports.dart';

enum WhereToGoFromAIBijzonderhedenTreinMain {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_bijzonderheden_trein_main,
}

class AIBijzonderhedenTreinMain extends StatelessWidget {
  const AIBijzonderhedenTreinMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: <Widget>[
          PopupMenuButton<WhereToGoFromAIBijzonderhedenTreinMain>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIBijzonderhedenTreinMain result) async {
              if (result ==
                  WhereToGoFromAIBijzonderhedenTreinMain.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIBijzonderhedenTreinMain
                      .ww_bijzonderheden_trein_main) {
                await Navigator.pushNamed(
                    context, 'ww_bijzonderheden_trein_main');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIBijzonderhedenTreinMain>>[
              const PopupMenuItem<WhereToGoFromAIBijzonderhedenTreinMain>(
                value: WhereToGoFromAIBijzonderhedenTreinMain.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIBijzonderhedenTreinMain>(
                value: WhereToGoFromAIBijzonderhedenTreinMain
                    .ww_bijzonderheden_trein_main,
                child: MenuItemContent(
                  icon: Icons.train,
                  text: 'WW Bijzonderheden Trein',
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
                  children: const <TitleText>[
                    TitleText(
                      title: 'Bijzonderheden trein',
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
                          buttontext: 'Bijzonderheden Trein - Basis',
                          destination: 'ai_bijzonderheden_trein',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Vervoersregeling',
                          destination: 'ai_vervoersregeling',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Onjuiste detectie',
                          destination: 'ai_onjuiste_detectie',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzondere aandacht',
                          destination: 'ai_bijzondere_aandacht',
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
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/deKameel.jpg',
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