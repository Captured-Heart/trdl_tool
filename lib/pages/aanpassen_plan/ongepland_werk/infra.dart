import 'package:trdl_tool/all_imports.dart';

class InfraOngeplandWerk extends StatelessWidget {
  const InfraOngeplandWerk({Key? key}) : super(key: key);

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
                            child: TitleText(title: 'Infra (ongepland werk)'),
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
                              'Ongeplande werkzaamheden aan de railinfrastructuur met WBI/WECO:',
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
                              '- Met (maatwerk)storings WBI/WECO.',
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
                              'Ongeplande werkzaamheden aan de railinfrastructuur zonder WBI/WECO:',
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
                              '- Je werkt op RVO nummer en handelt als volgt:',
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
                              '- Vraag welke infra betrokken is en hoelang de werkzaamheden gaan duren;',
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
                              '- De DVL beslist bij werkzaamheden op de vrije baan over het aanvangstijdstip;',
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
                              '- Overleg met de LWB over:',
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
                            width: 24.0,
                          ),
                          Expanded(
                            child: Text(
                              '- Niveau van de werkplekbeveiliging;',
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
                            width: 24.0,
                          ),
                          Expanded(
                            child: Text(
                              '- Veiligheidsmaatregelen LWB;',
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
                            width: 24.0,
                          ),
                          Expanded(
                            child: Text(
                              '- Veiligheidsmaatregelen treindienstleider;',
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
                            width: 24.0,
                          ),
                          Expanded(
                            child: Text(
                              '- Exacte aanduiding werkplek.',
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
                              '- Maak met de LWB een WECO op.',
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
                              'Voor het oplossen van (dreigende) storingen en/of calamiteiten kan het nodig zijn ongepland infracapaciteit beschikbaar te stellen voor werkzaamheden. Om deze werkzaamheden te beveiligen kan gebruik worden gemaakt van vooraf voorbereide storingsWBI’s of maatwerkWBI’s. Wanneer beide mogelijkheden niet beschikbaar zijn kan ook een unieke WECO met de LWB opgemaakt worden.',
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
