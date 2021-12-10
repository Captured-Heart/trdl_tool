import 'package:trdl_tool/all_imports.dart';

class Incidenten extends StatelessWidget {
  const Incidenten({Key? key}) : super(key: key);

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
                        title: 'Incidenten',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij een melding van een incident beoordeel je welke van de volgende maatregelen noodzakelijk zijn om een veilige situatie te creëren en/of uitbreiding te voorkomen:',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Alarmoproep GSM-R uitzenden;',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Herroepen van seinen;',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- ARI uitzetten;',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Buurtreindienstleider informeren;',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Veiligheidsmaatregelen nemen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Alarmeer of informeer de MKS/BO.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer de AL belt, neemt hij de leiding over van het incident en coördineert de afhandeling met de belanghebbenden ter plaatse. Op verzoek stel je de AL de infracapaciteit ter beschikking.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Nadat de AL of de LWB de werkzaamheden als gevolg van het incident gereed meldt, hervat je het treinverkeer, eventueel met inachtneming van de door de AL of LWB genoemde beperking(en).',
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
                            buttontext: 'Herroepen van een sein',
                            destination: 'herroepensein',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Infrastructuur',
                            destination: 'infra',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Derden en/of Dieren',
                            destination: 'derdendieren',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Materieel',
                            destination: 'materieelincidenten',
                          ),
                          SizedBoxH(),
                          NavButton(
                            buttontext: 'Overige Incidenten',
                            destination: 'overigeincidenten',
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*RISICO CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.risico,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Treinen komen niet tijdig tot stilstand voor het gevaarpunt of de snelheid van bijzonderheden_trein wordt niet tijdig teruggebracht voor het gevaarpunt.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CONTEXT CARD*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: Strings.context,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij een melding van een incident is het van belang om betrokkenen op de hoogte te brengen, het incident te isoleren en uitbreiding te voorkomen.',
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
