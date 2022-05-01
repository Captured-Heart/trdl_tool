import 'package:trdl_tool/all_imports.dart';

//TODO: Continue adding pages and navigation here!

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
                    children: [
                      const TitleText(
                        title: 'Ga snel naar',
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavButton(
                            buttontext: 'Werkwijze - Infra',
                            destination: 'ww_infrastructuur_main',
                          ),
                          SizedBoxH(),
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
      ),
    );
  }
}
