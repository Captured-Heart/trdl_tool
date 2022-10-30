import '/all_imports.dart';

enum WhereToGoFromWWOngeplandWerkInfra {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_ongepland_werk_infra,
  // ignore: constant_identifier_names
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
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWOngeplandWerkInfraNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const <TextCard>[
              TextCard(
                widgetList: <Widget>[
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
              TextCard(
                widgetList: <Widget>[
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
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Strings.context,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Voor het oplossen van (dreigende) storingen en/of calamiteiten kan het nodig zijn ongepland infracapaciteit beschikbaar te stellen voor werkzaamheden. Om deze werkzaamheden te beveiligen kan gebruik worden gemaakt van vooraf voorbereide storingsWBI's of maatwerkWBI's. Wanneer beide mogelijkheden niet beschikbaar zijn kan ook een unieke WECO met de LWB opgemaakt worden.",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WWOngeplandWerkInfraNavigation extends StatelessWidget {
  const WWOngeplandWerkInfraNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWOngeplandWerkInfra>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWOngeplandWerkInfra result) async {
        if (result == WhereToGoFromWWOngeplandWerkInfra.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromWWOngeplandWerkInfra.ai_ongepland_werk_infra) {
          await Navigator.pushNamed(context, 'ai_ongepland_werk_infra');
        } else if (result ==
            WhereToGoFromWWOngeplandWerkInfra.ai_infra_ter_beschikking) {
          await Navigator.pushNamed(context, 'ai_infra_ter_beschikking');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWOngeplandWerkInfra>>[
        const PopupMenuItem<WhereToGoFromWWOngeplandWerkInfra>(
          value: WhereToGoFromWWOngeplandWerkInfra.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWOngeplandWerkInfra>(
          value: WhereToGoFromWWOngeplandWerkInfra.ai_ongepland_werk_infra,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Ongepland Werk (Infra)',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWOngeplandWerkInfra>(
          value: WhereToGoFromWWOngeplandWerkInfra.ai_infra_ter_beschikking,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'Infra ter beschikking stellen',
          ),
        ),
      ],
    );
  }
}
