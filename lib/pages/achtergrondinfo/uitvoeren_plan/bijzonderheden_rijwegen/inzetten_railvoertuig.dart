import 'package:trdl_tool/all_imports.dart';

class InzettenRailvoertuigAchtergrond extends StatelessWidget {
  const InzettenRailvoertuigAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(title: 'TRDLtool'),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*CARD #1*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: TitleText(
                              title: 'Inzetten railvoertuig (incl. ICB)',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Inzetten railwegvoertuig',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Voor sommige werkzaamheden is het niet mogelijk om de benodigde materialen via werktreinen bij de buitendienststelling te krijgen. Dan komt het voor dat er railwegvoertuigen in het spoor gezet moeten worden. Dit gebeurt op van tevoren afgesproken rail-inzetplaats, bijvoorbeeld bij een overweg.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Voordat een railwegvoertuig in het spoor gezet mag worden, moet er eerst een WECO met de betrokken LWB afgesloten worden. Het betrokken spoor en, indien noodzakelijk, het nevenspoor, waar het materieel ingezet wordt moeten voor deze activiteit ter beschikking zijn gesteld voordat het materieel in het spoor gezet mag worden. Het nevenspoor wordt buitendienst genomen om gevaarlijke situaties te voorkomen, bv als het voertuig door te manoeuvreren buiten profiel kan komen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Railinzetplaats',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een railinzetplaats is een plek langs de spoorbaan waar voertuigen in- en uit het spoor gezet kunnen worden. Deze plaats bestaat uit een stuk verharding in en nabij het spoor dat vanaf de weg bereikbaar is . Een spoorwegovergang kan bijvoorbeeld prima als railinzetplaats gebruikt worden. Maar er zijn ook speciale railinzetplaatsen gecreëerd langs het spoor, deze staan in de BVS aangegeven.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Railvoertuig Incidentenbestrijding',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een uitzondering op de regeling van de railwegvoertuigen is het railvoertuig Incidentenbestrijding van ProRail. Deze mag bij calamiteiten ook in het spoor gezet worden zonder buitendienststelling.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Bergingsvoertuig ProRail IncidentenBestrijding',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De bergingseenheid is een niet detecterend railwegvoertuig (vrachtwagen) met daarop een afzetcontainer, die door middel van een zogenaamde \'haakarm\' afgezet kan worden. zowel op de weg als op het spoor.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Het inzetten van het voertuig op de spoorinfra wordt uitgevoerd door de gereedschapsmachinist - hij kan de installatie vanuit de cabine zelf bedienen. Het inzetten van het railvoertuig duurt ongeveer een kwartier.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Rijden over spoor kan in beide richtingen: in de afzetcontainer wordt een bedieningsinrichting geplaatst, zodat de gereedschapsmachinist altijd vooruit tijdens het voertuig bedient.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'De bergingseenheid is gebouwd volgens de laatste inzichten op het gebied van arbo-regels. De inrichting is “logisch”  gemaakt, en er is een kleine verblijfsruimte om schrijfwerk en overleg comfortabel te kunnen doen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Bij herstelwerkzaamheden buiten de reddings- en bestrijdingsfase (dit wordt door de Algemeen Leider aangegeven) moeten alle sporen, dwz in-, uitzet-, verplaatsings- en bestemmingsspoor, beschikbaar gesteld zijn. Hiervoor gelden dezelfde procedures als bij werkzaamheden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/bergingsVoertuig2.jpg',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/bergingsVoertuig1.jpg',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Unimog',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Een van de opties om bij gestrande treinen snel te kunnen wegslepen is de Unimog. De eerste zijn gestationeerd op de A2-corridor. De speciaal uitgeruste Mercedes-Benz Unimogs zijn in staat om over het spoor te rijden, gestrande treinen in een uur weg te halen en naar het dichtstbijzijnde station te brengen. Deze auto\'s kunnen gemakkelijk \'off-road\' rijden waarmee ze ook geschikt zijn om over onverharde wegen of weilanden naar het spoor te rijden. Eenmaal op het spoor geplaatst worden er speciale spoorwielen neergelaten waardoor de truck in een railvoertuig verandert.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/unimog1.jpg',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/unimog2.jpg',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #3*/
              Card(
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Wat',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Multifunctioneel niet detecterend voertuig met:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: SubTitleText(
                              subtitle: '- Koppeling aan voor- en achterzijde;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Hoogwerker;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Reinigingsmodule;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Radiobesturing.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Waar',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Inzet op A2 corridor en (eventueel) toeleidende baanvakken;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Strategische plaatsing op Shl, Ut en Ehv en 1 exemplaar voor opleiding/reserve.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Wanneer',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Als extra mogelijkheid om mat af te slepen;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Bij bovenleidingsproblematiek.',
                            ),
                          ),
                        ],
                      ),
                      SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Regelgeving',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Inzet Unimog met alleen verhinderingen TRDL en door plaatsing ZKL, of op WECO;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- AL beslist en overlegt met TRDL over inzet.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/unimog1.jpg',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            height: 200.0,
                            child: Image.asset(
                              'assets/images/achtergrond/unimog2.jpg',
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
