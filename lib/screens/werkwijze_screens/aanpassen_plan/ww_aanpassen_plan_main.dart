import 'package:trdl_tool/core/all_imports.dart';

class WWAanpassenPlanMain extends StatelessWidget {
  const WWAanpassenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Aanpassen Plan',
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
                        title: 'Aanpassen Plan',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Het actuele plan aanpassen als gevolg van een incident of extra capaciteitsaanvraag.',
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
                            buttontext: 'Stappenplan Versperringen',
                            destination: 'ww_stappenplan_versperringen',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Incidenten',
                            destination: 'ww_incidenten',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Ongepland Werk',
                            destination: 'ww_ongepland_werk_main',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Vertragingen',
                            destination: 'ww_vertragingen',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Orderacceptatie',
                            destination: 'ww_orderacceptatie',
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
