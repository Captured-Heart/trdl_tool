import 'package:trdl_tool/all_imports.dart';

class OnjuisteDetectieAchtergrond extends StatelessWidget {
  const OnjuisteDetectieAchtergrond({Key? key}) : super(key: key);

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
              /*CARD #1*/
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
                              title: 'Voertuigen zonder juiste detectie',
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
                                  'Lichte bijzonderheden_trein en/of materieel met schijfremmen worden slechter gedetecteerd omdat de spoorstaven door het slechtere contact tussen de wielen de rails niet goed worden kortgesloten. De bijzonderheden_trein worden niet altijd goed gedetecteerd en de ATB EG werkt bij deze bijzonderheden_trein ook minder goed omdat dat eveneens via de spoorstroomloop gaat. Het grootste gevaar treedt op bij overwegen, omdat de spoorbomen te laat kunnen sluiten.',
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
                                  'Daarom wordt op spoorlijnen met dit materieel vaak een andere detectie geïnstalleerd. Officieel spreekt men bij dit soort materieel van voertuigen zonder de zekerheid van juiste spoordetectie.',
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
                                  'In Nederland zijn bijvoorbeeld de volgende materieeltypen slecht detecteerbaar:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Lighttrains als de Stadler/GTW en LINT;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Railvoertuig Incidentenbestrijding;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Loc G2000.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Toegang tot het spoor',
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
                                  'Al het materieel wat op het spoor rijdt is in bezit van een inzetcertificaat. Op het inzetcertificaat staat of er beperkingen zijn voor de inzetbaarheid van het materieel op het gecontroleerde spoor. Voor bijzonderheden_trein die niet juist detecteren, zoals hierboven beschreven, worden aanvullende maatregelen voorgeschreven om de veiligheid te waarborgen. De vervoerder is verplicht om jou te informeren m.b.t. de juiste detectie op het spoor. Dit kan via een (lokale) orderaanvraag (Medewerker rangeren, DVL) waarbij aangegeven wordt dat het materieel niet (juist) detecteert of een veiligheidsbericht van je buurtreindienstleider.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #3*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Detectie op niet aangepaste baanvakken',
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
                                  'Overigens is uit detectieproeven gebleken dat op spoor wat niet is aangepast voor het berijden met Lightrail een solo rijdende DM90 en minimaal twee gekoppelde LINT-stellen zich wél normaal detecteren als het spoor binnen 24 uur minimaal 36 keer is bereden door normaal detecterend elektrisch materieel. Ook is vastgesteld dat minimaal twee gekoppelde DM90-stellen zich ook normaal detecteren; er hoeft dan niet aan extra voorwaarden worden voldaan.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #4*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Voertuigen zonder juiste detectie i.c.m. overwegen',
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
                                  'Voor het veilig berijden van overwegen hoef je als treindienstleider niets te doen, dit is aan de begeleider van het voertuig zonder juiste detectie: aanwijzingen OVW zijn dus niet nodig; dit in tegenstelling tot het berijden van gedurende langere tijd niet bereden sporen.',
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
                                  'Tenzij je links tegen de rijrichting gaat rijden. De Werkwijze Treindienstleider schrijft dan voor dat je met een aanwijzing OVW rijdt.',
                            ),
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
