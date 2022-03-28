import 'package:trdl_tool/all_imports.dart';

class AIUitvoerenPlanMain extends StatelessWidget {
  const AIUitvoerenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Uitvoeren Plan',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*TITLE CARD*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Uitvoeren Plan',
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
                            buttontext: 'Uitvoeren plan - basis',
                            destination: 'ai_uitvoeren_plan',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Geplande werkzaamheden',
                            destination: 'ai_geplande_werkzaamheden_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Bijzonderheden trein',
                            destination: 'ai_bijzonderheden_trein_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Bijzonderheden rijwegen',
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
                            //TODO: Add page!
                            buttontext: 'Dienstovergave',
                            destination: 'dienstovergaveachtergrond',
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
                            'assets/images/achtergrond_info/uitvoeren_plan/spoorKaart2020.jpg',
                      ),
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
