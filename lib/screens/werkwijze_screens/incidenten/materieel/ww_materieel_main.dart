import 'package:trdl_tool/core/all_imports.dart';

class WerkwijzeMaterieelIncidenten extends StatelessWidget {
  const WerkwijzeMaterieelIncidenten({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Materieel',
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
                        title: 'Materieel',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Je kunt op drie manieren een melding krijgen over materieel:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Door de MCN;\n\n- Door derden;\n\n- Door systemen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Als de melding niet van de MCN komt, licht je de MCN van de betrokken trein in.',
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
                            buttontext: 'Vaste rem',
                            destination: 'ww_vaste_rem',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'ATB veiligheidsstoring',
                            destination: 'ww_atb_veiligheidsstoring',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Hotbox & Quo Vadis',
                            destination: 'ww_hotbox',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Gevaarlijke Stoffen',
                            destination: 'ww_gevaarlijke_stoffen1',
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
