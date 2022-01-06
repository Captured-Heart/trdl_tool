import 'package:trdl_tool/core/all_imports.dart';

class MaterieelIncidenten extends StatelessWidget {
  const MaterieelIncidenten({Key? key}) : super(key: key);

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
                        title: 'Materieel',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je kunt op drie manieren een melding krijgen over materieel:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Door de machinist;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Door derden;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Door systemen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als de melding niet van de machinist komt, licht je de machinist van de betrokken trein in.',
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
                            buttontext: 'Vaste rem',
                            destination: 'vasterem',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'ATB Veiligheidsstoring',
                            destination: 'atbveiligheidsstoring',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Hotbox & Quo Vadis',
                            destination: 'hotbox',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Gevaarlijke stoffen',
                            destination: 'gevaarlijkestoffen1',
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
