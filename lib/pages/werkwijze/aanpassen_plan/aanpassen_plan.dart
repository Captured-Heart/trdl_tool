import 'package:trdl_tool/all_imports.dart';

class AanpassenPlan extends StatelessWidget {
  const AanpassenPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool'),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Procedure Card
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Aanpassen Plan',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Het actuele plan aanpassen als gevolg van een incident of extra capaciteitsaanvraag.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Navigation Card
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Ga snel naar:',
                            ),
                          ),
                        ],
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
