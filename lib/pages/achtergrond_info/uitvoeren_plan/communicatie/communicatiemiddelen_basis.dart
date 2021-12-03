import 'package:trdl_tool/all_imports.dart';

class CommunicatieMiddelenAchtergrond extends StatelessWidget {
  const CommunicatieMiddelenAchtergrond({Key? key}) : super(key: key);

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
                              title: 'Communicatiemiddelen - basisinformatie',
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
                                  'Voor de communicatie op de Verkeersleiding posten van ProRail (VL-post) worden verschillende communicatiemiddelen gebruikt:',
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
                              '- Inttel consoles;',
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
                              '- Voicelogger;',
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
                              '- GSM-R handheld;',
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
                              '- GSM-R portofoon.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/communicatie/intel_console_1.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: SubTitleText(
                              subtitle: 'Inttel console',
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
                                  'Het belangrijkste communicatiemiddel is de ARBI samen met de aangesloten Inttel consoles.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Met deze Inttel-console kun je:',
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
                              text: '- Inkomende telefoongesprekken aannemen;',
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
                              text: '- Uitgaande telefoongesprekken opzetten;',
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
                                  '- Hotlines (directe communicatie tussen twee functionarissen) aannemen en opzetten;',
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
                              text: '- GSM-R gesprekken voeren:',
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
                                  '* Point to Point (P2P) gesprekken met MCN aannemen en opzetten;',
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
                                  '* Algemene- en alarmoproepen aannemen en opzetten.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/communicatie/intel_console_2.png',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Image.asset(
                              'assets/images/achtergrond_info/communicatie/intel_console_3.png',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Initiëren van een alarmoproep:',
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
                                  '1. Druk in module 1 de \'Alarm\' lijntoets (1) van het gewenste oproepgebied.',
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
                                  'a. De \'Alarm\' lijntoets (1) brandt continu;',
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
                                  'b. De \'Bevestig\' toets (2) knippert en het label bij deze toets licht op en krijgt dubbel formaat. Het label bij deze toets toont \'Bevestig Alarm\' alsmede de gebiedsindicatie als in het label van de \'Alarm\' lijntoets (1).',
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
                                  '2. Druk de \'Bevestig\' toets (2) om de oproep daadwerkelijk te initiëren.',
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
                                  'a. Hierna brandt de \'Alarm\' lijntoets (1) continu en toont het label van de \'Bevestig\' toets (2) weer de rustsituatie (wit-op-grijs);',
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
                                  'b. In de telefoonhoorn is de wachttoon hoorbaar gedurende 7 seconden;',
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
                                  'c. Het label bij de \'Alarm\' lijntoets (1) krijgt een dubbel formaat in rood-op-wit de getoonde informatie blijft gelijk (alarm en gebiedsindicatie);',
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
                                  'd. Op het bij de gebruikte handset behorende functiedisplay verschijnt in dezelfde kleur dezelfde informatie als bij het label van de \'Alarm\' lijntoets (1);',
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
                                  'e. Het label van de \'Alarm Uit\' (3) lijntoets is niet langer wit-op-grijs, maar wordt (ter indicatie van bedienbaarheid) rood-op-wit, het label krijgt dubbel formaat en toont \'Alarm Uit\' alsmede de gebiedsindicatie zoals in het label van de staande \'Alarm\' lijntoets (1).;',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Bijzondere situaties',
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
                                  '- Indien na selectie van een oproepgebied een ander oproepgebied geselecteerd wordt dan vervalt de selectie van het eerste oproepgebied;',
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
                                  '- Met het drukken op de \'Clear\' toets (5) alvorens op de \'Bevestig\' toets (2) gedrukt te hebben vervalt de selectie in het overzicht oproepgebieden en wordt de rustsituatie hersteld;',
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
                                  '- Een gekozen selectie blijft staan totdat de \'Clear\' toets (5) gedrukt wordt of een andere selectie gedaan wordt.',
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
                              subtitle: 'Handboek Machinist',
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
                                  'Tijdens het rijden van een trein in 40 km/h gebieden is het voor een machinist niet toegestaan gebruik te maken van communicatiemiddelen, behalve de GSM-R alarmoproep.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: BodyText(
                              text: 'Uitzonderingen zijn het gebruik van:',
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
                                  '- de boordomroep om de stationsnaam om te roepen;',
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
                              text: 'de alarmoproep bij de portofoon en GSM-R;',
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
                              text: '- de portofoon bij geduwd rangeren;',
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
                              text: '- de portofoon bij geduwd rangeren;',
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
                                  '- een GSM of portofoon als deze dient als beschermingsmiddel voor \'alleenwerkenden\'.',
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
                                  'Bij defecte of ontbrekende ATB-treinapparatuur is het gebruik van de GSM tijdens het rijden van een trein niet toegestaan.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              '40 km/u gebied',
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
                              text: 'Definitie:',
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
                                  '- Daar waar door seingeving opgelegd wordt de snelheid te begrenzen tot 40 km/u of zoveel minder als nodig is om voor het eerstvolgende \'stop\' tonende sein te kunnen stoppen;',
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
                                  '- Daar waar door seingeving of een aanwijzing opgelegd wordt de snelheid te beperken tot snelheid van maximaal 40 km/u.',
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
                              subtitle: 'Ontvangen van een alarmoproep',
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
                                  '1. Een alarm wordt door een machinist of een andere treindienstleider geïnitieerd.',
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
                                  'a. In een van de eerste twee kolommen knippert een \'Alarm\' lijntoets (1). In het label wordt de initiator getoond: \'MCN\' + treinnummer of VL-post indicatie, alsmede de alarmgebiedsindicatie (wit-op-rood);',
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
                              text: 'b. Tevens is het alarmsignaal hoorbaar.',
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
                                  '2. Druk op de desbetreffende \'Alarm\' lijntoets (1) om de alarmoproep aan te nemen',
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
                              text: 'a. Het alarmsignaal stopt;',
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
                                  'b. De desbetreffende \'Alarm\' lijntoets (1) brandt continu;',
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
                                  'c. Het label verandert van kleur, wordt rood-op-wit;',
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
                                  'd. Op het bij de gebruikte handset behorende functiedisplay wordt in dezelfde kleur de bij de \'Alarm\' lijntoets (1) behorende labelinformatie getoond;',
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
                                  'e. Eventuele andere staande verbindingen anders dan alarmen worden automatisch op \'Hold\' gezet;',
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
                                  'f. Het label van de \'Alarm Uit\' lijntoets (3) is niet langer wit-op-grijs, maar wordt rood-op-wit (ter indicatie dat deze toets bedienbaar is), het label krijgt dubbel formaat en toont \'Alarm Uit\' alsmede de gebiedsindicatie als in het label van de staande \'Alarm\' lijntoets (1).',
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
                                  '3. Er is nu gelegenheid om een alarmgesprek te voeren.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Bijzondere situaties:',
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
                                  '- De alarmtoon blijft hoorbaar totdat een (van de) ontvangende TRDL(\'s) het alarm heeft aangenomen, ongeacht op welke VL-post dat heeft plaatsgevonden;',
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
                                  '- Als er door de initiërende MCN geen treinnummer is ingevoerd, wordt het mobiele nummer getoond.',
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
                              subtitle: 'Verlaten van een alarmoproep',
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
                                  '1. Druk op de \'Hold\' toets (6) van de desbetreffende handset, hierdoor wordt het gesprek verlaten. Het alarm \'buiten\' blijft gewoon actief. De \'Alarm\' lijntoets dooft.',
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
                                  'a. Het bij de desbetreffende \'Alarm\' lijntoets (1) behorende label geeft de indicatie dat het gesprek nog steeds actief is, maar in de wacht staat;',
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
                                  'b. Op het bij de gebruikte handset behorende functiedisplay wordt de bij het alarm behorende labelinformatie niet meer getoond;',
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
                                  'c. Het label van de \'Alarm Uit\' lijntoets (3) wordt rood-op-wit (ter indicatie dat deze toets bedienbaar is), krijgt weer enkel formaat en toont niet langer de gebiedsindicatie als in het label van de staande \'Alarm\' lijntoets (1).',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #5*/
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
                                  'Deelname aan of terugkeren naar een alarmoproep',
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
                                  '1. Druk op de \'Alarm\' lijntoets (1) van het desbetreffende alarm, hierdoor wordt de TRDL (weer) bij de alarmoproep betrokken.',
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
                                  'a. Het bij de desbetreffende \'Alarm\' lijntoets (1) behorende label blijft staan in rood-op-wit en geeft de indicatie dat het gesprek op de handset staat;',
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
                                  'b. De \'Alarm\' lijntoets (1) brandt continu;',
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
                                  'c. Op het bij de gebruikte handset behorende functiedisplay wordt in dezelfde kleur de bij de \'Alarm\' lijntoets (1) behorende labelinformatie getoond;',
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
                                  'd. Het label van de \'Alarm Uit\' lijntoets (3) is niet langer wit-op-grijs, maar rood-op-wit (ter indicatie dat deze toets bedienbaar is) en krijgt dubbel formaat en toont \'Alarm Uit\', alsmede de gebiedsindicatie als in het label van de staande \'Alarm\' lijntoets (1).',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #6*/
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
                              subtitle: 'Beëindigen alarmoproep',
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
                                  'Als je een alarmoproep beëindigt, druk je op \'Alarm Uit\' en daarna bevestig je dit door middel van het indrukken van toets (2). Staat de alarmoproep op \'Hold\' dan moet je eerst de \'Alarm\' lijntoets (1) weer activeren.',
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
                                  'Wil je meer weten over de bedieningsmogelijkheden van de Inttel console lees dan de gebruiksaanwijzing.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #7*/
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
                              subtitle: 'Voicelogger',
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
                                  'Elke VL-post heeft een voicelogger in de telecomruimte. Deze voicelogger neemt alle in- en uitgaande gesprekken op van de VL-post.',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #8*/
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
                              subtitle: 'GSM-R noodtelefoon (handheld)',
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
                                  'De GSM-R handheld is in basis een gewoon GSM-toestel. Met deze GSM-R handhelds kunnen algemene- en alarmoproepen via GSM-R worden gedaan en ontvangen. De GSM-R handhelds mogen uitsluitend gebruikt worden bij landelijke/volledige onbeschikbaarheid van GSM-R en/of uitval VL-post lokale ARBI en bij een evacuatie van de VL-post.',
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
                                  'Sinds april 2013 wordt gebruikt gemaakt van de Sagem Tigr 350R.',
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
                                  'Het telefoonboekje van de GSM-R bevat uitsluitend de nummers die noodzakelijk zijn om algemene- en alarmoproepen in voor de VL-post specifieke gebieden uit te zenden. Dat wil zeggen dat alle alarmgebieden en algemene oproepgebieden van de desbetreffende VL-post beschikbaar zijn op elke GSM-R handheld; GSM-R handhelds zijn dus niet specifiek voor een bepaald treindienstleidersgebied.',
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Image.asset(
                              'assets/images/achtergrond_info/communicatie/gsm_r_handheld.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #9*/
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
                              subtitle: 'GSM-R portofoon',
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
                                  'De GSM-R portofoon maakt gebruik van het GSM-R netwerk van ProRail, dat deel uitmaakt van de spoorweginfrastructuur. De GSM-R portofoon stelt groepen medewerkers bij het spoor in staat op een veilige manier rechtstreeks met elkaar te communiceren. Daarnaast kan direct worden gesproken met treindienstleiders, met eigen bijstuurders en met machinisten van treinen. Deze nieuwe portofoons staan ook ter beschikking aan de PCA\'s.',
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
                                  'Een groep medewerkers van een vervoerder op een geografisch beperkt gebied (bijv. een rangeerterrein) communiceert met elkaar onderling. Een coördinator van de vervoerder (de zgn. bijstuurder) kan zo nodig worden opgeroepen voor bijvoorbeeld overleg en neemt dan ook deel aan de groepscommunicatie. Het is hierbij niet per sé noodzakelijk dat de bijstuurder beschikt over een GSM-R toestel.',
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
                                  'Ook kan er gecommuniceerd worden met de treindienstleider.',
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
                                  'Naast de (geografisch beperkte) groepscommunicatie is het mogelijk elkaar rechtstreeks aan te roepen, zonder dat de collega\'s meeluisteren.',
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
                                  'Bij incidenten kan er zowel door de treindienstleider als door de medewerkers alarm worden geslagen.',
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
                                  'Voor kritische toepassingen zoals rangeren, waarbij communicatie tussen rangeerder en machinist een must is, kan gebruik worden gemaakt van een bewaakte verbinding. De handhelds bewaken dan voortdurend dat ze beiden binnen bereik van het netwerk zijn en slaan zo nodig alarm als dat niet zo is.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Doelgroep',
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
                                  'GSM-R portofonie is bedoeld voor bedrijven die werkzaamheden verrichten op of in de onmiddellijke nabijheid van het spoor, bijvoorbeeld vervoerders en spoorbedrijven en voor wie het kunnen beschikken over veilige communicatiemiddelen van belang is.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Hoe herken ik deze portofoons op mijn Inttel?',
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
                                  'We gebruiken 8 cijfers. De portofoonnummers beginnen altijd met 9999, de resterende 4 cijfers worden onder de verschillende vervoerders verdeeld. De nummers worden dus als volgt getoond: 9999xxxx.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Hoe ziet de TRDL welke groep actief is?',
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
                                  'Als je een ingesprekstoon krijgt, is er niemand in de groep actief.',
                            ),
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Hoe kan ik als TRDL spreken?',
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
                                  'het is een simplex verbinding, dus 1 spreker tegelijk, net als bij een alarmoproep moet je voor spreken de spreeksleutel gebruiken.',
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
                            child: Image.asset(
                              'assets/images/achtergrond_info/communicatie/portofoon_telefoon.png',
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
