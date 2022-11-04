import '/all_imports.dart';

enum WhereToGoFromAICommmunicatieMiddelen {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_mondelinge_communicatie,
}

class AICommmunicatieMiddelen extends StatelessWidget {
  const AICommmunicatieMiddelen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AICommmunicatieMiddelenNavigation(),
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
                    title: 'Communicatiemiddelen - basisinformatie',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor de communicatie op de Verkeersleiding posten van ProRail (VL-post) worden verschillende communicatiemiddelen gebruikt:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '-Inttel consoles;\n\n- Voicelogger;\n\n- GSM-R handheld;\n\n- GSM-R portofoon',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_middelen/intel_console_1.png',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: 'Inttel console',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het belangrijkste communicatiemiddel is de ARBI samen met de aangesloten Inttel consoles.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Met deze Inttel-console kun je:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Inkomende telefoongesprekken aannemen;\n\n- Uitgaande telefoongesprekken opzetten;\n\n- Hotlines (directe communicatie tussen twee functionarissen) aannemen en opzetten;\n\n- GSM-R gesprekken voeren:',
                  ),
                  BodyText(
                    indents: 2,
                    text:
                        '* Point to Point (P2P) gesprekken met MCN aannemen en opzetten;\n\n* Algemene- en alarmoproepen aannemen en opzetten.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_middelen/intel_console_2.png',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_middelen/intel_console_3.png',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Initiëren van een alarmoproep:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "1. Druk in module 1 de 'Alarm' lijntoets (1) van het gewenste oproepgebied.",
                  ),
                  BodyText(
                    indents: 2,
                    text:
                        "a. De 'Alarm' lijntoets (1) brandt continu;\n\nb. De 'Bevestig' toets (2) knippert en het label bij deze toets licht op en krijgt dubbel formaat. Het label bij deze toets toont 'Bevestig Alarm' alsmede de gebiedsindicatie als in het label van de 'Alarm' lijntoets (1).",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "2. Druk de 'Bevestig' toets (2) om de oproep daadwerkelijk te initiëren.",
                  ),
                  BodyText(
                    indents: 2,
                    text:
                        "a. Hierna brandt de 'Alarm' lijntoets (1) continu en toont het label van de 'Bevestig' toets (2) weer de rustsituatie (wit-op-grijs);\n\nb. In de telefoonhoorn is de wachttoon hoorbaar gedurende 7 seconden;\n\nc. Het label bij de 'Alarm' lijntoets (1) krijgt een dubbel formaat in rood-op-wit de getoonde informatie blijft gelijk (alarm en gebiedsindicatie);\n\nd. Op het bij de gebruikte handset behorende functiedisplay verschijnt in dezelfde kleur dezelfde informatie als bij het label van de 'Alarm' lijntoets (1);\n\ne. Het label van de 'Alarm Uit' (3) lijntoets is niet langer wit-op-grijs, maar wordt (ter indicatie van bedienbaarheid) rood-op-wit, het label krijgt dubbel formaat en toont 'Alarm Uit' alsmede de gebiedsindicatie zoals in het label van de staande 'Alarm' lijntoets (1).",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Bijzondere situaties',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Indien na selectie van een oproepgebied een ander oproepgebied geselecteerd wordt dan vervalt de selectie van het eerste oproepgebied;\n\n- Met het drukken op de 'Clear' toets (5) alvorens op de 'Bevestig' toets (2) gedrukt te hebben vervalt de selectie in het overzicht oproepgebieden en wordt de rustsituatie hersteld;\n\n- Een gekozen selectie blijft staan totdat de 'Clear' toets (5) gedrukt wordt of een andere selectie gedaan wordt.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Handboek Machinist',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Tijdens het rijden van een trein in 40 km/h gebieden is het voor een MCN niet toegestaan gebruik te maken van communicatiemiddelen, behalve de GSM-R alarmoproep.\n\nUitzonderingen zijn het gebruik van:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- de boordomroep om de stationsnaam om te roepen;\n\n- de alarmoproep bij de portofoon en GSM-R;\n\n- de portofoon bij geduwd rangeren;\n\n- een GSM of portofoon als deze dient als beschermingsmiddel voor 'alleenwerkenden'.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij defecte of ontbrekende ATB-treinapparatuur is het gebruik van de GSM tijdens het rijden van een trein niet toegestaan.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '40 km/u gebied',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Definitie:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Daar waar door seingeving opgelegd wordt de snelheid te begrenzen tot 40 km/u of zoveel minder als nodig is om voor het eerstvolgende 'stop' tonende sein te kunnen stoppen;\n\n- Daar waar door seingeving of een aanwijzing opgelegd wordt de snelheid te beperken tot snelheid van maximaal 40 km/u.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Ontvangen van een alarmoproep',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '1. Een alarm wordt door een MCN of een TRDL geïnitieerd:',
                  ),
                  BodyText(
                    indents: 2,
                    text:
                        "a. In een van de eerste twee kolommen knippert een 'Alarm' lijntoets (1). In het label wordt de initiator getoond: 'MCN' + treinnummer of VL-post indicatie, alsmede de alarmgebiedsindicatie (wit-op-rood);\n\nb. Tevens is het alarmsignaal hoorbaar.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "2. Druk op de desbetreffende 'Alarm' lijntoets (1) om de alarmoproep aan te nemen",
                  ),
                  BodyText(
                    indents: 2,
                    text:
                        "a. Het alarmsignaal stopt;\n\nb. De desbetreffende 'Alarm' lijntoets (1) brandt continu;\n\nc. Het label verandert van kleur, wordt rood-op-wit;\n\nd. Op het bij de gebruikte handset behorende functiedisplay wordt in dezelfde kleur de bij de 'Alarm' lijntoets (1) behorende labelinformatie getoond;\n\ne. Eventuele andere staande verbindingen anders dan alarmen worden automatisch op 'Hold' gezet;\n\nf. Het label van de 'Alarm Uit' lijntoets (3) is niet langer wit-op-grijs, maar wordt rood-op-wit (ter indicatie dat deze toets bedienbaar is), het label krijgt dubbel formaat en toont 'Alarm Uit' alsmede de gebiedsindicatie als in het label van de staande 'Alarm' lijntoets (1).",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '3. Er is nu gelegenheid om een alarmgesprek te voeren.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Bijzondere situaties:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- De alarmtoon blijft hoorbaar totdat een (van de) ontvangende TRDL('s) het alarm heeft aangenomen, ongeacht op welke VL-post dat heeft plaatsgevonden;\n\n- Als er door de initiërende MCN geen treinnummer is ingevoerd, wordt het mobiele nummer getoond.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Verlaten van een alarmoproep',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "1. Druk op de 'Hold' toets (6) van de desbetreffende handset, hierdoor wordt het gesprek verlaten. Het alarm 'buiten' blijft gewoon actief. De 'Alarm' lijntoets dooft.",
                  ),
                  BodyText(
                    indents: 2,
                    text:
                        "a. Het bij de desbetreffende 'Alarm' lijntoets (1) behorende label geeft de indicatie dat het gesprek nog steeds actief is, maar in de wacht staat;\n\nb. Op het bij de gebruikte handset behorende functiedisplay wordt de bij het alarm behorende labelinformatie niet meer getoond;\n\nc. Het label van de 'Alarm Uit' lijntoets (3) wordt rood-op-wit (ter indicatie dat deze toets bedienbaar is), krijgt weer enkel formaat en toont niet langer de gebiedsindicatie als in het label van de staande 'Alarm' lijntoets (1).",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Deelname aan of terugkeren naar een alarmoproep',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "1. Druk op de 'Alarm' lijntoets (1) van het desbetreffende alarm, hierdoor wordt de TRDL (weer) bij de alarmoproep betrokken.",
                  ),
                  BodyText(
                    indents: 2,
                    text:
                        "a. Het bij de desbetreffende 'Alarm' lijntoets (1) behorende label blijft staan in rood-op-wit en geeft de indicatie dat het gesprek op de handset staat;\n\nb. De 'Alarm' lijntoets (1) brandt continu;\n\nc. Op het bij de gebruikte handset behorende functiedisplay wordt in dezelfde kleur de bij de 'Alarm' lijntoets (1) behorende labelinformatie getoond;\n\nd. Het label van de 'Alarm Uit' lijntoets (3) is niet langer wit-op-grijs, maar rood-op-wit (ter indicatie dat deze toets bedienbaar is) en krijgt dubbel formaat en toont 'Alarm Uit', alsmede de gebiedsindicatie als in het label van de staande 'Alarm' lijntoets (1).",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Beëindigen alarmoproep',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Als je een alarmoproep beëindigt, druk je op 'Alarm Uit' en daarna bevestig je dit door middel van het indrukken van toets (2). Staat de alarmoproep op 'Hold' dan moet je eerst de 'Alarm' lijntoets (1) weer activeren.\n\nWil je meer weten over de bedieningsmogelijkheden van de Inttel console lees dan de gebruiksaanwijzing.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Voicelogger',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Elke VL-post heeft een voicelogger in de telecomruimte. Deze voicelogger neemt alle in- en uitgaande gesprekken op van de VL-post.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'GSM-R noodtelefoon (handheld)',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De GSM-R handheld is in basis een gewoon GSM-toestel. Met deze GSM-R handhelds kunnen algemene- en alarmoproepen via GSM-R worden gedaan en ontvangen. De GSM-R handhelds mogen uitsluitend gebruikt worden bij landelijke/volledige onbeschikbaarheid van GSM-R en/of uitval VL-post lokale ARBI en bij een evacuatie van de VL-post.\n\nSinds april 2013 wordt gebruikt gemaakt van de Sagem Tigr 350R.\n\nHet telefoonboekje van de GSM-R bevat uitsluitend de nummers die noodzakelijk zijn om algemene- en alarmoproepen in voor de VL-post specifieke gebieden uit te zenden. Dat wil zeggen dat alle alarmgebieden en algemene oproepgebieden van de desbetreffende VL-post beschikbaar zijn op elke GSM-R handheld; GSM-R handhelds zijn dus niet specifiek voor een bepaald TRDLgebied.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_middelen/gsm_r_handheld.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'GSM-R portofoon',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "De GSM-R portofoon maakt gebruik van het GSM-R netwerk van ProRail, dat deel uitmaakt van de spoorweginfrastructuur. De GSM-R portofoon stelt groepen medewerkers bij het spoor in staat op een veilige manier rechtstreeks met elkaar te communiceren. Daarnaast kan direct worden gesproken met TRDL, met eigen bijstuurders en met MCN van treinen. Deze nieuwe portofoons staan ook ter beschikking aan de PCA's.\n\nEen groep medewerkers van een vervoerder op een geografisch beperkt gebied (bijv. een rangeerterrein) communiceert met elkaar onderling. Een coördinator van de vervoerder (de zgn. bijstuurder) kan zo nodig worden opgeroepen voor bijvoorbeeld overleg en neemt dan ook deel aan de groepscommunicatie. Het is hierbij niet per sé noodzakelijk dat de bijstuurder beschikt over een GSM-R toestel.\n\nOok kan er gecommuniceerd worden met de TRDL.\n\nNaast de (geografisch beperkte) groepscommunicatie is het mogelijk elkaar rechtstreeks aan te roepen, zonder dat de collega's meeluisteren.\n\nBij incidenten kan er zowel door de TRDL als door de medewerkers alarm worden geslagen.\n\nVoor kritische toepassingen zoals rangeren, waarbij communicatie tussen rangeerder en MCN een must is, kan gebruik worden gemaakt van een bewaakte verbinding. De handhelds bewaken dan voortdurend dat ze beiden binnen bereik van het netwerk zijn en slaan zo nodig alarm als dat niet zo is.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Doelgroep',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'GSM-R portofonie is bedoeld voor bedrijven die werkzaamheden verrichten op of in de onmiddellijke nabijheid van het spoor, bijvoorbeeld vervoerders en spoorbedrijven en voor wie het kunnen beschikken over veilige communicatiemiddelen van belang is.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Hoe herken ik deze portofoons op mijn Inttel?',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'We gebruiken 8 cijfers. De portofoonnummers beginnen altijd met 9999, de resterende 4 cijfers worden onder de verschillende vervoerders verdeeld. De nummers worden dus als volgt getoond: 9999xxxx.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Hoe ziet de TRDL welke groep actief is?',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Als je een ingesprekstoon krijgt, is er niemand in de groep actief.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Hoe kan ik als TRDL spreken?',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het is een simplex verbinding, dus 1 spreker tegelijk, net als bij een alarmoproep moet je voor spreken de spreeksleutel gebruiken.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_middelen/portofoon_telefoon.png',
                  ),
                  SizedBoxH(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AICommmunicatieMiddelenNavigation extends StatelessWidget {
  const AICommmunicatieMiddelenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAICommmunicatieMiddelen>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromAICommmunicatieMiddelen result) async {
        if (result == WhereToGoFromAICommmunicatieMiddelen.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromAICommmunicatieMiddelen.ww_mondelinge_communicatie) {
          await Navigator.pushNamed(
            context,
            'ww_mondelinge_communicatie',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromAICommmunicatieMiddelen>>[
        const PopupMenuItem<WhereToGoFromAICommmunicatieMiddelen>(
          value: WhereToGoFromAICommmunicatieMiddelen.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAICommmunicatieMiddelen>(
          value:
              WhereToGoFromAICommmunicatieMiddelen.ww_mondelinge_communicatie,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Mondelinge Communicatie',
          ),
        ),
      ],
    );
  }
}