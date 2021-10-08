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
              //Procedure Card
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: TitleText(
                              title: 'Infra (ongepland werk)',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Procedure',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Ongeplande werkzaamheden aan de railinfrastructuur met WBI/WECO:',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Met (maatwerk)storings WBI/WECO.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Ongeplande werkzaamheden aan de railinfrastructuur zonder WBI/WECO:',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Je werkt op RVO nummer en handelt als volgt:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Vraag welke infra betrokken is en hoelang de werkzaamheden gaan duren;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- De DVL beslist bij werkzaamheden op de vrije baan over het aanvangstijdstip;',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Overleg met de LWB over:',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Niveau van de werkplekbeveiliging;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Veiligheidsmaatregelen LWB;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Veiligheidsmaatregelen treindienstleider;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Exacte aanduiding werkplek.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Maak met de LWB een WECO op.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Risico Card
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SubTitleText(subtitle: 'Risico\'s'),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //Context Card
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Context',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: [
                          Expanded(
                            child: BodyText(
                              text: 'Voor het oplossen van (dreigende) storingen en/of calamiteiten kan het nodig zijn ongepland infracapaciteit beschikbaar te stellen voor werkzaamheden. Om deze werkzaamheden te beveiligen kan gebruik worden gemaakt van vooraf voorbereide storingsWBI’s of maatwerkWBI’s. Wanneer beide mogelijkheden niet beschikbaar zijn kan ook een unieke WECO met de LWB opgemaakt worden.',
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
