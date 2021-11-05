import 'package:trdl_tool/all_imports.dart';

class UitvoerenPlan extends StatelessWidget {
  const UitvoerenPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              /*PROCEDURE CARD*/
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
                              title: 'Uitvoeren Plan',
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
                                  'De treindienstleider voert het actuele plan uit en stelt infra ter beschikking volgens vooraf gemaakte afspraken.',
                            ),
                          ),
                        ],
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
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Ga snel naar',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          NavButton(
                            buttontext: 'Geplande Werkzaamheden',
                            destination: 'geplandewerkzaamheden',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Bijzonderheden Rijwegen',
                            destination: 'bijzonderhedenrijwegen',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Bijzonderheden Trein',
                            destination: 'bijzonderhedentrein',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Communicatie',
                            destination: 'communicatie',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'NCBG',
                            destination: 'ncbg',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Dienstovergave',
                            destination: 'dienstovergave',
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
