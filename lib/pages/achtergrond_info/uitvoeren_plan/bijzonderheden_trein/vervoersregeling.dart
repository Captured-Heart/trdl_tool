import 'package:trdl_tool/all_imports.dart';

class TreinenVervoersregelingAchtergrond extends StatelessWidget {
  const TreinenVervoersregelingAchtergrond({Key? key}) : super(key: key);

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
                              title: 'Treinen met een vervoersregeling',
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
                                  'Een planregel kan standaard bijzonderheden van een bepaalde trein bevatten. Het zijn bijzonderheden die aan een bepaalde trein toegekend kunnen worden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Voorbeelden zijn:',
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
                              text: '- BP = Buiten Profiel;',
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
                              text: '- BV = Bijzonder Vervoer;',
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
                              text: '- LSP = LinkerSPoor;',
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
                              text: '- 3KT = Treinen zwaarder dan 3000 ton;',
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
                              text:
                                  '- METING = Meettrein die op dit gedeelte het geplande spoor meet.',
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
                                  'Voor bijzonderheden_trein met bepaalde standaard bijzonderheden (met name allerlei varianten van \'buiten profiel\') mogen bepaalde stukken van, of punten op/aan, de infrastructuur slechts onder bepaalde voorwaarden of in het geheel niet passeren.',
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
                                  'Met beperkingen is vastgelegd welke sporen of routes met welke standaard bijzonderheden onder welke voorwaarden óf geheel niet mogen worden gebruikt.',
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
                                  'Procesleiding Rijwegen controleert tijdens planmutaties en bij handmatige rijweginstelling of er sprake is van een beperking. In dat geval wordt je gewaarschuwd als er sprake is van voorwaarden of wordt de mutatie/ opdracht geweigerd als de trein in het geheel niet mag passeren.',
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
                              subtitle: 'Buitengewoon vervoer',
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
                                  'Een trein valt onder de categorie Buitengewoon vervoer als afmetingen, gewicht, lading of wagentype bijzondere technische of exploitatieve maatregelen vereisen.',
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
                                  'Al deze bijzonderheden_trein hebben de toevoeging:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- BP = Buiten Profiel',
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
                          Expanded(
                            child: BodyText(
                              text:
                                  'Treinen vervoeren wagons waarvan de lading uitsteekt;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '- BV = Bijzonder Vervoer',
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
                          Expanded(
                            child: BodyText(
                              text:
                                  'Treinen vervoeren wagons met uitzonderlijke lading.',
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
                                  'ProRail is gemandateerd om een ontheffing te verlenen voor vervoer waarvan de lading buiten het referentieprofiel voor spoorwegvoertuigen uitsteekt. De ontheffing van andere wettelijke voorschriften worden verleend door IL&T.',
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
                                  'Ontheffingen wegens profieloverschrijding door de lading alsmede inlichtingen over de voorwaarden voor buitengewoon vervoer kunnen worden aangevraagd bij One-Stop-Shop van ProRail.',
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
                                  'In de volgende gevallen is een regeling voor Buitengewoon Vervoer noodzakelijk:',
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
                              text:
                                  '- Het rijden met hogesnelheidstreinen langer dan 400 meter;',
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
                              text:
                                  '- Het rijden met goederentreinen langer dan 740 meter;',
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
                              text:
                                  '- Het rijden met bijzonderheden_trein, die niet geschikt zijn om te rijden met een snelheid van tenminste 60 km/h op baanvakken met een baanvaksnelheid ≤ 80 km/h',
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
                              text:
                                  '- Het rijden met spoorvoertuigen waarvan het profiel ruimer is dan het referentieprofiel van het te berijden baanvak;',
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
                              text:
                                  '- Het rijden van bijzonderheden_trein waarin spoorvoertuigen zijn opgenomen die de beladingsklasse C2 overschrijden;',
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
                              text:
                                  '- Het rijden met bijzonderheden_trein of spoorvoertuigen onder een onder de Spoorwegwet verleende ontheffing waarin in de ontheffingsvoorwaarden een nadere regeling met de beheerder is voorgeschreven;',
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
                              text:
                                  '- Het rijden met spoorvoertuigen welke in de UIC regelgeving als Buitengewoon Vervoer gekenmerkt worden;',
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
                              text:
                                  '- Het rijden met bijzonderheden_trein waarvan het laatste spoorvoertuig onberemd is.',
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
                                  'Algemene uitgangspunten Buitengewoon Vervoer:',
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
                              text:
                                  '- De Spoorwegonderneming zorgt ervoor dat in de bedrijfsvoering de voorwaarden uit de regeling Buitengewoon Vervoer worden toegepast en nageleefd;',
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
                              text:
                                  '- De Spoorwegonderneming moet nagaan of route, rijwegkeuze, snelheid van de voor het vervoer beoogde trein in overeenstemming zijn met de regeling. Zo niet, dan moet de reeds bestaande dienstregeling van de trein worden aangepast of indien mogelijk moet er ad hoc capaciteit voor een trein met aangepaste dienstregeling worden aangevraagd. In beide gevallen verwijst de Spoorwegonderneming naar de toepasselijke regeling;',
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
                              text:
                                  '- Bij wijziging van de treinkarakteristiek van een reeds bestaande trein naar Buitengewoon Vervoer, moet de Spoorwegonderneming voor de betreffende trein een order “wijzigen trein” indienen.',
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
                              subtitle: 'Standaardvoorwaarden BP 1, 2 en 3',
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
                                  'Treinen met een standaard zending met profieloverschrijding.',
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
                                  'Op ons (inter)nationale spoornetwerk rijden er bijzonderheden_trein met een standaard profieloverschrijding. Om met deze bijzonderheden_trein goed om te gaan, in de planning en de dagelijkse uitvoering, is er gekozen voor een vereenvoudigde indeling van deze profieloverschrijdingen binnen Nederland.',
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
                                  'Overzicht kan je vinden in het document ‘Standaardvoorwaarden BP 1, 2 en 3.',
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
                                  'Vervoer van standaard zendingen met profieloverschrijding',
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
                              text:
                                  '- Het vervoer van wagens/ladingen met profiel overschrijdende afmetingen wordt in de plansystemen verwerkt, waarbij aan de treinnummers BP1, BP2 en BP3 worden toegevoegd. Deze profielcodes worden in DONNA geregistreerd en door procesleiding in het scherm getoond;',
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
                              text:
                                  '- Bij ProRail verkeersleiding Orderacceptatie moeten alle bijzonderheden_trein worden aangevraagd die niet in de plansystemen van ProRail zijn opgenomen. De vervoerder moet aan ProRail verkeersleiding Orderacceptatie de BP code opgeven. Ook alle wijzigingen van de profielen moeten tijdig worden gemeld bij ProRail verkeersleiding Orderacceptatie;',
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
                              text:
                                  '- Vervoer mag uitsluitend plaatsvinden over de baanvakken welke geschikt zijn voor de bij de profielcode geldende voorwaarden;',
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
                              text:
                                  '- Op de toegelaten baanvakken, stations en emplacementen voor buiten profiel vervoer kunnen er gebruiksbeperkingen van toepassing zijn (zie lijst Opgave Baanvakken, Stations en Emplacementen).',
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
                              text:
                                  '- In de niet centraal bediende gebieden is het rijden onder ladingmallen niet toegestaan met bijzonderheden_trein met profieloverschrijding;',
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
                              text:
                                  '- Standaard zendingen aangeduid met BP1, BP2 en BP3 zijn in Nederland alleen in hoogte buiten profiel. Indien in een BV regeling is opgenomen \'Geen BV bijzonderheden_trein of treindelen met lading Buiten Profiel op het nevenspoor\' is deze beperking niet van toepassing op standaardzendingen BP1, BP2 en BP3.',
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
                              'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_trein/vervoersregeling/buitenProfiel.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #4*/
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
                                  'Afhandeling bijzonderheden_trein met toevoeging BP 1, 2 en 3',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Je stelt pas een rijweg in nadat je:',
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
                              text:
                                  '- Kennis hebt genomen van de beperkingen die voor deze bijzonderheden_trein gelden;',
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
                              text:
                                  '- De aanwijzingen over de beperkingen hebt opgevolgd.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Afhandeling bijzonderheden_trein met toevoeging BV',
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
                                  'Deze bijzonderheden_trein behandel je als volgt:',
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
                              text: '- Je stelt de rijweg pas in nadat je:',
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
                                  '* kennis hebt genomen van de beperkingen die voor deze bijzonderheden_trein gelden;',
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
                                  '* de aanwijzingen over de beperkingen hebt opgevolgd.',
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
                              text:
                                  '- Als de nevensporen vrijgehouden moeten worden:',
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
                                  '* neem je veiligheidsmaatregelen zodat er geen rijweg ingesteld kan worden naar de betrokken railinfra.',
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
                              text:
                                  '- Als er technische voorzieningen moeten worden getroffen, dan stel je de rijweg pas in nadat je toestemming hebt van de toezichthoudende functionaris. Ontbreekt een vervoersregeling, dan:',
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
                              text: '* stel je geen rijweg in;',
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
                              text: '* licht je de DVL in.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Sterk vertraagde goederentreinen met een BP of BV regeling',
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
                              text: '- De DVL moet de trein herplannen;',
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
                              text:
                                  '- Zit er op de oorspronkelijke trein een vervoersregeling, dan geldt die ook voor de herplande en opnieuw ingelegde trein.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle:
                                  'Lijst met codering standaard bijzonderheden',
                            ),
                          ),
                        ],
                      ),
                      Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Code',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Omschrijving',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'BV',
                                ),
                              ),
                              Text(
                                'Trein met  vervoersregeling Buitengewoon Vervoer',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'BP1',
                                ),
                              ),
                              Text(
                                'Trein met standaard omgrenzingsprofiel overschrijding volgens BP1',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'BP2',
                                ),
                              ),
                              Text(
                                'Trein met standaard omgrenzingsprofiel overschrijding volgens BP2',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'BP3',
                                ),
                              ),
                              Text(
                                'Trein met standaard omgrenzingsprofiel overschrijding volgens BP3',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  '3KT',
                                ),
                              ),
                              Text(
                                'Trein zwaarder dan 3000 ton',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'METING',
                                ),
                              ),
                              Text(
                                'Meettrein die op dit gedeelte het geplande spoor meet',
                                textAlign: TextAlign.center,
                              ),
                            ],
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