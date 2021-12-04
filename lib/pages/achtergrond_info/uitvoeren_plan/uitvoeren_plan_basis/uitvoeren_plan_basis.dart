import 'package:trdl_tool/all_imports.dart';

class UitvoerenPlanBasisAchtergrond extends StatelessWidget {
  const UitvoerenPlanBasisAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
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
              //DIENSTREGELING CARD
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
                              title: 'Uitvoeren plan - basisinformatie',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Dienstregeling',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Reizigersvervoerders, goederenvervoerders, aannemers, besloten personenvervoer, stoomtreinmaatschappijen. Zo’n 50 partijen maken gebruik van het Nederlandse spoor. Het is kortom druk op het spoor. Vervoerders vragen elk jaar ruimte aan op het spoor. ProRail verdeelt vervolgens de capaciteit efficiënt en onafhankelijk, volgens wettelijke spelregels.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Ruimte verdelen gaat in 7 stappen:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '1. Basisuurpatroon opzetten',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'ProRail en vervoerders stellen samen het ‘basisuurpatroon’ op. Daarin leggen we vast hoeveel bijzonderheden_trein er per uur kunnen rijden op een bepaald traject en in welke frequentie. In deze fase worden de grootste knelpunten vast geïnventariseerd;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '2. Capaciteitsaanvragen indienen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Vervoerders vragen de capaciteit aan die ze nodig hebben. Ze laten weten wanneer ze op het spoor willen rijden, waar en met welke trein. Daarbij wordt het basisuurpatroon als basis gebruikt. Capaciteit aanvragen kan tot de 2e maandag in april. Daarna wordt beoordeeld of de aanvragen aan alle voorwaarden voldoen. Is dat niet het geval? Dan kan de vervoerder zijn aanvraag nog herzien;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '3. Conflicten oplossen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Willen twee partijen het spoor tegelijk gebruiken? Dan probeert men met kleine aanpassingen toch in ieders behoefte te voorzien. In meer dan 80% van de gevallen lukt dat ook. Komt men er niet uit? Dan gaat men, samen met de vervoerder aan tafel. Komt men er dan nog niet uit, gaat de zaak naar de Geschillencommissie;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '4. Conceptverdeling opstellen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Men stelt een conceptverdeling op, die bekend wordt gemaakt op de1e maandag in juli. Deze conceptverdeling is een eerste detailontwerp met per vervoerder wanneer hij kan rijden en met welke trein. En ook: wanneer een stuk spoor niet beschikbaar is, bijvoorbeeld vanwege onderhoud of nieuwbouw;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '5. Reacties op de conceptverdeling',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Vervoerders kunnen reageren op de conceptverdeling;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '6. De definitieve verdeling vaststellen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Op de 3e maandag is augustus wordt de definitieve verdeling vast gelegd en is het “spoorboekje” voor het komende jaar klaar;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '7. Start van de nieuwe dienstregeling',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  'Begin december gaan de bijzonderheden_trein rijden volgens de nieuwe dienstregeling.',
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
                            height: 400.0,
                            child: Image.asset(
                              'assets/images/achtergrond_info/uitvoeren_plan/spoorKaart2020.jpg',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //PLANMATIG WERKEN CARD
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
                              subtitle: 'Planmatig werken',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'De beschikbare infracapaciteit wordt planmatig toegewezen aan de verschillende infragebruikers. Het plan is zodanig ingericht dat er voldoende ruimte blijft voor bijsturing en extra capaciteitsaanvragen. Het plan is opgebouwd uit o.a. treinpaden, rangeerbewegingen, brugopeningen, WBI’s, tijd/ruimte-slots en is gebaseerd op de overeengekomen planmatige verdeling van de infra.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Aanpassingen',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Indien tijdens de uitvoering van het plan een incident optreedt, is het nodig om het plan aan te passen. Hierbij wordt zoveel mogelijk gebruik gemaakt van vooraf afgesproken scenario’s en afhandelingen. Ook kan het plan aangepast worden wanneer extra infracapaciteit gevraagd wordt. Deze aanvragen worden gepland middels orderacceptatie.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Wanneer het plan moet worden aangepast zal dat zoveel mogelijk gebeuren conform vooraf gemaakte afspraken met de infragebruikers (Operationele Voorwaarden uitgewerkt in afhandelingsafspraken). Zie ook: Aanpassen plan - basisinformatie.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Planaanpassing bij incidenten',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Bij een incident, dat leidt tot onmiddellijk gevaar voor mens, dier of milieu, is het toegestaan om het plan aan te passen zonder toepassing van de Operationele Voorwaarden. Sporen worden buitendienst genomen of onttrokken aan het operationele proces. Dit mag ook bij storingen aan de infra. De bedoeling is wel om zo snel mogelijk weer over te gaan tot uitvoering van het (aangepaste) plan.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Communicatie',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Het originele plan en de wijzigingen in dit plan worden altijd aan de belanghebbenden gecommuniceerd.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //WERKPLEKINFORMATIE CARD
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
                              subtitle:
                                  'Werkplekinformatie - Bedienvoorschriften (BVS) en bovenleiding schema\'s',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Voor ieder bediengebied van de treindienstleider zijn er bedieningsvoorschriften (BVS) aanwezig. Deze zijn digitaal aanwezig bij de betreffende werkplek waarvoor ze bestemd zijn. In de bedieningsvoorschriften worden de bijzonderheden van jouw bediengebied beschreven.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Onderdelen:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- BVS algemeen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Bijzonderheden pplg\'s;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Tekeningen seinzaal, werkplekken, signaleringsbeelden;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Baanvak en emplacementstekeningen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- OS-bladen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Een apart onderdeel zijn de bovenleiding schema’s. Meer info vind je bij Bovenleiding - Basisinformatie.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'BVS algemeen',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'In dit gedeelte vind je algemene gegevens zoals algemene en plaatsnaam verkortingen en gegevens betreffende de vrije baan.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Bijzonderheden pplg\'s',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'In dit gedeelte vind je alle bijzonderheden van het pplg. De opbouw van alle BVS ‘en is gelijk. In eerste instantie is het lastig lezen, maar als je eenmaal doorhebt wat er staat, zal je alle BVS ‘en goed kunnen lezen. Je vindt hier onder andere gegevens over:',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Seinbediening;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Vertrekseinlichten;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Treinaankondiging;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Fictieve eindseinnummers;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- \'STOP\'/\'DOOR\'-criterium vrije baan;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text:
                                  '- Vertraagd uit de stand \'STOP\' komende seinen;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Overwegen/waarschuwingsinstallaties;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: BodyText(
                              text: '- Herroepen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Tekeningen signaleringsbeelden',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'In dit onderdeel vind je tekeningen van de overzicht signaleringsbeelden van de werkplekken.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Baanvak en emplacementstekeningen',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Waarschijnlijk is dit het onderdeel van de BVS wat je als treindienstleider het meest zal gebruiken. Je vindt hier de tekeningen van jouw bediengebied (pplg\'s en vrije banen). De gebruikte symbolen op de BVS-tekening kun je vinden in de B-voorschriften Deel I.',
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
                              'assets/images/achtergrond_info/uitvoeren_plan/bvsTekening.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'OS-bladen (overzicht seinen)',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Op de OS-bladen vind je het overzicht van alle seinen in jouw bediengebied. Deze tekeningen worden ook wel seinbeeldenkaarten genoemd. Je kunt hier onder andere informatie vinden over de seinbeelden bij een bepaalde rijweginstelling en de afstanden tussen twee seinen.',
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
                              'assets/images/achtergrond_info/uitvoeren_plan/osBlad.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Bovenleiding schema\'s',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Op dit moment zijn bovenleidingschema\'s nog niet op alle posten digitaal beschikbaar. Op deze tekeningen vind je onder andere de verschillende bovenleidingsgroepen, welke elektrische scheidingen gebruikt worden en waar onder- en schakelstations zijn. Ook deze tekening zal je als treindienstleider vaak gebruiken.',
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
                              'assets/images/achtergrond_info/uitvoeren_plan/bovenleidingSchema.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
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
