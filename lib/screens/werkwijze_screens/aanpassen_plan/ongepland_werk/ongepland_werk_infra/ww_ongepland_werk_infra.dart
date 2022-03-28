import 'package:trdl_tool/all_imports.dart';

class WWOngeplandWerkInfra extends StatelessWidget {
  const WWOngeplandWerkInfra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Infra (ongepland werk)',
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
                      title: 'Infra (ongepland werk)',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: Strings.procedure,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Ongeplande werkzaamheden aan de railinfrastructuur met WBI/WECO:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: '- Met (maatwerk)storings WBI/WECO.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Ongeplande werkzaamheden aan de railinfrastructuur zonder WBI/WECO:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Je werkt op RVO nummer en handelt als volgt:\n\n- Vraag welke infra betrokken is en hoe lang de werkzaamheden gaan duren;\n\n- De DVL beslist bij werkzaamheden op de vrije baan over het aanvangstijdstip;\n\n- Overleg met de LWB over:',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '* Niveau van de werkplekbeveiliging;\n\n* Veiligheidsmaatregelen LWB;\n\n* Veiligheidsmaatregelen treindienstleider;\n\n* Exacte aanduiding werkplek;\n\n* Maak met de LWB een WECO op.',
                    ),
                  ],
                ),
              ),
            ),
            /*RISICO CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SubTitleText(
                      subtitle: Strings.risico,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
                    ),
                  ],
                ),
              ),
            ),
            /*CONTEXT CARD*/
            Card(
              elevation: kCardElevation,
              child: Padding(
                padding: kCardPadding,
                child: Column(
                  children: const [
                    SubTitleText(
                      subtitle: Strings.context,
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Voor het oplossen van (dreigende) storingen en/of calamiteiten kan het nodig zijn ongepland infracapaciteit beschikbaar te stellen voor werkzaamheden. Om deze werkzaamheden te beveiligen kan gebruik worden gemaakt van vooraf voorbereide storingsWBI\'s of maatwerkWBI\'s. Wanneer beide mogelijkheden niet beschikbaar zijn kan ook een unieke WECO met de LWB opgemaakt worden.',
                    ),
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
