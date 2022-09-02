import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromWWOngeplandWerkInfra {
  home_screen,
  ai_ongepland_werk_infra,
  ai_infra_ter_beschikking,
}

class WWOngeplandWerkInfra extends StatelessWidget {
  const WWOngeplandWerkInfra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Werkwijze',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromWWOngeplandWerkInfra>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromWWOngeplandWerkInfra result) {
              if (result == WhereToGoFromWWOngeplandWerkInfra.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromWWOngeplandWerkInfra.ai_ongepland_werk_infra) {
                Navigator.pushNamed(context, 'ai_ongepland_werk_infra');
              } else if (result ==
                  WhereToGoFromWWOngeplandWerkInfra.ai_infra_ter_beschikking) {
                Navigator.pushNamed(context, 'ai_infra_ter_beschikking');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromWWOngeplandWerkInfra>>[
              const PopupMenuItem<WhereToGoFromWWOngeplandWerkInfra>(
                value: WhereToGoFromWWOngeplandWerkInfra.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWOngeplandWerkInfra>(
                value:
                    WhereToGoFromWWOngeplandWerkInfra.ai_ongepland_werk_infra,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Ongepland Werk (Infra)',
                ),
              ),
              const PopupMenuItem<WhereToGoFromWWOngeplandWerkInfra>(
                value:
                    WhereToGoFromWWOngeplandWerkInfra.ai_infra_ter_beschikking,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'Infra ter beschikking stellen',
                ),
              ),
            ],
          ),
          const HomeButton(),
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
                          '* Niveau van de werkplekbeveiliging;\n\n* Veiligheidsmaatregelen LWB;\n\n* Veiligheidsmaatregelen treindienstleider;\n\n* Exacte aanduiding werkplek.',
                    ),
                    BodyText(
                      indents: 1,
                      text: '- Maak met de LWB een WECO op.',
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
