import 'package:trdl_tool/core/all_imports.dart';

class AIInzettenRailvoertuig extends StatelessWidget {
  const AIInzettenRailvoertuig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Inzetten ICB',
        ),
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
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Inzetten railvoertuig (incl. ICB)',
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
                            'Een railinzetplaats is een plek langs de spoorbaan waar voertuigen in- en uit het spoor gezet kunnen worden. Deze plaats bestaat uit een stuk verharding in en nabij het spoor dat vanaf de weg bereikbaar is . Een spoorwegovergang kan bijvoorbeeld prima als railinzetplaats gebruikt worden. Maar er zijn ook speciale railinzetplaatsen gecreëerd langs het spoor, deze staan in de BVS aangegeven.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Railvoertuig Incidentenbestrijding',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een uitzondering op de regeling van de railwegvoertuigen is het railvoertuig Incidentenbestrijding van ProRail. Deze mag bij calamiteiten ook in het spoor gezet worden zonder buitendienststelling.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle:
                            'Bergingsvoertuig ProRail IncidentenBestrijding',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De bergingseenheid is een niet detecterend railwegvoertuig (vrachtwagen) met daarop een afzetcontainer, die door middel van een zogenaamde \'haakarm\' afgezet kan worden. zowel op de weg als op het spoor.\n\nHet inzetten van het voertuig op de spoorinfra wordt uitgevoerd door de gereedschapsmachinist - hij kan de installatie vanuit de cabine zelf bedienen. Het inzetten van het railvoertuig duurt ongeveer een kwartier.\n\nRijden over spoor kan in beide richtingen: in de afzetcontainer wordt een bedieningsinrichting geplaatst, zodat de gereedschapsmachinist altijd vooruit tijdens het voertuig bedient.\n\nDe bergingseenheid is gebouwd volgens de laatste inzichten op het gebied van arbo-regels. De inrichting is “logisch”  gemaakt, en er is een kleine verblijfsruimte om schrijfwerk en overleg comfortabel te kunnen doen.\n\nBij herstelwerkzaamheden buiten de reddings- en bestrijdingsfase (dit wordt door de Algemeen Leider aangegeven) moeten alle sporen, dwz in-, uitzet-, verplaatsings- en bestemmingsspoor, beschikbaar gesteld zijn. Hiervoor gelden dezelfde procedures als bij werkzaamheden.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/inzetten_railvoertuig/bergingsVoertuig2.jpg',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/inzetten_railvoertuig/bergingsVoertuig1.jpg',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Unimog',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een van de opties om bij gestrande treinen snel te kunnen wegslepen is de Unimog. De eerste zijn gestationeerd op de A2-corridor. De speciaal uitgeruste Mercedes-Benz Unimogs zijn in staat om over het spoor te rijden, gestrande treinen in een uur weg te halen en naar het dichtstbijzijnde station te brengen. Deze auto\'s kunnen gemakkelijk \'off-road\' rijden waarmee ze ook geschikt zijn om over onverharde wegen of weilanden naar het spoor te rijden. Eenmaal op het spoor geplaatst worden er speciale spoorwielen neergelaten waardoor de truck in een railvoertuig verandert.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/inzetten_railvoertuig/unimog1.jpg',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/inzetten_railvoertuig/unimog2.jpg',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #3*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Wat',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Multifunctioneel niet detecterend voertuig met:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Koppeling aan voor- en achterzijde;\n\n- Hoogwerker;\n\n- Reinigingsmodule;\n\n- Radiobesturing.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Waar',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Inzet op A2 corridor en (eventueel) toeleidende baanvakken;\n\n- Strategische plaatsing op Shl, Ut en Ehv en 1 exemplaar voor opleiding/reserve.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Wanneer',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Als extra mogelijkheid om mat af te slepen;\n\n- Bij bovenleidingsproblematiek.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Regelgeving',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Inzet Unimog met alleen verhinderingen TRDL en door plaatsing ZKL, of op WECO;\n\n- AL beslist en overlegt met TRDL over inzet.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #4*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Langstransport',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een ander reddingsvoertuig dat gebruikt wordt op de Hogesnelheidslijn (HSL) is het zogenoemde secundair langstransport. In gewone mensentaal: een quadbike op spoorwielen met daarachter een aantal verrijdbare platformen.\n\nDe quadbike wordt gebruikt als redmiddel als zich een ernstig ongeluk voordoet in de Groeneharttunnel, op het tracé van de HSL tussen Rotterdam en Amsterdam. Op het verste punt staat de trein op 26 meter diepte en drie kilometer van de dichtstbijzijnde nooduitgang. Als er dan gewonden zijn, komen de incidentbestrijders met een vrachtwagen waarin twee quads met ieder twee karretjes staan. Gewonde reizigers worden op de quads en de karretjes in veiligheid gebracht. Per karretje kunnen maximaal twee gewonden en een begeleider mee en op de quad passen nog eens drie mensen (inclusief bestuurder en begeleider). Dat betekent dat er per rit vijf gewonden naar de nooduitgang gebracht kunnen worden.\n\nOverigens kunnen de quads ook elders worden ingezet. Denk bijvoorbeeld aan de Moerdijkbrug.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/inzetten_railvoertuig/langsTransport.jpg',
                      ),
                      SizedBoxH(),
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