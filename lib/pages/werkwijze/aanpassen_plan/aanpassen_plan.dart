import 'package:trdl_tool/all_imports.dart';

class AanpassenPlan extends StatelessWidget {
  const AanpassenPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'TRDLtool',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                            destination: 'stappenplanversperringen',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Incidenten',
                            destination: 'incidenten',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Ongepland Werk',
                            destination: 'ongeplandwerk',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Vertragingen',
                            destination: 'vertragingen',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Orderacceptatie',
                            destination: 'orderacceptatie',
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
