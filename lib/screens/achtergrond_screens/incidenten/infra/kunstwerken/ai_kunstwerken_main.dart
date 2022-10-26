import '/all_imports.dart';

class AIKunstwerkenMain extends StatelessWidget {
  const AIKunstwerkenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Kunstwerken',
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
                elevation: Utils.kCardElevation,
                child: Padding(
                  padding: Utils.kCardPadding,
                  child: Column(
                    children: const <Widget>[
                      TitleText(
                        title: 'Kunstwerken - basisinformatie',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/incidenten/wissels_achtergrond_main.jpg',
                      ),
                      SizedBoxH(),
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
                        children: const <NavButton>[
                          NavButton(
                            buttontext: 'Werkwijze - Wissels',
                            destination: 'wissels',
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