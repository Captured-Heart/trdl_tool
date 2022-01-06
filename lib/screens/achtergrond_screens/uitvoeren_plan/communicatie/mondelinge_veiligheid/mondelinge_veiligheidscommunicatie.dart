import 'package:trdl_tool/core/all_imports.dart';

class MondelingeVeiligheidAchtergrond extends StatelessWidget {
  const MondelingeVeiligheidAchtergrond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'TRDLtool',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Mondelinge communicatie',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als treindienstleider ben je vaak afhankelijk van informatie die, behalve uit je systemen, afkomstig is van personen die buiten aan het werk zijn. Ook is het vaak noodzakelijk om informatie te verkrijgen door gericht vragen te stellen aan deze personen. En andersom geeft je ook opdrachten om de trein- en rangeerdienst planmatig en veilig te laten verlopen.',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: 'Mondelinge opdrachten',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een groot deel van de opdrachten die je geeft als treindienstleider gaat gewoon mondeling. Denk bijvoorbeeld aan het vragen aan het oprijden tot aan een sein van een trein om ruimte op het betrokken spoor te creëren, vragen aan een machinist of hij al stilstaat, etc.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Maar je kan een iemand ook vragen om je te voorzien van informatie die te maken heeft met de situatie op en rond de spoorbaan. We noemen dit schouwen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een dergelijke opdracht is een zogenaamde schouwopdracht: gericht vragen om iets te onderzoeken en terugkoppeling te geven. Zo kan je bijvoorbeeld aan een machinist vragen om te kijken of hij iets bijzonders ziet, een voorgaande melding te verifiëren en hier terugkoppeling over te geven.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Tijdens het werk kan het voorkomen dat je met een ketenpartner afspraken moet maken over het toelaten van een trein tot zijn gebied, anders dan volgens het reguliere plan.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bijvoorbeeld als je communiceert met:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- De buurTRDL als:',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '* Er op een baanvak geen blokverband is tussen seinen;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* Er op stationsafstand wordt gereden;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '* Je een bijzonder vervoer trein (BV) wilt sturen, waarbij de nevensporen vrijgehouden moeten worden.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De LWB, over toelating van werktreinen tot de beschikbaar gestelde railinfracapaciteit.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je wilt de zekerheid hebben dat een bericht is aangekomen en begrepen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als je communiceert, is het handig om de volgende structuur aan te houden:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Vragen of een trein mag vertrekken;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Aannemen, toestaan dat een trein mag vertrekken;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Doorgeven dat een trein is vertrokken (afseinen);',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Doorgeven dat een trein in zijn geheel binnen is, of;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Doorgeven dat een trein niet in zijn geheel binnen is.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Standaardmeldingen',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een standaardmelding heeft betrekking op specifieke informatie-uitwisseling over afwijkingen van het oorspronkelijk plan. Je moet altijd de zekerheid hebben dat een standaardmelding is aangekomen en begrepen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De volgende meldingen worden door VOS automatisch doorgegeven:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- (Voorwaardelijke) vertragingen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Opheffen en inleggen van bijzonderheden_trein;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Bijzonderheden aan een trein (standaard bijzonderheden).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Beschikt de buurTRDL niet over VPT-procesleiding, dan moet je de meldingen alsnog telefonisch doorgeven.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De volgende meldingen worden niet automatisch doorgegeven en moet u dus met de daarvoor aangewezen communicatiemiddelen doorgeven aan belanghebbenden:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Wijzingingen in de samenstelling;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Wijzigingen in de volgorde van bijzonderheden_trein.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Standaardmeldingen doe je aan:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- DVL;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- BuurTRDL;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- CRA.',
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
                    children: const [
                      CardTitle(
                        title: 'Schriftelijke opdrachten',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'In een aantal gevallen geef je als treindienstleider schriftelijk opdrachten af.\nAls treindienstleider ben je verantwoordelijk voor het tijdig beschikbaar stellen van veilige rijwegen. Veilige rijwegen stel je beschikbaar middels het instellen van rijwegen (waarbij aan alle rijwegvoorwaarden moet zijn voldaan). Wanneer de veiligheid niet gegarandeerd kan worden middels seingeving zal je dit moeten doen middels een schriftelijke aanwijzing.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Komt het sein niet uit de stand \'stop\' dan ga je eerst de zogenaamde rijwegvoorwaarden handmatig bewerkstelligen en geef je een aanwijzing \'STS\' af. Hierop staat aangegeven wat de machinist moet doen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Heb je te maken met een bekend gevaar (toestand baan, derden langs te baan etc.) geef je aanwijzing \'VR\' af. Je geeft aan van waar tot waar het zogenaamde gevaar zich bevindt en laat de machinist daar rijden met maximaal 40 km/h (of lager mocht dat nodig zijn). Mocht je aanvullende informatie nodig hebben kan je de machinist vragen te schouwen. Dan kruis je het vakje \'schouwen\' ook aan op de aanwijzing.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Is de snelheid die de machinist wel ergens mag rijden door een ter zake kundig iemand aangegeven en is deze lager dan de snelheid die de seinen of borden aangeven dan geef je een aanwijzing \'SB\' af.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Bij een gestoorde of beschadigde overweg geef je dan nog een aanwijzing \'OVW\' af. Daarop staat hoe de machinist moet handelen bij een gestoorde overweg. Zit een overweg niet op de storingsmelder dan handelt de treindienstleider als aangegeven in de Plaatselijke Regelgeving',
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
                      const CardTitle(
                        title: 'Veiligheidscommunicatie TRDL',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text:
                            'Veiligheidscommunicatie betreft het uitwisselen van veiligheid kritische berichten. Veiligheidscommunicatie vindt plaats tussen treindienstleider en functionarissen zoals genoemd in de tabel hieronder.',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text:
                            'Dit zijn berichten, die bij onjuiste uitvoering (niet, volledig, te vroeg of te laat), tot veiligheidsincidenten kunnen leiden met slachtoffers en/of schade als gevolg.',
                      ),
                      const SizedBoxH(),
                      Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                              TableTextBold(text: 'Functionaris'),
                              TableTextBold(text: 'Communicatie over'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: '(Buur)TRDL'),
                              TableText(text: 'Alle veiligheidszaken'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Machinist (MCN)'),
                              TableText(
                                  text:
                                      'Plaatsbepaling, toestand materieel, toestand infra'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Medewerker OBI'),
                              TableText(text: 'Functioneren van de infra'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Storingsdienst'),
                              TableText(text: 'Functioneren van de infra'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Rangeerder'),
                              TableText(text: 'Toestand van de infra'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(
                                  text: 'Veiligheidsverantwoordelijke buiten'),
                              TableText(text: 'Functioneren van de infra'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Algemeen Leider (AL)'),
                              TableText(
                                  text:
                                      'Beperkingen bij hervatten van de treindienst'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Medewerker BackOffice (MKS-BO)'),
                              TableText(
                                  text:
                                      'Gegevens van hulpverlenende instanties'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Verkeersleider'),
                              TableText(text: 'Orderaanvragen'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Storingsmonteur (STMT)'),
                              TableText(text: 'Functioneren materieel'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Medewerker Rangeren (KNOCO)'),
                              TableText(text: 'Lokale orderaanvragen (LOA)'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(
                                  text: 'Medewerker Werkplekbeveiliging (WPB)'),
                              TableText(
                                  text: 'Aanpassen veiligheidsmaatregelen WBI'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(
                                  text:
                                      'Inspecteur Inspectie Leefomgeving & Transport (IL&T)'),
                              TableText(
                                  text:
                                      'Plaatsbepaling, inspectie materieel of infra'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text:
                            'Om miscommunicatie zoveel mogelijk uit te sluiten zijn de volgende uitgangspunten van toepassing:',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Identificatieplicht;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Gespreksdiscipline;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Berichtenstructuur.',
                      ),
                      const SizedBoxH(),
                      const BoldText(
                        boldtext: 'Identificatieplicht',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text:
                            'Functionarissen identificeren zich bij aanvang van een bericht met hun functionele naam (bijv. MCN met treinnummer en locatie, TRDL met werkplek enz.).',
                      ),
                      const SizedBoxH(),
                      const BoldText(
                        boldtext: 'Gespreksdiscipline',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text:
                            'Onder gespreksdiscipline wordt verstaan de regels, die gelden voor het uitvoeren van de veiligheidscommunicatie. Dit zijn:',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Gespreksregels;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Dienstuitdrukkingen;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- NATO alfabet en getallen.',
                      ),
                      const SizedBoxH(),
                      const BoldText(
                        boldtext: 'Gespreksregels',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- Spreek elkaar aan op het gebruik van de regels voor veiligheidscommunicatie;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- Veiligheidscommunicatie wordt gevoerd via een spreekverbinding die de gesprekken vastlegt (voicelogger en/of GSM-R);',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- Het is bij aanvang van elk bericht van belang vast te stellen of de juiste gesprekspartners berichten met elkaar uitwisselen (identificatieplicht en plaatsbepaling);',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- Gebruik voor plaatsbepaling de vaste infrastructuur:',
                      ),
                      const BodyText(
                        indents: 2,
                        text: '* Stationsnaam en/of;',
                      ),
                      const BodyText(
                        indents: 2,
                        text: '* Baanvak en kilometrering en/of;',
                      ),
                      const BodyText(
                        indents: 2,
                        text: '* Spoornummers en/of;',
                      ),
                      const BodyText(
                        indents: 2,
                        text: '* Wisselnummers en/of;',
                      ),
                      const BodyText(
                        indents: 2,
                        text: '* Seinnummers.',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- Houd gesprekken kort en zakelijk om de communicatiemiddelen maximaal ter beschikking te hebben voor alle toegelaten gebruikers;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- Gebruik voor het voeren van gesprekken de berichtenstructuur;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- Luister of er een gesprek gaande is voor je gaat spreken, behalve bij een noodbericht;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Laat de ander uitspreken;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Vermijd ontkenningen;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- Gebruik bij het spellen losse letters en het NATO-spelalfabet;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- Treinnummers/sein- en wisselnummers/getallen worden eerst volledig en daarna cijfer voor cijfer uitgesproken;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Zorg dat misverstanden worden uitgesloten:',
                      ),
                      const BodyText(
                        indents: 2,
                        text:
                            '* Elk bericht moet door de ontvanger inhoudelijk herhaald worden;',
                      ),
                      const BodyText(
                        indents: 2,
                        text:
                            '* Elk herhaald bericht moet door de afzender worden gevolgd door de vaste dienstuitdrukking \'correct\' of \'fout ik herhaal\';',
                      ),
                      const BodyText(
                        indents: 2,
                        text:
                            '* Elk bericht, behalve het laatste van een gesprek, wordt beëindigd met de uitdrukking: \'over\';',
                      ),
                      const BodyText(
                        indents: 2,
                        text:
                            '* Elk gesprek wordt beëindigd met de uitdrukking: \'sluiten\'.',
                      ),
                      const SizedBoxH(),
                      const BoldText(
                        boldtext: 'Dienstuitdrukkingen',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text:
                            'Om de verzending van berichten gedisciplineerd te doen verlopen moeten de volgende dienstuitdrukkingen worden gebruikt:',
                      ),
                      const SizedBoxH(),
                      Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                              TableTextBold(
                                text: 'Dienstuitdrukking',
                              ),
                              TableTextBold(
                                text: 'Betekenis',
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Over'),
                              TableText(
                                  text:
                                      'Term om de andere partij het woord te geven'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Ontvangen'),
                              TableText(
                                  text:
                                      'Term om aan te geven dat het bericht is ontvangen'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Herhaal bericht'),
                              TableText(
                                  text:
                                      'Uitdrukking om aan te geven dat het bericht slecht ontvangen of moeilijk te begrijpen is en moet worden herhaald'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Correct'),
                              TableText(
                                  text:
                                      'Uitdrukking om aan te geven dat het ontvangen bericht nauwkeurig overeenstemt met het uitgezonden bericht'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Toegestaan'),
                              TableText(text: 'U hebt toestemming tot...'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Stoppen'),
                              TableText(
                                  text:
                                      'U heeft geen toestemming tot... / Stoppen'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Herstel'),
                              TableText(
                                  text:
                                      'Ik maakte een fout. Ik begin weer bij het laatste uitgesproken woord'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Fout (+ ik herhaal)'),
                              TableText(
                                  text:
                                      'Uitdrukking om aan te geven dat het ontvangen bericht niet overeenstemt met het uitgezonden bericht'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Sluiten'),
                              TableText(
                                  text: 'Wanneer het gesprek is beëindigd'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Wacht'),
                              TableText(
                                  text:
                                      'Uitdrukking om de ander te laten wachten'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Ik roep u later opnieuw op'),
                              TableText(
                                  text:
                                      'Uitdrukking om aan te geven dat de verbinding wordt verbroken, maar later wordt hervat'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Aanwijzing ... voorbereiden'),
                              TableText(
                                  text:
                                      'Uitdrukking voor de voorbereiding van een toepassing van een procedure (aanwijzing) uit het Formulierenboek'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Aanwijzing ... annuleren'),
                              TableText(
                                  text:
                                      'Uitdrukking voor het annuleren van een lopende procedure (aanwijzing) uit het Formulierenboek'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Ik spel...'),
                              TableText(
                                  text:
                                      'Aankondiging dat er gespeld gaat worden (letters en/of cijfers)'),
                            ],
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      const BoldText(
                        boldtext: 'NATO-spelalfabet',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text:
                            'Om in uiteenlopende situaties misverstanden te voorkomen, moet elke uitdrukking langzaam en duidelijk worden uitgesproken. Hierbij moeten de woorden, die slecht kunnen worden begrepen, worden gespeld en getallen cijfer voor cijfer worden uitgesproken.',
                      ),
                      const SizedBoxH(),
                      Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment:
                            TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                              TableText(text: 'A'),
                              TableText(text: 'Alpha'),
                              TableText(text: 'H'),
                              TableText(text: 'Hotel'),
                              TableText(text: 'O'),
                              TableText(text: 'Oscar'),
                              TableText(text: 'V'),
                              TableText(text: 'Victor'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'B'),
                              TableText(text: 'Bravo'),
                              TableText(text: 'I'),
                              TableText(text: 'India'),
                              TableText(text: 'P'),
                              TableText(text: 'Papa'),
                              TableText(text: 'W'),
                              TableText(text: 'Whisky'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'C'),
                              TableText(text: 'Charlie'),
                              TableText(text: 'J'),
                              TableText(text: 'Juliet'),
                              TableText(text: 'Q'),
                              TableText(text: 'Quebec'),
                              TableText(text: 'X'),
                              TableText(text: 'X-Ray'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'D'),
                              TableText(text: 'Delta'),
                              TableText(text: 'K'),
                              TableText(text: 'Kilo'),
                              TableText(text: 'R'),
                              TableText(text: 'Romeo'),
                              TableText(text: 'Y'),
                              TableText(text: 'Yankee'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'E'),
                              TableText(text: 'Echo'),
                              TableText(text: 'L'),
                              TableText(text: 'Lima'),
                              TableText(text: 'S'),
                              TableText(text: 'Sierra'),
                              TableText(text: 'Z'),
                              TableText(text: 'Zulu'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'F'),
                              TableText(text: 'Foxtrot'),
                              TableText(text: 'M'),
                              TableText(text: 'Mike'),
                              TableText(text: 'T'),
                              TableText(text: 'Tango'),
                              TableText(text: ''),
                              TableText(text: ''),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'G'),
                              TableText(text: 'Golf'),
                              TableText(text: 'N'),
                              TableText(text: 'November'),
                              TableText(text: 'U'),
                              TableText(text: 'Uniform'),
                              TableText(text: ''),
                              TableText(text: ''),
                            ],
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      const BoldText(
                        boldtext: 'Getallen',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'Getallen spreek je als volgt uit:',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Trein 1724 = Trein één-zeven-twee-vier;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Overweg 53.6 = Overweg vijf-drie-punt-zes;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- Spoor 12B = Spoor één-twee-bravo;',
                      ),
                      const BodyText(
                        indents: 2,
                        text:
                            '* De treindienstleider dient bij het uitspreken van trein-, sein- en wisselnummers en bij kilometrages eerst het nummer getal volledig uit te spreken en daarna cijfer voor cijfer;',
                      ),
                      const BodyText(
                        indents: 2,
                        text:
                            '* Bij herhalen van een nummer door de ontvanger is het niet verplicht om dit nummer opnieuw als 1 nummer/getal uit te spreken, het is wel verplicht om dit cijfer voor cijfer uit te spreken.',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- 40 Kilometer per uur = Veertig kilometer per uur;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- 10:52 uur = Tien uur tweeënvijftig;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text:
                            '- 12 juni 2018 = twaalf-zes-tweeduizendachttien.',
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
                    children: const [
                      CardTitle(
                        title: 'Berichtenstructuur',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De volgende berichten kunnen worden onderscheiden:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Noodberichten;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Aanwijzingen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Werkzaamheden;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Overige berichten.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Noodberichten',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'In een noodsituatie gebruik je de alarmknop GSM-R:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Indien de situatie het vereist dat meerdere bijzonderheden_trein tot stilstand moeten komen, wordt het volgende bericht gebruikt: \'Noodsituatie: stop alle bijzonderheden_trein\';',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Indien de situatie het vereist dat één bepaalde trein tot stilstand moet komen, wordt het volgende bericht gebruikt: \'Trein ...(nummer)... Op spoor ...(stationsnaam/baanvak, spoornummer)... noodstop.\'',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Aanwijzingen',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Aanwijzingen worden gebruikt voor het overbrengen van procedurele berichten tussen treindienstleiders en machinisten. Het is voor goede en duidelijke communicatie van belang dat door de beide partijen gebruikte aanwijzingen qua inhoud consistent zijn aan elkaar. De aanwijzingen van alle partijen zijn in het Formulierenboek opgenomen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Het afgeven van aanwijzingen moet voorafgegaan worden door het volgende bericht:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '\'Trein ...(nummer)... Hier treindienstleider ...(werkplek)... ...(aanwijzing)... voorbereiden over\'',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Voorafgaand aan het afgeven van de aanwijzing, vult de treindienstleider de aanwijzing in;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Bij het afgeven van de aanwijzing leest de treindienstleider deze letterlijk voor;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De machinist noteert de inhoud van de aan hem afgegeven aanwijzing op het daarvoor van toepassing zijnde formulier (Formulierenboek).',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Werkzaamheden',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Dit betreft de communicatie over het starten en beëindigen van werkzaamheden.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Berichten werkzaamheden zonder WBI/WECO:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Hier ...(functie)..., \'ik vraag toestemming om werkzaamheden op ...(spoor/gebied)... aan te mogen vangen, over.\'',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '\'Hier treindienstleider ...(werkplek)..., maatregelen treindienstleider ...(spoor/gebied)... aangebracht, ik geef aan ...(functie)..., om ...(tijd)... toestemming om werkzaamheden op ...(spoor/gebied)... aan te vangen, over.\'',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '\'Hier ...(functie)..., ik krijg om ...(tijd)... toestemming om werkzaamheden op ...(spoor/gebied)... aan te vangen, over.\'',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Berichten werkzaamheden met WBI/WECO',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '\'Hier ...(functie)..., WBI ...(nummer)..., werkplek ...(letter)... voorbereiden, over.\'',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '\'Hier treindienstleider ...(werkplek)..., maatregelen treindienstleider volgens WBI ...(nummer)..., werkplek ...(letter)... aangebracht, ik geef om ...(tijd)..., ...(functie)... toestemming om werkzaamheden aan te vangen, over\'',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '\'Hier ...(functie)..., WBI ...(nummer)..., werkplek ...(letter)..., ik krijg om ...(tijd)... toestemming van treindienstleider ...(werkplek)... om de werkzaamheden aan te vangen, over.\'',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext:
                            'Berichten bij het beëindigen van werkzaamheden:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '\'Hier ...(functie)..., ik meld werkzaamheden op ...(spoor/gebied/WBI)... gereed om ...(tijd)..., over.\'',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '\'Hier treindienstleider ...(werkplek)..., de werkzaamheden op ...(spoor/gebied/WBI)... zijn gereed om ...(tijd)..., over.\'',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Overige berichten',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Hieronder vallen informatieve berichten die tussen treindienstleiders en machinisten gebruikt worden om elkaar van situaties op de hoogte te stellen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De volgende berichtenstructuur moet hiervoor worden gebruikt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Reden voor het bericht (informatief en/of gevraagde actie);',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Opmerking (voorbeeld: Er is.../Ik zag.../Ik had.../Ik raakte...);',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Positie/plaatsbepaling;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Aard (betreft: infra/voorwerp/persoon);',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Staat (vast of bewegend).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Denk bij het voeren van informatieve gesprekken ook aan Luisteren, Samenvatten, Doorvragen (LSD) en aan de vorm van vraagstelling die je gebruikt voor een zo optimaal mogelijk resultaat:',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Open vragen',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'nodigen de ander uit te praten en een eigen invulling aan het antwoord te geven. Deze vragen kunnen beginnen met: hoe, wat, wie, waar, waarom, wanneer, etc.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Gesloten vragen',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'geven de mogelijkheid tot een \'ja\' of \'nee\' antwoord. Deze kunnen zinvol zijn als de ander een langdradige spreker is en jij specifieke informatie wilt. Veel gesloten vragen achter elkaar geven het effect van een \'kruisverhoor\'.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Suggestieve vragen',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'bevatten al een mening en kunnen manipulatief zijn: \'Vind je ook niet dat...?\' of \'Het is toch zeker zo dat...?\' Dergelijke sturende vragen zetten een ander soms voor het blok.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Meerkeuze vragen',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'laten weinig ruimte voor alternatieven: \'Wil je hier eten of gaan we naar het eetcafé?\' Stimuleert de ander snel een beslissing te nemen.',
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
