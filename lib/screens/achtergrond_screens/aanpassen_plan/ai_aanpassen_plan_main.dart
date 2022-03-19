import 'package:trdl_tool/core/all_imports.dart';

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
                            destination: 'aanpassenplanbasisachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Stappenplan versperringen',
                            destination: 'stappenplanversperringenachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Orderacceptatie',
                            destination: 'orderacceptatieachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Ongepland werk',
                            destination: 'ongeplandwerkachtergrond',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Vertragingen',
                            destination: 'vertragingenachtergrond',
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