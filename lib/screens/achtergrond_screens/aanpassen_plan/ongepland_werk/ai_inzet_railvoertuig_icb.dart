import '/all_imports.dart';

class AIInzetRailvoertuigICB extends StatelessWidget {
  const AIInzetRailvoertuigICB({Key? key}) : super(key: key);

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
                    title: 'Inzet Railvoertuig ICB',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Inzetten railwegvoertuig',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor sommige werkzaamheden is het niet mogelijk om de benodigde materialen via werktreinen bij de buitendienststelling te krijgen. Dan komt het voor dat er railwegvoertuigen in het spoor gezet moeten worden. Dit gebeurt op van tevoren afgesproken rail-inzetplaats, bijvoorbeeld bij een overweg.\n\nVoordat een railwegvoertuig in het spoor gezet mag worden, moet er eerst een WECO met de betrokken LWB afgesloten worden. Het betrokken spoor en, indien noodzakelijk, het nevenspoor, waar het materieel ingezet wordt moeten voor deze activiteit ter beschikking zijn gesteld voordat het materieel in het spoor gezet mag worden. Het nevenspoor wordt buitendienst genomen om gevaarlijke situaties te voorkomen, bv als het voertuig door te manoeuvreren buiten profiel kan komen.',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Railinzetplaats',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een railinzetplaats is een plek langs de spoorbaan waar voertuigen in- en uit het spoor gezet kunnen worden. Deze plaats bestaat uit een stuk verharding in en nabij het spoor dat vanaf de weg bereikbaar is. Een spoorwegovergang kan bijvoorbeeld prima als railinzetplaats gebruikt worden. Maar er zijn ook speciale railinzetplaatsen gecreëerd langs het spoor, deze staan in de BVS aangegeven.',
                  ),
                ],
              ),
              TextCard(
                widgetList: [
                  SubTitleText(
                    subtitle: 'Railvoertuig Incidentenbestrijding',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een uitzondering op de regeling van de railwegvoertuigen is het railvoertuig Incidentenbestrijding van ProRail. Deze mag bij calamiteiten ook in het spoor gezet worden zonder buitendienststelling',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Bergingsvoertuig ProRail Incidentenbestrijding',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De bergingseenheid is een niet detecterend railwegvoertuig (vrachtwagen) met daarop een afzetcontainer, die door middel van een zogenaamde \'haakarm\' afgezet kan worden, zowel op de weg als op het spoor.\nHet inzetten van het voertuig op de spoorinfra wordt uitgevoerd door de gereedschapsmachinist - hij kan de installatie vanuit de cabine zelf bedienen. Het inzetten van het railvoertuig duurt ongeveer een kwartier.\n\nRijden over spoor kan in beide richtingen: in de afzetcontainer wordt een bedieningsinrichting geplaatst, zodat de gereedschapsmachinist altijd vooruit tijdens het voertuig bedient.\nDe bergingseenheid is gebouwd volgens de laatste inzichten op het gebied van arbo-regels. De inrichting is \' logisch\' gemaakt, en er is een kleine verblijfsruimte om schrijfwerk en overleg comfortabel te kunnen doen.\n\nBij herstelwerkzaamheden buiten de reddings- en bestrijdingsfase (dit wordt door de Algemeen Leider aangegeven) moeten alle sporen, d.w.z. in-, uitzet-, verplaatsings- en bestemmingsspoor, beschikbaar gesteld zijn. Hiervoor gelden dezelfde procedures als bij werkzaamheden.',
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

class AIInzetRailvoertuigICBNavigation extends StatelessWidget {
  const AIInzetRailvoertuigICBNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_inzet_railvoertuig_icb) {
          await Navigator.pushNamed(
            context,
            'ww_inzet_railvoertuig_icb',
          );
        } else if (result == PopupNavigation.ai_bijzonderheden_rijwegen_main) {
          await Navigator.pushNamed(context, 'ai_bijzonderheden_rijwegen_main');
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
          value: PopupNavigation.ww_inzet_railvoertuig_icb,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Inzet Railvoertuig (ICB)',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_bijzonderheden_rijwegen_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Bijzonderheden Rijwegen',
          ),
        ),
      ],
    );
  }
}