import 'package:trdl_tool/all_imports.dart';

class InzettenICB extends StatelessWidget {
  const InzettenICB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TRDLtool',
          style: GoogleFonts.questrial(textStyle: TextStyle(fontWeight: FontWeight.w700)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.home),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          );
        },
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
                            child: Text(
                              'Inzetten railvoertuig ICB',
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
                              'Voor het inzetten van het railvoertuig incidentenbestrijding bij calamiteiten heb je contact met de AL.​​​​​​​',
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
                              '- De machinist van het railvoertuig ICB meldt zich en je:',
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
                            width: 16.0,
                          ),
                          Expanded(
                            child: Text(
                              '1. overlegt waar hij het railwegvoertuig ICB in het spoor (inzetspoor) kan plaatsen;',
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
                            width: 16.0,
                          ),
                          Expanded(
                            child: Text(
                              '2. vertelt over welke route (verplaatsingsspoor) hij naar de calamiteitenplek (bestemmingsspoor) gaat;',
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
                            width: 16.0,
                          ),
                          Expanded(
                            child: Text(
                              '3. vertelt welke infra-objecten hij in de te berijden route naar de calamiteitenplek zal tegenkomen.',
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
                          Expanded(
                            child: Text(
                              '- De machinist geeft aan of hij binnen de PVR van het nevenspoor komt.',
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
                          Expanded(
                            child: Text(
                              '- Tref veiligheidsmaatregelen en stel infracapaciteit beschikbaar.',
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
                          Expanded(
                            child: Text(
                              '- Geef de machinist toestemming om het railvoertuig ICB in het spoor te plaatsen.',
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
                          Expanded(
                            child: Text(
                              '- De machinist meldt dat het railvoertuig is geplaatst.',
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
                          Expanded(
                            child: Text(
                              '- Stel een rijweg over het verplaatsingsspoor ter beschikking. Behandel het voertuig als een voertuig zonder juiste treindetectie.',
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
                          Expanded(
                            child: Text(
                              '- Vertel de machinist waar hij zich moet melden. Als er infracapaciteit beschikbaar is gesteld aan een LWB moet hij zich melden bij deze LWB en anders bij aankomst op het bestemmingsspoor.',
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
                          Expanded(
                            child: Text(
                              '- Na de melding van het vrij zijn en blijven van zowel inzet-, verplaatsing- als bestemmingsspoor, hef je de maatregelen op.',
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
                              'In overige situaties moeten alle sporen buitendienst gesteld zijn.',
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
                              'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
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
                              'Om materieel ten behoeve van afhandeling incidenten snel en zo dicht mogelijk bij de incidentlocatie te krijgen zijn railvoertuigen Incidentenbestrijding beschikbaar. Deze worden op inzetlocaties in het spoor geplaatst en via het spoor verplaatst naar de incidentlocatie. De machinist van het railvoertuig heeft meestal geen plaatselijke wegbekendheid.',
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
