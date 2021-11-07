import 'package:trdl_tool/all_imports.dart';

const String treinen_van_ns = 'https://ns.nl/over-ns/treinen-van-ns';
const String nl_spoorwegmaterieel = 'https://nl.wikipedia.org/wiki/Nederlands_spoorwegmaterieel';
const String goederenwagon = 'https://nl.wikipedia.org/wiki/Goederenwagon';

class BijzonderhedenTreinBasisAchtergrond extends StatelessWidget {
  const BijzonderhedenTreinBasisAchtergrond({Key? key}) : super(key: key);

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
                              title: 'Bijzonderheden trein - basisinformatie',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'In Nederland is er heel wat rijdend materieel onderweg op het spoor. Dit materieel komt in vele soorten en maten, aangepast voor specifieke trajecten, reizigers of goederen. In dit deel van de achtergrondinformatievind je een overzicht van deze materieelsoorten.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Handig zijn ook de volgende webpagina\'s:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                launchTreinenVanNS();
                              },
                              child: Text(
                                '- Treinen van NS',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                lauchNLSpoorwegMaterieel();
                              },
                              child: Text(
                                '- NL Spoorwegmaterieel',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: [
                          SizedBoxW(),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                launchGoederenwagon();
                              },
                              child: Text(
                                '- Goederenwagons Wiki',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
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
                              'assets/images/achtergrond/goederenTrein.png',
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
                              text: 'De beschikbare infracapaciteit wordt planmatig toegewezen aan de verschillende infragebruikers. Het plan is zodanig ingericht dat er voldoende ruimte blijft voor bijsturing en extra capaciteitsaanvragen. Het plan is opgebouwd uit o.a. treinpaden, rangeerbewegingen, brugopeningen, WBI’s, tijd/ruimte-slots en is gebaseerd op de overeengekomen planmatige verdeling van de infra.',
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
                              text: 'Indien tijdens de uitvoering van het plan een incident optreedt, is het nodig om het plan aan te passen. Hierbij wordt zoveel mogelijk gebruik gemaakt van vooraf afgesproken scenario’s en afhandelingen. Ook kan het plan aangepast worden wanneer extra infracapaciteit gevraagd wordt. Deze aanvragen worden gepland middels orderacceptatie.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Wanneer het plan moet worden aangepast zal dat zoveel mogelijk gebeuren conform vooraf gemaakte afspraken met de infragebruikers (Operationele Voorwaarden uitgewerkt in afhandelingsafspraken). Zie ook: Aanpassen plan - basisinformatie.',
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
                              text: 'Bij een incident, dat leidt tot onmiddellijk gevaar voor mens, dier of milieu, is het toegestaan om het plan aan te passen zonder toepassing van de Operationele Voorwaarden. Sporen worden buitendienst genomen of onttrokken aan het operationele proces. Dit mag ook bij storingen aan de infra. De bedoeling is wel om zo snel mogelijk weer over te gaan tot uitvoering van het (aangepaste) plan.',
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
                              text: 'Het originele plan en de wijzigingen in dit plan worden altijd aan de belanghebbenden gecommuniceerd.',
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
                              subtitle: 'Werkplekinformatie - Bedienvoorschriften (BVS) en bovenleiding schema\'s',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Voor ieder bediengebied van de treindienstleider zijn er bedieningsvoorschriften (BVS) aanwezig. Deze zijn digitaal aanwezig bij de betreffende werkplek waarvoor ze bestemd zijn. In de bedieningsvoorschriften worden de bijzonderheden van jouw bediengebied beschreven.',
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
                              text: '- Tekeningen seinzaal, werkplekken, signaleringsbeelden;',
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
                              text: 'Een apart onderdeel zijn de bovenleiding schema’s. Meer info vind je bij Bovenleiding - Basisinformatie.',
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
                              text: 'In dit gedeelte vind je algemene gegevens zoals algemene en plaatsnaam verkortingen en gegevens betreffende de vrije baan.',
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
                              text: 'In dit gedeelte vind je alle bijzonderheden van het pplg. De opbouw van alle BVS ‘en is gelijk. In eerste instantie is het lastig lezen, maar als je eenmaal doorhebt wat er staat, zal je alle BVS ‘en goed kunnen lezen. Je vindt hier onder andere gegevens over:',
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
                              text: '- Vertraagd uit de stand \'STOP\' komende seinen;',
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
                              text: 'In dit onderdeel vind je tekeningen van de overzicht signaleringsbeelden van de werkplekken.',
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
                              text: 'Waarschijnlijk is dit het onderdeel van de BVS wat je als treindienstleider het meest zal gebruiken. Je vindt hier de tekeningen van jouw bediengebied (pplg\'s en vrije banen). De gebruikte symbolen op de BVS-tekening kun je vinden in de B-voorschriften Deel I.',
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
                              'assets/images/achtergrond/bvsTekening.png',
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
                              text: 'Op de OS-bladen vind je het overzicht van alle seinen in jouw bediengebied. Deze tekeningen worden ook wel seinbeeldenkaarten genoemd. Je kunt hier onder andere informatie vinden over de seinbeelden bij een bepaalde rijweginstelling en de afstanden tussen twee seinen.',
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
                              'assets/images/achtergrond/osBlad.png',
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
                              text: 'Op dit moment zijn bovenleidingschema\'s nog niet op alle posten digitaal beschikbaar. Op deze tekeningen vind je onder andere de verschillende bovenleidingsgroepen, welke elektrische scheidingen gebruikt worden en waar onder- en schakelstations zijn. Ook deze tekening zal je als treindienstleider vaak gebruiken.',
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
                              'assets/images/achtergrond/bovenleidingSchema.png',
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

  void launchTreinenVanNS() async => await canLaunch(treinen_van_ns) ? await launch(treinen_van_ns) : throw 'Could not launch $treinen_van_ns';

  void lauchNLSpoorwegMaterieel() async => await canLaunch(nl_spoorwegmaterieel) ? await launch(nl_spoorwegmaterieel) : throw 'Could not launch $nl_spoorwegmaterieel';

  void launchGoederenwagon() async => await canLaunch(goederenwagon) ? await launch(goederenwagon) : throw 'Could not launch $goederenwagon';
}
