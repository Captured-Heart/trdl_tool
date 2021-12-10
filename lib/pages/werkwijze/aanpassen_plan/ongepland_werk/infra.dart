import 'package:trdl_tool/all_imports.dart';

class InfraOngeplandWerk extends StatelessWidget {
  const InfraOngeplandWerk({Key? key}) : super(key: key);

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
                        title: 'Infra (ongepland werk)',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: Strings.procedure,
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Ongeplande werkzaamheden aan de railinfrastructuur met WBI/WECO:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Met (maatwerk)storings WBI/WECO.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Ongeplande werkzaamheden aan de railinfrastructuur zonder WBI/WECO:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Je werkt op RVO nummer en handelt als volgt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Vraag welke infra betrokken is en hoe lang de werkzaamheden gaan duren;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- De DVL beslist bij werkzaamheden op de vrije baan over het aanvangstijdstip;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Overleg met de LWB over:',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Niveau van de werkplekbeveiliging;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Veiligheidsmaatregelen LWB;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Veiligheidsmaatregelen treindienstleider;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Exacte aanduiding werkplek;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Maak met de LWB een WECO op.',
                      ),
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
                        text: 'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
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
                        text: 'Voor het oplossen van (dreigende) storingen en/of calamiteiten kan het nodig zijn ongepland infracapaciteit beschikbaar te stellen voor werkzaamheden. Om deze werkzaamheden te beveiligen kan gebruik worden gemaakt van vooraf voorbereide storingsWBI’s of maatwerkWBI’s. Wanneer beide mogelijkheden niet beschikbaar zijn kan ook een unieke WECO met de LWB opgemaakt worden.',
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
