import '/all_imports.dart';

class AIBovenleidingMain extends StatelessWidget {
  const AIBovenleidingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: const <HomeButton>[
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Card>[
              /*PROCEDURE CARD*/
              Card(
                elevation: CardUtils.kCardElevation,
                child: Padding(
                  padding: Utils.kCardPadding,
                  child: Column(
                    children: const <Widget>[
                      TitleText(
                        title: 'Bovenleiding',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/incidenten/bovenleiding_achtergrond_main.jpg',
                      ),
                      SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*NAVIGATION CARD*/
              Card(
                elevation: CardUtils.kCardElevation,
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
                        children: const <NavButton>[
                          NavButton(
                            buttontext: 'Werkwijze - Bovenleiding',
                            destination: 'bovenleiding',
                          ),
                          //   SizedBoxH(),
                          //   NavButton(
                          //     buttontext: 'Wissels - basisinformatie',
                          //     destination: 'wisselsbasisinformatie',
                          //   ),
                          //   SizedBoxH(),
                          //   NavButton(
                          //     buttontext: 'Wissel niet in eindstand',
                          //     destination: 'wisselnietineindstandincidentenachtergrond',
                          //   ),
                          //   SizedBoxH(),
                          //   NavButton(
                          //     buttontext: 'Gestoord wissel',
                          //     destination: 'gestoordwisselincidentenachtergrond',
                          //   ),
                          //   SizedBoxH(),
                          //   NavButton(
                          //     buttontext: 'Opengereden wissel',
                          //     destination: 'opengeredenwisselincidentenachtergrond',
                          //   ),
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
      ),
    );
  }
}