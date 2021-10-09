import 'package:trdl_tool/all_imports.dart';

class UitvoerenPlan extends StatelessWidget {
  const UitvoerenPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarText(title: 'TRDLtool'),
        actions: [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TitleText(
                              title: 'Uitvoeren Plan',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'De treindienstleider voert het actuele plan uit en stelt infra ter beschikking volgens vooraf gemaakte afspraken.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //NAVIGATION CARD
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TitleText(
                              title: 'Ga snel naar',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
