import '/all_imports.dart';

class AIInfraTerBeschikking extends StatelessWidget {
  const AIInfraTerBeschikking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIInfraTerBeschikkingNavigation(),
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
                    title: 'Infracapaciteit ter beschikking stellen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Je bent als TRDL bevoegd tot het tijdig ter beschikking stellen van veilige rijwegen en het treffen van veiligheidsmaatregelen bij storingen en bij werkzaamheden aan of in de nabijheid van hoofdspoorweginfrastructuur.\n\nDe beheerder is verantwoordelijk voor het leiden van het treinverkeer over de hoofdspoorweginfrastructuur. De Spoorwegwet kent hiervoor geen uitzondering ten aanzien van buiten dienst gesteld spoor.\n\nBij het uitvoeren van onderhoud en het gebruik van spoor-/werkvoertuigen is geen sprake van verkeer in de zin van de Spoorwegwet. Spoor-/werkvoertuigen binnen het beschikbaar gestelde gebied zijn mobiele arbeidsmiddelen conform de arbeidsomstandighedenwet. Mobiele arbeidsmiddelen kunnen bewegingen maken binnen het beschikbaar gestelde gebied.\n\nJe draagt geen verantwoordelijkheid over en blijft verantwoordelijk voor het leiden van het treinverkeer.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Creëren van een veilige werkplek',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Binnen het spoorwegsysteem worden verschillende soorten activiteiten uitgevoerd. Er is een verschil in het werken aan de infra, werken aan materieel, werken bij een incident, inspecties, etc. Voor alle activiteiten moet een veilige werkplek worden gecreëerd.\n\nAls je een rol hebt bij het creëren van een veilige werkplek verloopt het proces als volgt:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Je stelt op verzoek de - voor veilig werken benodigde - railinfra(capaciteit) beschikbaar voor werkzaamheden (1e schil);\n\n- Je geeft - in onderlinge afstemming - een partij toestemming om werkzaamheden (aan de railinfra, aan materieel of afhandeling incident) uit te voeren;\n\n- Het werk moet beveiligd worden. De werkplekbeveiliging wordt aangebracht door de onderneming (of instantie) die het werk uitvoert (2e schil).',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'N.B.: De werkplekbeveiliging is anders voor werk aan de railinfra en voor werk aan materieel. Werkplekbeveiliging bij een calamiteit verandert tijdens de duur van de calamiteit.\n\nJe stelt railinfra beschikbaar en plaatst verhinderingen om te voorkomen dat onbedoeld een rijweg richting de werkplek kan worden ingesteld. Soorten verhinderingen zijn:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- VHB, verhindering bediening;\n\n- VHR, verhindering rijweginstelling;\n\n- VHR-E, verhindering rijweginstelling met extra bediening.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/weco.png',
                  ),
                  SizedBoxH(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIInfraTerBeschikkingNavigation extends StatelessWidget {
  const AIInfraTerBeschikkingNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_ongepland_werk_infra) {
          await Navigator.pushNamed(context, 'ww_ongepland_werk_infra');
        } else if (result == PopupNavigation.ai_ongepland_werk_main) {
          await Navigator.pushNamed(context, 'ai_ongepland_werk_main');
        } else if (result == PopupNavigation.ai_ongepland_werk_materieel) {
          await Navigator.pushNamed(
            context,
            'ai_ongepland_werk_materieel',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_ongepland_werk_infra,
          child: MenuItemContent(
            icon: Utils.iconWW,
            text: 'WW Ongepland Werk',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_ongepland_werk_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Ongepland Werk',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_ongepland_werk_materieel,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Ongepland Werk - Materieel',
          ),
        ),
      ],
    );
  }
}