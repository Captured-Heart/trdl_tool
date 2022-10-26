import '/all_imports.dart';

class AISpoorMain extends StatelessWidget {
  const AISpoorMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Spoor',
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
                        title: 'Spoor',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/incidenten/spoor_achtergrond_main.jpg',
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
                            buttontext: 'Werkwijze - Spoor',
                            destination: 'spoor',
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