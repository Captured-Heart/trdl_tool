import 'package:trdl_tool/all_imports.dart';

class AIAanpassenPlanMain extends StatelessWidget {
  const AIAanpassenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Aanpassen plan',
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
                        title: 'Aanpassen Plan',
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
                            buttontext: 'Aanpassen plan - basis',
                            destination: 'ai_aanpassen_plan',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Stappenplan versperringen',
                            destination: 'ai_stappenplan_versperringen',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Orderacceptatie',
                            destination: 'ai_orderacceptatie',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Ongepland werk',
                            destination: 'ai_ongepland_werk_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Vertragingen',
                            destination: 'ai_vertragingen',
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
                            'assets/images/achtergrond_info/aanpassen_plan/info_bord.png',
                      ),
                      SizedBoxH(),
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
