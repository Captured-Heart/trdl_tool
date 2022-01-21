import 'package:trdl_tool/core/all_imports.dart';

class OngeplandWerkMaterieelAchtergrond extends StatelessWidget {
  const OngeplandWerkMaterieelAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Ongepland werk materieel',
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
                        title: 'Ongepland werk aan materieel',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/aanpassen_plan/ongepland_werk/ongepland_werk_materieel_stroomschema.png',
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
                        subtitle: 'Storing aan het materieel',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Veiligheidsstoringen aan het materieel zijn storingen die de veiligheid in gevaar kunnen brengen van:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Personen;',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- Materieel;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Omgeving;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Spoorwegveiligheid.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij een veiligheidsstoring aan het materieel zal een machinist eerst proberen om het gevaar te beheersen. Denk hierbij aan een defecte treeplank.  Als de treeplank doormidden is gebroken, kan gevaar ontstaan bij het in- en uitstappen. De machinist zal in zo’n geval de deur afsluiten, stickers ‘defect’ op de deur plakken en dit doorgeven aan het MBN (Materieel Besturingscentrum NS Materieel) en aan jou. In dat geval kan de trein verder rijden en zal deze later hersteld worden.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Er zijn echter ook veiligheidsstoringen aan het materieel die een machinist niet zelf kan oplossen. Ook dan heeft hij contact met het MBN. Een voorbeeld is dat een machinist in de cabine de melding “deuren dicht” krijgt, maar dat de deuren van de trein wel open staan. Als hij dit niet kan oplossen en het MBN kan de storing op afstand ook niet verhelpen, dan mag de trein niet vertrekken. Een machinist zal veiligheidsstoringen aan het materieel melden aan zijn eigen organisatie en aan jou. Je neemt die informatie ter kennisgeving aan.',
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
                        subtitle: 'Herstel',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Het herstellen van materieel na een storing moet op een veilige plaats gebeuren. Dit kan in een werkplaats zijn of op een spoor wat minder intensief gebruikt wordt, maar incidenteel ook vlak voor vertrek op het vertrekspoor.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Indien herstel in een werkplaats gebeurd heb je hier weinig last van en hoef je geen extra maatregelen te nemen. Deze werkplaatsen komen op diverse locaties in het land voor.',
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
                        subtitle: 'Storingsmonteur',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer een machinist van NSR problemen ondervindt met zijn trein meldt hij het defect aan het MBN (Materieel Besturingscentrum NS Materieel). Het MBN schakelt de storingsmonteur van NS Materieel in, deze zal bij de eerste gelegenheid het defect herstellen. Niet alle vervoerders werken samen met NS Materieel, zij hebben een soort wegenwachtservice om storingen te verhelpen.',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Als er tijdens de dienst herstelwerkzaamheden aan de trein uitgevoerd moeten worden is het jouw taak het treinverkeer hier zo min mogelijk hinder van te laten ondervinden en ervoor te zorgen dat de veiligheid van het treinverkeer gehandhaafd blijft. Kleine defecten worden dan door een storingsmonteur hersteld. Denk hierbij aan vaste remmen, deuren die niet sluiten of lampen die vervangen moeten worden.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Door jouw veiligheidsmaatregelen en die van de storingsmonteur is een veilige werkplek dubbel gewaarborgd.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Risico’s die je uitsluit zijn bijvoorbeeld:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Een veilig sein naar een spoor waar aan materieel gewerkt wordt;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Aanrijdgevaar op het nevenspoor.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer een storingsmonteur gaat werken aan een trein is hij ook de enige die jou informeert dat hij gereed is en dat de trein weer kan vertrekken.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Een storingsmonteur heeft een mobiele telefoon, een portofoon en een tablet tot zijn beschikking.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Een storingsmonteur verricht de volgende werkzaamheden aan materieel van verschillende vervoerders:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Controle aan de hand van een werkbeschrijving per materieel serie;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Herstellingen aan materieel.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- De exacte aanduiding van de werkplek.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Een storingsmonteur (STMT) werkt op een werkplaats samen met een werkvoorbereider NS Materieel,  meewerkend teamleider NS Materieel en de controle monteur NS Materieel. De werkvoorbereider NS Materieel geeft mondeling of per tablet werkopdrachten aan de storingsmonteur De werkopdracht geeft aan welk materieel, welk spoor en de tijd waarop het herstel moet plaatsvinden. De meewerkend teamleider ondersteunt de STMT met middelen en kennis.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De STMT hanteert de gespreksdiscipline en houdt zich aan de gestelde gespreksregels en berichtenstructuur.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer een storingsmonteur werkzaamheden aan een trein moet verrichten neemt hij contact op met je. Je neemt veiligheidsmaatregelen en stelt de gevraagde railinfracapaciteit beschikbaar. Op verzoek van de storingsmonteur doe je dit ook voor het nevenspoor. De storingsmonteur zal zelf ook maatregelen nemen, afhankelijk van de controle of herstelling aan het materieel. Hij kan ook een en rode vlag of rode lantaarn plaatsen. Dit doet hij om te voorkomen dat het materieel waaraan gewerkt wordt, verplaatst wordt.',
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
