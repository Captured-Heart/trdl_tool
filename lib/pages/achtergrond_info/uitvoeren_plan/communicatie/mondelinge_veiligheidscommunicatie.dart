import 'package:trdl_tool/all_imports.dart';

class MondelingeVeiligheidAchtergrond extends StatelessWidget {
  const MondelingeVeiligheidAchtergrond({Key? key}) : super(key: key);

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
                              title: 'Mondelinge communicatie',
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
                                  'Als treindienstleider ben je vaak afhankelijk van informatie die, behalve uit je systemen, afkomstig is van personen die buiten aan het werk zijn. Ook is het vaak noodzakelijk om informatie te verkrijgen door gericht vragen te stellen aan deze personen. En andersom geeft je ook opdrachten om de trein- en rangeerdienst planmatig en veilig te laten verlopen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Mondelinge opdrachten',
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
                                  'Een groot deel van de opdrachten die je geeft als treindienstleider gaat gewoon mondeling. Denk bijvoorbeeld aan het vragen aan het oprijden tot aan een sein van een trein om ruimte op het betrokken spoor te creëren, vragen aan een machinist of hij al stilstaat, etc.',
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
                                  'Maar je kan een iemand ook vragen om je te voorzien van informatie die te maken heeft met de situatie op en rond de spoorbaan. We noemen dit schouwen.',
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
                                  'Een dergelijke opdracht is een zogenaamde schouwopdracht: gericht vragen om iets te onderzoeken en terugkoppeling te geven. Zo kan je bijvoorbeeld aan een machinist vragen om te kijken of hij iets bijzonders ziet, een voorgaande melding te verifiëren en hier terugkoppeling over te geven.',
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
                                  'Tijdens het werk kan het voorkomen dat je met een ketenpartner afspraken moet maken over het toelaten van een trein tot zijn gebied, anders dan volgens het reguliere plan.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Bijvoorbeeld als je communiceert met:',
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
                              text: '- De buurTRDL als:',
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
                                  '* Er op een baanvak geen blokverband is tussen seinen;',
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
                              text: '* Er op stationsafstand wordt gereden;',
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
                                  '* Je een bijzonder vervoer trein (BV) wilt sturen, waarbij de nevensporen vrijgehouden moeten worden.',
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
                                  '- De LWB, over toelating van werktreinen tot de beschikbaar gestelde railinfracapaciteit.',
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
                                  'Je wilt de zekerheid hebben dat een bericht is aangekomen en begrepen.',
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
                                  'Als je communiceert, is het handig om de volgende structuur aan te houden:',
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
                              text: '- Vragen of een trein mag vertrekken;',
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
                                  '- Aannemen, toestaan dat een trein mag vertrekken;',
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
                                  '- Doorgeven dat een trein is vertrokken (afseinen);',
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
                                  '- Doorgeven dat een trein in zijn geheel binnen is, of;',
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
                                  '- Doorgeven dat een trein niet in zijn geheel binnen is.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Standaardmeldingen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Een standaardmelding heeft betrekking op specifieke informatie-uitwisseling over afwijkingen van het oorspronkelijk plan. Je moet altijd de zekerheid hebben dat een standaardmelding is aangekomen en begrepen.',
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
                                  'De volgende meldingen worden door VOS automatisch doorgegeven:',
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
                              text: '- (Voorwaardelijke) vertragingen;',
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
                                  '- Opheffen en inleggen van bijzonderheden_trein;',
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
                                  '- Bijzonderheden aan een trein (standaard bijzonderheden).',
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
                                  'Beschikt de buurTRDL niet over VPT-procesleiding, dan moet je de meldingen alsnog telefonisch doorgeven.',
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
                                  'De volgende meldingen worden niet automatisch doorgegeven en moet u dus met de daarvoor aangewezen communicatiemiddelen doorgeven aan belanghebbenden:',
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
                              text: '- Wijzingingen in de samenstelling;',
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
                                  '- Wijzigingen in de volgorde van bijzonderheden_trein.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Standaardmeldingen doe je aan:',
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
                              text: '- DVL;',
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
                              text: '- BuurTRDL;',
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
                              text: '- CRA.',
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
                              subtitle: 'Schriftelijke opdrachten',
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
                                  'In een aantal gevallen geef je als treindienstleider schriftelijk opdrachten af.\nAls treindienstleider ben je verantwoordelijk voor het tijdig beschikbaar stellen van veilige rijwegen. Veilige rijwegen stel je beschikbaar middels het instellen van rijwegen (waarbij aan alle rijwegvoorwaarden moet zijn voldaan). Wanneer de veiligheid niet gegarandeerd kan worden middels seingeving zal je dit moeten doen middels een schriftelijke aanwijzing.',
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
                                  '- Komt het sein niet uit de stand \'stop\' dan ga je eerst de zogenaamde rijwegvoorwaarden handmatig bewerkstelligen en geef je een aanwijzing \'STS\' af. Hierop staat aangegeven wat de machinist moet doen.',
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
                                  '- Heb je te maken met een bekend gevaar (toestand baan, derden langs te baan etc.) geef je aanwijzing \'VR\' af. Je geeft aan van waar tot waar het zogenaamde gevaar zich bevindt en laat de machinist daar rijden met maximaal 40 km/h (of lager mocht dat nodig zijn). Mocht je aanvullende informatie nodig hebben kan je de machinist vragen te schouwen. Dan kruis je het vakje \'schouwen\' ook aan op de aanwijzing.',
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
                                  '- Is de snelheid die de machinist wel ergens mag rijden door een ter zake kundig iemand aangegeven en is deze lager dan de snelheid die de seinen of borden aangeven dan geef je een aanwijzing \'SB\' af.',
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
                                  '- Bij een gestoorde of beschadigde overweg geef je dan nog een aanwijzing \'OVW\' af. Daarop staat hoe de machinist moet handelen bij een gestoorde overweg. Zit een overweg niet op de storingsmelder dan handelt de treindienstleider als aangegeven in de Plaatselijke Regelgeving',
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
                              subtitle:
                                  'Veiligheidscommunicatie treindienstleider',
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
                                  'Veiligheidscommunicatie betreft het uitwisselen van veiligheid kritische berichten. Veiligheidscommunicatie vindt plaats tussen treindienstleider en functionarissen zoals genoemd in de tabel hieronder.',
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
                                  'Dit zijn berichten, die bij onjuiste uitvoering (niet, volledig, te vroeg of te laat), tot veiligheidsincidenten kunnen leiden met slachtoffers en/of schade als gevolg.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Functionaris',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Communicatie over',
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
                                  '(Buur)TRDL',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Alle veiligheidszaken',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Machinist (MCN)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Plaatsbepaling, toestand materieel, toestand infra',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Medewerker OBI',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Functioneren van de infra',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Storingsdienst',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Functioneren van de infra',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Rangeerder',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Toestand van de infra',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Veiligheidsverantwoordelijke buiten',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Functioneren van de infra',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Algemeen Leider (AL)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Beperkingen bij hervatten van de treindienst',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Medewerker BackOffice (MKS-BO)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Gegevens van hulpverlenende instanties',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Verkeersleider',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Orderaanvragen',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Storingsmonteur (STMT)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Functioneren materieel',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Medewerker Rangeren (KNOCO)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Lokale orderaanvragen (LOA)',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Medewerker Werkplekbeveiliging (WPB)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Aanpassen veiligheidsmaatregelen WBI',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Inpecteur Inspectie Leefomgeving & Transport (IL&T)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Plaatsbepaling, inspectie materieel of infra',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text:
                                  'Om miscommunicatie zoveel mogelijk uit te sluiten zijn de volgende uitgangspunten van toepassing:',
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
                              text: '- Identificatieplicht;',
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
                              text: '- Gespreksdiscipline;',
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
                              text: '- Berichtenstructuur.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Identificatieplicht',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Functionarissen identificeren zich bij aanvang van een bericht met hun functionele naam (bijv. MCN met treinnummer en locatie, TRDL met werkplek enz.).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Gespreksdiscipline',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Onder gespreksdiscipline wordt verstaan de regels, die gelden voor het uitvoeren van de veiligheidscommunicatie. Dit zijn:',
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
                              text: '- Gespreksregels;',
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
                              text: '- Dienstuitdrukkingen;',
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
                              text: '- NATO alfabet en getallen.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Gespreksregels',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  '- Spreek elkaar aan op het gebruik van de regels voor veiligheidscommunicatie;',
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
                                  '- Veiligheidscommunicatie wordt gevoerd via een spreekverbinding die de gesprekken vastlegt (voicelogger en/of GSM-R);',
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
                                  '- Het is bij aanvang van elk bericht van belang vast te stellen of de juiste gesprekspartners berichten met elkaar uitwisselen (identificatieplicht en plaatsbepaling);',
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
                                  '- Gebruik voor plaatsbepaling de vaste infrastructuur:',
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
                              text: '* Stationsnaam en/of;',
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
                              text: '* Baanvak en kilometrering en/of;',
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
                              text: '* Spoornummers en/of;',
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
                              text: '* Wisselnummers en/of;',
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
                              text: '* Seinnummers.',
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
                                  '- Houd gesprekken kort en zakelijk om de communicatiemiddelen maximaal ter beschikking te hebben voor alle toegelaten gebruikers;',
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
                                  '- Gebruik voor het voeren van gesprekken de berichtenstructuur;',
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
                                  '- Luister of er een gesprek gaande is voor je gaat spreken, behalve bij een noodbericht;',
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
                              text: '- Laat de ander uitspreken;',
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
                              text: '- Vermijd ontkenningen;',
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
                                  '- Gebruik bij het spellen losse letters en het NATO-spelalfabet;',
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
                                  '- Treinnummers/sein- en wisselnummers/getallen worden eerst volledig en daarna cijfer voor cijfer uitgesproken;',
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
                                  '- Zorg dat misverstanden worden uitgesloten:',
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
                                  '* Elk bericht moet door de ontvanger inhoudelijk herhaald worden;',
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
                                  '* Elk herhaald bericht moet door de afzender worden gevolgd door de vaste dienstuitdrukking \'correct\' of \'fout ik herhaal\';',
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
                                  '* Elk bericht, behalve het laatste van een gesprek, wordt beëindigd met de uitdrukking: \'over\';',
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
                                  '* Elk gesprek wordt beëindigd met de uitdrukking: \'sluiten\'.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Dienstuitdrukkingen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Om de verzending van berichten gedisciplineerd te doen verlopen moeten de volgende dienstuitdrukkingen worden gebruikt:',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Dienstuitdrukking',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Betekenis',
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
                                  'Over',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Term om de andere partij het woord te geven',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Ontvangen',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Term om aan te geven dat het bericht is ontvangen',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Herhaal bericht',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Uitdrukking om aan te geven dat het bericht selcht ontvangen of moeilijk te begrijpen is en moet worden herhaald',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Correct',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Uitdrukking om aan te geven dat het ontvangen bericht nauwkeurig overeenstemt met het uitgezonden bericht',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Toegestaan',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'U hebt toestemming tot...',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Stoppen',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'U heeft geen toestemming tot... / stoppen',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Herstel',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Ik maakte een fout. Ik begin weer bij het laatste uitgesproken woord',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Fout (+ ik herhaal)',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Uitdrukking om aan te geven dat het ontvangen bericht niet overeenstemt met het uitgezonden bericht',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Sluiten',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Wanneer het gesprek is beëindigd',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Wacht',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Uitdrukking om de ander te laten wachten',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Ik roep u later opnieuw op',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Uitdrukking om aan te geven dat de verbinding wordt verbroken, maar later wordt hervat',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Aanwijzing...voorbereiden',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Uitdrukking voor de voorbereiding van een toepassing van een procedure (aanwijzing) uit het Formulierenboek',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Aanwijzing...annuleren',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Uitdrukking voor het annuleren van een lopende procedure (aanwijzing) uit het Formulierenboek',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'Ik spel...',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Aankondiging dat er gespeld gaat worden (letters en/of cijfers)',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'NATO-spelalfabet en getallen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Om in uiteenlopende situaties misverstanden te voorkomen, moet elke uitdrukking langzaam en duidelijk worden uitgesproken. Hierbij moeten de woorden, die slecht kunnen worden begrepen, worden gespeld en getallen cijfer voor cijfer worden uitgesproken.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'A',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Alpha',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'H',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Hotel',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'O',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Oscar',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'V',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Victor',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'B',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Bravo',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'I',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'India',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'P',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Papa',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'W',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Whisky',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'C',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Charlie',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'J',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Juliet',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Q',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Quebec',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'X',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'X-Ray',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'D',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Delta',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'K',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Kilo',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'R',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Romeo',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Y',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Yankee',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'E',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Echo',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'L',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Lima',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'S',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Sierra',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Z',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Zulu',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'F',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Foxtrot',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'M',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Mike',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'T',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Tango',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '',
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Center(
                                child: Text(
                                  'G',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Golf',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'N',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'November',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'U',
                                ),
                              ),
                              Center(
                                child: Text(
                                  'Uniform',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '',
                                ),
                              ),
                              Center(
                                child: Text(
                                  '',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Getallen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Getallen spreek je als volgt uit:',
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
                              '- Trein 1724 = Trein één-zeven-twee-vier;',
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
                              '- Overweg 53.6 = Overweg vijf-drie-punt-zes;',
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
                              '- Spoor 12B = Spoor één-twee-bravo;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '* De treindienstleider dient bij het uitspreken van trein-, sein- en wisselnummers en bij kilometrages eerst het nummer getal volledig uit te spreken en daarna cijfer voor cijfer;',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          SizedBoxW(),
                          SizedBoxW(),
                          Expanded(
                            child: Text(
                              '* Bij herhalen van een nummer door de ontvanger is het niet verplicht om dit nummer opnieuw als 1 nummer/getal uit te spreken, het is wel verplicht om dit cijfer voor cijfer uit te spreken.',
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
                              '- 40 Kilometer per uur = Veertig kilometer per uur;',
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
                              '- 10:52 uur = Tien uur tweeënvijftig;',
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
                              '- 12 juni 2018 = twaalf-zes-tweeduizendachttien.',
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
                              subtitle: 'Berichtenstructuur',
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
                                  'De volgende berichten kunnen worden onderscheiden:',
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
                              text: '- Noodberichten;',
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
                              text: '- Aanwijzingen;',
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
                              text: '- Werkzaamheden;',
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
                              text: '- Overige berichten.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Noodberichten',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'In een noodsituatie gebruik je de alarmknop GSM-R:',
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
                                  '- Indien de situatie het vereist dat meerdere bijzonderheden_trein tot stilstand moeten komen, wordt het volgende bericht gebruikt: \'Noodsituatie: stop alle bijzonderheden_trein\';',
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
                                  'Indien de situatie het vereist dat één bepaalde trein tot stilstand moet komen, wordt het volgende bericht gebruikt: \'Trein ...(nummer)... Op spoor ...(stationsnaam/baanvak, spoornummer)... noodstop.\'',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Aanwijzingen',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Aanwijzingen worden gebruikt voor het overbrengen van procedurele berichten tussen treindienstleiders en machinisten. Het is voor goede en duidelijke communicatie van belang dat door de beide partijen gebruikte aanwijzingen qua inhoud consistent zijn aan elkaar. De aanwijzingen van alle partijen zijn in het Formulierenboek opgenomen.',
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
                                  'Het afgeven van aanwijzingen moet voorafgegaan worden door het volgende bericht:',
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
                                  '\'Trein ...(nummer)... Hier treindienstleider ...(werkplek)... ...(aanwijzing)... voorbereiden over\'',
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
                                  '- Voorafgaand aan het afgeven van de aanwijzing, vult de treindienstleider de aanwijzing in;',
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
                                  '- Bij het afgeven van de aanwijzing leest de treindienstleider deze letterlijk voor;',
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
                                  '- De machinist noteert de inhoud van de aan hem afgegeven aanwijzing op het daarvoor van toepassing zijnde formulier (Formulierenboek).',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Werkzaamheden',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Dit betreft de communicatie over het starten en beëindigen van werkzaamheden.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Berichten werkzaamheden zonder WBI/WECO:',
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
                                  'Hier ...(functie)..., \'ik vraag toestemming om werkzaamheden op ...(spoor/gebied)... aan te mogen vangen, over.\'',
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
                                  '\'Hier treindienstleider ...(werkplek)..., maatregelen treindienstleider ...(spoor/gebied)... aangebracht, ik geef aan ...(functie)..., om ...(tijd)... toestemming om werkzaamheden op ...(spoor/gebied)... aan te vangen, over.\'',
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
                                  '\'Hier ...(functie)..., ik krijg om ...(tijd)... toestemming om werkzaamheden op ...(spoor/gebied)... aan te vangen, over.\'',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Berichten werkzaamheden met WBI/WECO:',
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
                                  '\'Hier ...(functie)..., WBI ...(nummer)..., werkplek ...(letter)... voorbereiden, over.\'',
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
                                  '\'Hier treindienstleider ...(werkplek)..., maatregelen treindienstleider volgens WBI ...(nummer)..., werkplek ...(letter)... aangebracht, ik geef om ...(tijd)..., ...(functie)... toestemming om werkzaamheden aan te vangen, over\'',
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
                                  '\'Hier ...(functie)..., WBI ...(nummer)..., werkplek ...(letter)..., ik krijg om ...(tijd)... toestemming van treindienstleider ...(werkplek)... om de werkzaamheden aan te vangen, over.\'',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Berichten bij het beëindigen van werkzaamheden:',
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
                                  '\'Hier ...(functie)..., ik meld werkzaamheden op ...(spoor/gebied/WBI)... gereed om ...(tijd)..., over.\'',
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
                                  '\'Hier treindienstleider ...(werkplek)..., de werkzaamheden op ...(spoor/gebied/WBI)... zijn gereed om ...(tijd)..., over.\'',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Overige berichten',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
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
                                  'Hieronder vallen informatieve berichten die tussen treindienstleiders en machinisten gebruikt worden om elkaar van situaties op de hoogte te stellen.',
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
                                  'De volgende berichtenstructuur moet hiervoor worden gebruikt:',
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
                                  '- Reden voor het bericht (informatief en/of gevraagde actie);',
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
                                  '- Opmerking (voorbeeld: Er is.../Ik zag.../Ik had.../Ik raakte...);',
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
                              text: '- Positie/plaatsbepaling;',
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
                              text: '- Aard (betreft: infra/voorwerp/persoon);',
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
                              text: '- Staat (vast of bewegend).',
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
                                  'Denk bij het voeren van informatieve gesprekken ook aan Luisteren, Samenvatten, Doorvragen (LSD) en aan de vorm van vraagstelling die je gebruikt voor een zo optimaal mogelijk resultaat:',
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
                              '- Open vragen',
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
                                  'nodigen de ander uit te praten en een eigen invulling aan het antwoord te geven. Deze vragen kunnen beginnen met: hoe, wat, wie, waar, waarom, wanneer, etc.',
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
                              '- Gesloten vragen',
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
                                  'geven de mogelijkheid tot een \'ja\' of \'nee\' antwoord. Deze kunnen zinvol zijn als de ander een langdradige spreker is en jij specifieke informatie wilt. Veel gesloten vragen achter elkaar geven het effect van een \'kruisverhoor\'.',
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
                              '- Suggestieve vragen',
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
                                  'bevatten al een mening en kunnen manipulatief zijn: \'Vind je ook niet dat...?\' of \'Het is toch zeker zo dat...?\' Dergelijke sturende vragen zetten een ander soms voor het blok.',
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
                              '- Meerkeuze vragen',
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
                                  'laten weinig ruimte voor alternatieven: \'Wil je hier eten of gaan we naar het eetcafé?\' Stimuleert de ander snel een beslissing te nemen.',
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
