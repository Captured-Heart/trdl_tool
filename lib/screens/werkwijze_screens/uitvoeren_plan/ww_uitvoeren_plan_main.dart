import 'package:trdl_tool/core/all_imports.dart';

class WWUitvoerenPlanMain extends StatelessWidget {
  const WWUitvoerenPlanMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Uitvoeren Plan',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
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
                      title: 'Uitvoeren Plan',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De TRDL voert het actuele plan uit en stelt infra ter beschikking volgens vooraf gemaakte afspraken.',
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
                          buttontext: 'Geplande Werkzaamheden',
                          destination: 'ww_geplande_werkzaamheden_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzonderheden Rijwegen',
                          destination: 'ww_bijzonderheden_rijwegen_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Bijzonderheden Trein',
                          destination: 'ww_bijzonderheden_trein',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Communicatie',
                          destination: 'ww_communicatie_main',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'NCBG',
                          destination: 'ww_ncbg',
                        ),
                        SizedBoxH(),
                        NavButton(
                          buttontext: 'Dienstovergave',
                          destination: 'ww_dienstovergave',
                        ),
                      ],
                    ),
                    const SizedBoxH(),
                  ],
                ),
              ),
            ),
            /*ACHTERGROND CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: [
                    const TitleText(
                      title: 'Achtergrondinfo',
                    ),
                    const SizedBoxH(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        NavButton(
                          buttontext: 'Uitvoeren Plan - Achtergrond',
                          destination: 'ai_uitvoeren_plan_main',
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
    );
  }
}