import 'package:trdl_tool/all_imports.dart';

class HomeIndex1 extends StatelessWidget {
  const HomeIndex1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Achtergrondinformatie Treindienstleider',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De Werkwijze Treindienstleider is online beschikbaar op SharePoint. Deze werkwijze is altijd actueel en wordt inhoudelijk beheerd door de staf Verkeersleiding, treindienstleiding i.s.m. Human Factors Verkeersleiding (HF VL).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De achtergrondinformatie is onderdeel van de Werkwijze Treindienstleiding, samen met de documenten Vakmanschap en TRA (Taak Risico Analyse). De opbouw van de achtergrondinformatie volgt de opbouw van de nieuwe werkwijze.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De TRDLtool is nog volop in ontwikkeling en krijgt regelmatig updates. Kom snel terug voor meer achtergrondinformatie.',
                      ),
                    ],
                  ),
                ),
              ),
              //NAVIGATION CARD
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
                      FittedBox(
                        fit: BoxFit.cover,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            NavButton(
                              buttontext: 'Uitvoeren',
                              destination: 'ai_uitvoeren_plan_main',
                            ),
                            SizedBoxW(),
                            NavButton(
                              buttontext: 'Aanpassen',
                              destination: 'ai_aanpassen_plan_main',
                            ),
                            SizedBoxW(),
                            NavButton(
                              buttontext: 'Incidenten',
                              destination: 'ai_incidenten_main',
                            ),
                          ],
                        ),
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
