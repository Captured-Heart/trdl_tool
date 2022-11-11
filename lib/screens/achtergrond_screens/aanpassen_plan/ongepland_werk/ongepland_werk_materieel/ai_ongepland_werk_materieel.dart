import '/all_imports.dart';

class AIOngeplandWerkMaterieel extends StatelessWidget {
  const AIOngeplandWerkMaterieel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIOngeplandWerkMaterieelNavigation(),
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
                    title: 'Ongepland werk aan materieel',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/ongepland_werk_materieel_stroomschema.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Storing aan het materieel',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Veiligheidsstoringen aan het materieel zijn storingen die de veiligheid in gevaar kunnen brengen van:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Personen;\n- Materieel;\n- Omgeving;\n- Spoorwegveiligheid.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Bij een veiligheidsstoring aan het materieel zal een MCN eerst proberen om het gevaar te beheersen. Denk hierbij aan een defecte treeplank. Als de treeplank doormidden is gebroken, kan gevaar ontstaan bij het in- en uitstappen. De MCN zal in zo'n geval de deur afsluiten, stickers 'defect' op de deur plakken en dit doorgeven aan het MBN (Materieel Besturingscentrum NS Materieel) en aan jou. In dat geval kan de trein verder rijden en zal deze later hersteld worden.\n\nEr zijn echter ook veiligheidsstoringen aan het materieel die een MCN niet zelf kan oplossen. Ook dan heeft hij contact met het MBN. Een voorbeeld is dat een MCN in de cabine de melding 'deuren dicht' krijgt, maar dat de deuren van de trein wel open staan. Als hij dit niet kan oplossen en het MBN kan de storing op afstand ook niet verhelpen, dan mag de trein niet vertrekken. Een MCN zal veiligheidsstoringen aan het materieel melden aan zijn eigen organisatie en aan jou. Je neemt die informatie ter kennisgeving aan.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Herstel',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het herstellen van materieel na een storing moet op een veilige plaats gebeuren. Dit kan in een werkplaats zijn of op een spoor wat minder intensief gebruikt wordt, maar incidenteel ook vlak voor vertrek op het vertrekspoor.\n\nIndien herstel in een werkplaats gebeurd heb je hier weinig last van en hoef je geen extra maatregelen te nemen. Deze werkplaatsen komen op diverse locaties in het land voor.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Storingsmonteur (STMT)',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Wanneer een MCN van NSR problemen ondervindt met zijn trein meldt hij het defect aan het MBN (Materieel Besturingscentrum NS Materieel). Het MBN schakelt de STMT van NS Materieel in, deze zal bij de eerste gelegenheid het defect herstellen. Niet alle vervoerders werken samen met NS Materieel, zij hebben een soort wegenwachtservice om storingen te verhelpen.\n\nAls er tijdens de dienst herstelwerkzaamheden aan de trein uitgevoerd moeten worden is het jouw taak het treinverkeer hier zo min mogelijk hinder van te laten ondervinden en ervoor te zorgen dat de veiligheid van het treinverkeer gehandhaafd blijft. Kleine defecten worden dan door een STMT hersteld. Denk hierbij aan vaste remmen, deuren die niet sluiten of lampen die vervangen moeten worden.\n\nDoor jouw veiligheidsmaatregelen en die van de STMT is een veilige werkplek dubbel gewaarborgd.\n\nRisico's die je uitsluit zijn bijvoorbeeld:",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Een veilig sein naar een spoor waar aan materieel gewerkt wordt;\n- Aanrijdgevaar op het spoor waarop de werkzaamheden moeten plaatsvinden;\n- Aanrijdgevaar op het nevenspoor.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Wanneer een STMT gaat werken aan een trein is hij ook de enige die jou informeert dat hij gereed is en dat de trein weer kan vertrekken.\n\nEen STMT heeft een mobiele telefoon, een portofoon en een tablet tot zijn beschikking.\n\nEen STMT verricht de volgende werkzaamheden aan materieel van verschillende vervoerders:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Controle aan de hand van een werkbeschrijving per materieel serie;\n- Herstellingen aan materieel.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een STMT werkt op een werkplaats samen met een werkvoorbereider NS Materieel, meewerkend teamleider NS Materieel en de controle monteur NS Materieel. De werkvoorbereider NS Materieel geeft mondeling of per tablet werkopdrachten aan de STMT. De werkopdracht geeft aan welk materieel, welk spoor en de tijd waarop het herstel moet plaatsvinden. De meewerkend teamleider ondersteunt de STMT met middelen en kennis.\n\nDe STMT hanteert de gespreksdiscipline en houdt zich aan de gestelde gespreksregels en berichtenstructuur.\n\nWanneer een STMT werkzaamheden aan een trein moet verrichten neemt hij contact op met je. Je neemt veiligheidsmaatregelen en stelt de gevraagde railinfracapaciteit beschikbaar. Op verzoek van de STMT doe je dit ook voor het nevenspoor. De STMT zal zelf ook maatregelen nemen, afhankelijk van de controle of herstelling aan het materieel. Hij kan ook een en rode vlag of rode lantaarn plaatsen. Dit doet hij om te voorkomen dat het materieel waaraan gewerkt wordt, verplaatst wordt.',
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

class AIOngeplandWerkMaterieelNavigation extends StatelessWidget {
  const AIOngeplandWerkMaterieelNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_ongepland_werk_materieel) {
          await Navigator.pushNamed(
            context,
            'ww_ongepland_werk_materieel',
          );
        } else if (result == PopupNavigation.ai_infra_ter_beschikking) {
          await Navigator.pushNamed(context, 'ai_infra_ter_beschikking');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_ongepland_werk_materieel,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Ongepland Werk - Materieel',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_infra_ter_beschikking,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Infra ter beschikking stellen',
          ),
        ),
      ],
    );
  }
}
