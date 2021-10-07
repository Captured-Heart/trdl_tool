import 'package:trdl_tool/all_imports.dart';

class Infra extends StatelessWidget {
  const Infra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: AppBarText(title: 'TRDLtool'),
      ),
      floatingActionButton: FabHome(),
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
                            child: TitleText(title: 'Infra'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Procedure',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Bij een melding gestoorde of defecte infra, handel je als volgt:',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Text(
                              '- Bepaal de urgentie en neem samen met de DVL een verdelingsbesluit over de directe gevolgen van de storing;',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Text(
                              '- Meld de storing aan bij de MKS/BO onder vermelding van urgent/urgent met tijdsafspraak/niet urgent. Indien aanwezig, vermeld je het nummer van de storings WBI. Geef aan of en wanneer urgent herstel met tijdsafspraak moet of kan plaatsvinden;',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Text(
                              '- Wanneer de geschatte aankomsttijd bekend is, bepaal je samen met de DVL de exacte aanvang en einde van de beschikbaar te stellen infracapaciteit met een maximale periode van 25 minuten;',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 8.0,
                          ),
                          Expanded(
                            child: Text(
                              '- Na deze analyse maak je in overleg met de LWB een heroverweging over urgent/urgent met tijdsafspraak/niet urgent herstel en informeer je de DVL.',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Het streven is de infracapaciteit beschikbaar te stellen binnen 10 minuten na prognose aankomst LWB. Als er geen urgent herstel plaats hoeft te vinden en je de gestoorde infra wel laat berijden, dan kan een analyse op veilige berijdbaarheid nodig zijn. Dit hoor je van de MKS/BO.',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Ga snel naar',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              //TODO
                            },
                            child: Text(
                              'Wissels',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Overwegen',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Beveiliging',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //TODO;
                            },
                            child: Text(
                              'Bovenleiding',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //TODO
                            },
                            child: Text(
                              'Spoor',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //TODO
                            },
                            child: Text(
                              'Kunstwerken',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              //TODO
                            },
                            child: Text(
                              'Sectie',
                              style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Risico\'s',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Treinen komen niet tijdig tot stilstand voor het gevaarpunt of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Context',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Bij het afhandelen van defecte of gestoord infra is bovenstaande procedure de algemene afspraak. Voor de afhandeling van specifieke infra-incidenten staan de procedures beschreven in de betreffende hoofdstukken.',
                              style: GoogleFonts.questrial(
                                textStyle: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
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
