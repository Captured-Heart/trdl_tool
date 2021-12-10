import 'package:trdl_tool/all_imports.dart';

class OverigeIncidenten extends StatelessWidget {
  const OverigeIncidenten({Key? key}) : super(key: key);

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
                        title: 'Overige Incidenten',
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
                            buttontext: 'Gestrande Trein',
                            destination: 'gestrandetrein',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Brand',
                            destination: 'brand',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Weersomstandigheden',
                            destination: 'weersomstandigheden',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Ontruimen Post',
                            destination: 'ontruimenpost',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Stroomstoring',
                            destination: 'stroomstoring',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Wissels vrijmaken',
                            destination: 'wisselsvrijmaken',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'STS passage',
                            destination: 'stspassage',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Stilleggen treindienst',
                            destination: 'stilleggentreindienst',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Afhandelen systeemstoringen',
                            destination: 'afhandelensysteemstoringen',
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
