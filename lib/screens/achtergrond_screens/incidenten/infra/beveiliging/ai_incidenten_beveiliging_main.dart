import 'package:trdl_tool/core/all_imports.dart';

class AIIncidentenBeveiligingMain extends StatelessWidget {
  const AIIncidentenBeveiligingMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Beveiliging',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*PROCEDURE CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Beveiliging',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/incidenten/beveiliging_achtergrond_main.jpg',
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
                    children: [
                      const TitleText(
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavButton(
                            buttontext: 'Werkwijze - Beveiliging',
                            destination: 'ww_beveiliging_main',
                          ),
                            SizedBoxH(),
                            NavButton(
                              buttontext: 'Seinen - basisinformatie',
                              destination: 'wisselsbasisinformatie',
                            ),
                            SizedBoxH(),
                            NavButton(
                              buttontext: 'Wissel niet in eindstand',
                              destination: 'wisselnietineindstandincidentenachtergrond',
                            ),
                            SizedBoxH(),
                            NavButton(
                              buttontext: 'Gestoord wissel',
                              destination: 'gestoordwisselincidentenachtergrond',
                            ),
                            SizedBoxH(),
                            NavButton(
                              buttontext: 'Opengereden wissel',
                              destination: 'opengeredenwisselincidentenachtergrond',
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
      ),
    );
  }
}