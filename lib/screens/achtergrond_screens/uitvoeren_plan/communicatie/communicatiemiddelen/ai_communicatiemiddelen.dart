import '/all_imports.dart';

class AICommunicatieMiddelen extends StatelessWidget {
  const AICommunicatieMiddelen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AICommunicatieMiddelenNavigation(),
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
                    title: 'Communicatiemiddelen - Basisinformatie',
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
                        '-Inttel consoles;\n- Voicelogger;\n- Fallback tablet;\n- GSM-R handheld;\n- GSM-R portofoon.',
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
                        '- Inkomende en uitgaande telefoongesprekken aannemen en opzetten;\n- Alarmoproepen opzetten en aannemen;\n- Point-to-point gesprekken aannemen en opzetten van en naar een enkele MCN;\n- Algemene oproepen naar meerdere treinen in meerdere gebieden opzetten.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_1.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Initieren alarmoproep',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_2.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: "Selecteer 'Alarm'",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_3.png',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'In een rood vlak worden tegels met gebiedsbenaming getoond waaruit je kan kiezen.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Selecteer het gebied dat je wilt alarmeren.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het gekozen gebied wordt wit, om te herstellen klik je het gebied nogmaals aan.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_4.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Start de alarmoproep door op de groene knop te tikken',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Bijzonderheden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Indien na selectie van een oproepgebied een ander oproepgebied geselecteerd wordt dan vervalt de selectie van het eerste oproepgebied;\n- Je kan meerdere alarmen opzetten: dit doe je door de stappen hierboven per gebied  te doorlopen, dus 1 voor 1 initiëren. Als je klaar bent, is de rij met gealarmeerde gebieden rechts in beeld in het overzicht van gesprekken;\n- Je deselecteert een alarmoproep door nogmaals op de alarmknop te klikken om weer in startscherm te komen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Ontvangen van een alarmoproep',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_5.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Het alarmsignaal is hoorbaar. Op het scherm wordt het gebied in rood veld getoond, met de groene knop (hoorn) om op de oproep aan te nemen.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Tik op de groene knop om de alarmoproep aan te nemen.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_6.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De alarmoproep is nu actief. In het venster bovenin zie je de aangenomen alarmoproep, het alarmgebied en het treinnummer (achter MCN) of VL-post indicatie. Het alarmsignaal stopt:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "- Eventuele andere uitstaande gesprekken, anders dan alarmen, worden automatisch 'on hold' gezet;\n- Er is nu gelegenheid om een alarmgesprek te voeren.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Bijzonderheden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- De alarmtoon blijft hoorbaar totdat een (van de) ontvangende TRDL het alarm heeft aangenomen, ongeacht op welke VL-post dat heeft plaatsgevonden;\n- Als er door de initierende MCN geen treinnummer is ingevoerd, wordt het mobiele nummer getoond.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Boodschap inspreken tijdens de alarmoproep',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_7.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De alarmoproep is aangenomen en heeft een rode kleur.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'De PTT-toets verschijnt en blijft zichtbaar zolang de alarmoproep actief is.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De PTT-toets duidt spreekmogelijkheid aan. Er is een opstarttijd van 7 seconden nodig gedurende welke een piepje hoorbaar is. Wanneer de opstarttijd verstreken is kan men op de microfoon op het scherm duwen (PTT toets).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Houd de PTT-knop ingedrukt als je wilt spreken.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_8.png',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'De PTT-knop wordt groen, je kunt nu spreken.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Laat de knop los om een gesprekspartner aan het woord te laten. De knop werkt net als de spreeksleutel die in de hoorn van de telefoon verwerkt is:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        'Je houdt een van beide ingedrukt tijdens het spreken;\n- Als je de ander aan het woord wilt laten, laat je de knop los. Wil je weer spreken, dan druk je hem weer in (simplex).',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle:
                        "Tijdelijk verlaten van en terugkeren naar een alarmoproep ('on hold')",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_9.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'De alarmoproep is actief.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        "Zet de oproep 'on hold' door op de pauzeknop te klikken.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het gesprek blijft zichtbaar in het veld eronder met actieve en/of binnenkomende gesprekken (A).',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_10.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: "De alarmoproep staat 'on hold'.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Klik op de groene pauzeknop van het desbetreffende alarm om terug te keren.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Je wordt weer bij de alarmoproep betrokken.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text: 'Bijzonderheden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "Als een MCN een alarmoproep plaatst, worden een aantal cellen in alarm gezet. Als je nu als TRDL de binnengekomen alarmoproep 'on hold' zet en je besluit het gehele baanvak (PPLG - vrije baan - PPLG) in alarm te zetten, dan zal deze alarmoproep niet binnenkomen in het gebied dat al in alarm stond. Ook een boodschap die je inspreekt zal niet binnenkomen in dat gebied. Hier kan dus een gevaarlijke situatie ontstaan!",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Beëindigen alarmoproep',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_11.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'De alarmoproep is actief.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Beeindig de alarmoproep door op de rode knop te klikken',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_12.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Op het scherm verschijnt de tekst: 'Alarm beëindigen'. Rechtsonder verschijnen twee knoppen.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Bevestig de beeindiging van de alarmoproep met het groene vinkje.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'N.B.: Door op de knop erboven met de zwarte pijl te klikken, breek je het beëindigen af en blijft het alarm actief.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_13.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: 'De alarmoproep is nu beëindigd.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Machinistenoproep ontvangen (point-to-point)',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_14.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Een inkomende machinistenoproep herken je aan de tekst 'MCN <treinnummer>' in een blauw veld.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Klik op het groene icoon om de oproep aan te nemen.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_15.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De verbinding met de betreffende trein is nu actief. Herkenbaar aan de tekst MCN <treinnummer> op een donkerblauwe achtergrond. De volgende iconen zijn nu zichtbaar geworden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Gesprek doorverbinden;\n- Gesprek pauzeren ('on hold'",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_16.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Klik op het rode icoon om het gesprek te beëindigen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Machinistenoproep initiëren (point-to-point)',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_17.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext:
                        "Klik op het icoon met de trein en de tekst 'MCN' om een MCN/trein te bellen (point-to-point).",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_18.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Voeg het nummer van de trein in waarmee verbinding moet worden gemaakt.\nKlik op het groene icoon om de oproep te plaatsen.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_18.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Het gesprek is nu actief; herkenbaar aan de tekst MCN<treinnummer> op een donkerblauwe achtergrond. De volgende iconen zijn nu zichtbaar geworden:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Gesprek doorverbinden;\n- Gesprek pauzeren ('on hold');\n- Gesprek beëindigen.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Algemene oproep ontvangen',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_19.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Een inkomende Algemene Oproep herken je aan de tekst Algem<gebied> in een lichtblauw veld.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Klik op het groene icoon om de oproep aan te nemen.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_20.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De Algemene oproep is nu actief. Hrkenbaar aan de tekst Algem<gebied> op een lichtblauwe achtergrond.\nDonkerblauw = MCN oproep (point-to-point);\n- Lichtblauw = Algemene Oproep.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_21.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Klik op het rode icoon om de gesprek te beëindigen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Algemene oproep initiëren',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_22.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext:
                        "Klik op het icoon met de tekst 'ALG' om een Algemene Oproep te plaatsen.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_23.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Selecteer de gewenste zone voor de Algemene Oproep.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_24.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'De algemene oproep is nu actief.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Klik op het rode icoon om het gesprek te beëindigen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Handboek MCN',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Tijdens het rijden van een trein in 40 km/h gebieden is het voor een MCN niet toegestaan gebruik te maken van communicatiemiddelen, behalve de GSM-R alarmoproep. Uitzonderingen zijn het gebruik van:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "- Boordomroep om de stationsnaam om te roepen;\n- Alarmoproep bij de portofoon en GSM-R;\n- Portofoon bij geduwd rangeren;\n- GSM of portofoon als deze dient als beschermingsmiddel voor 'alleenwerkenden'.",
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
                    indents: 1,
                    text:
                        "- Daar waar door seingeving opgelegd wordt de snelheid te begrenzen tot 40 km/u of zoveel minder als nodig is om voor het eerstvolgende 'stop' tonende sein te kunnen stoppen;\n- Daar waar door seingeving of een aanwijzing opgelegd wordt de snelheid te beperken tot een snelheid van maximaal 40 km/u.",
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Opbouw gebruikersinterface Inttel',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_25.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: 'Zone 1a:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'De toetsen in deze zone worden gebruikt voor het opzoeken en starten van de functionaliteiten.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Zone 1b:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'Deze zone is het interactief venster voor bepaalde functionaliteiten bij de toetsen in zone 1a en 1c. Alle toetsen in zone 1a en 1c blijven zichtbaar en bereikbaar. De linkerzijde van zone 1b wordt gebruikt voor het weergeven van verschillende lijsten, bijv. de weergave van de geselecteerde contacten. Bovenaan links in zone 1b wordt de boomstructuur weergegeven van de lijst contacten waarin men zoekt.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Zone 1b:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'Deze zone is het interactief venster voor bepaalde functionaliteiten bij de toetsen in zone 1a en 1c. Alle toetsen in zone 1a en 1c blijven zichtbaar en bereikbaar. De linkerzijde van zone 1b wordt gebruikt voor het weergeven van verschillende lijsten, bijv. de weergave van de geselecteerde contacten. Bovenaan links in zone 1b wordt de boomstructuur weergegeven van de lijst contacten waarin men zoekt.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Zone 1c:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'Deze toetsen worden gebruikt voor het opzoeken en starten van de functionaliteiten.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Zone 2a:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'Deze zone toont de weergave van de actieve inkomende en uitgaande oproepen. De linkerzijde van de zone 2a geeft de naam weer van de inkomende of uitgaande oproep. Aan de rechterzijde van het scherm worden iconen weergegeven waarmee je een bepaalde actie kan uitvoeren op de inkomende oproep (bijv. doorschakelen).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Zone 2b:',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "In deze zone bevinden zich de snel verstelbare instellingen. De toets geeft de actieve status weer. Gedurende oproepen die 'push-to-talk' functionaliteit ondersteunen bevindt zich op het scherm hier ook een PTT-toets.",
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
                        'In een afgeschermde omgeving kunnen gesprekken worden teruggeluisterd door aangewezen functionarissen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Fallback tablet',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De Inttel beschikt over een fallback tablet. Bij een eventuele ontruiming van de post of van het OCCR, kan deze eenvoudig worden meegenomen. De fallback tablet werkt op dezelfde manier als de console zelf en kent dezelfde interface. De fallback tablet werkt via een 4G verbinding en kan daardoor buiten de post gebruikt worden. Op de post blijft tevens een GSM-R handheld beschikbaar.',
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
                        'De GSM-R handheld is in basis een gewoon GSM-toestel. Met deze GSM-R handhelds kunnen algemene- en alarmoproepen via GSM-R worden verzonden. De GSM-R handhelds mogen uitsluitend gebruikt worden bij landelijke/volledige onbeschikbaarheid van GRI en/of uitval VL-post lokale ARBI en bij een evacuatie van de VL-post.\n\nSinds oktober 2021 wordt gebruik gemaakt van de SED OPH 810R.\n\nHet telefoonboekje van de GSM-R bevat uitsluitend de nummers die noodzakelijk zijn om algemene- en alarmoproepen in voor de VL-post specifieke gebieden uit te zenden. Dat wil zeggen dat alle alarmgebieden en algemene oproepgebieden van de desbetreffende VL-post beschikbaar zijn op elke GSM-R handheld; GSM-R handhelds zijn dus niet specifiek voor een bepaald treindienstleidersgebied.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/communicatie_middelen/ai_communicatiemiddelen_26.png',
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
                        "De GSM-R portofoon maakt gebruik van het GSM-R netwerk van ProRail, dat deel uitmaakt van de spoorweginfrastructuur. De GSM-R portofoon stelt groepen medewerkers bij het spoor in staat op een veilige manier rechtstreeks met elkaar te communiceren. Daarnaast kan direct worden gesproken met TRDL, met eigen bijstuurders en met MCN van treinen.\n\nEen groep medewerkers van een vervoerder op een geografisch beperkt gebied (bijvoorbeeld een rangeerterrein) communiceert met elkaar onderling. Een coördinator van de vervoerder (de zgn. bijstuurder) kan zo nodig worden opgeroepen voor bijvoorbeeld overleg en neemt dan ook deel aan de groepscommunicatie. Het is hierbij niet per sé noodzakelijk dat de bijstuurder beschikt over een GSM-R toestel.\n\nOok kan er punt-tot-punt gecommuniceerd worden met de TRDL.\nNaast de (geografisch beperkte) groepscommunicatie is het mogelijk elkaar rechtstreeks aan te roepen, zonder dat de collega's meeluisteren.\nBij incidenten kan er zowel door de treindienstleider als door de medewerkers alarm worden geslagen.\n\nVoor kritische toepassingen zoals rangeren, waarbij communicatie tussen rangeerder en MCN een must is, kan gebruik worden gemaakt van een bewaakte verbinding. De handhelds bewaken dan voortdurend dat ze beiden binnen bereik van het netwerk zijn en slaan zo nodig alarm als dat niet zo is.",
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
                        'GSM-R portofonie is bedoeld voor bedrijven die werkzaamheden verrichten op of in de onmiddellijke nabijheid van het spoor, bijv. vervoerders en spoorbedrijven en voor wie het kunnen beschikken over veilige communicatiemiddelen van belang is.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Hoe herken ik deze portofoons op mijn Inttel?',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- We gebruiken 8 cijfers. De portofoonnummers beginnen altijd met 9999;\n- De resterende 4 cijfers worden onder de verschillende vervoerders verdeeld;\n- De nummers worden dus als volgt getoond: 9999xxxx.',
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
                        'Als je een ingesprektoon krijgt, is er niemand in de groep actief.',
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AICommunicatieMiddelenNavigation extends StatelessWidget {
  const AICommunicatieMiddelenNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_mondelinge_communicatie) {
          await Navigator.pushNamed(
            context,
            'ww_mondelinge_communicatie',
          );
        } else if (result == PopupNavigation.ai_communicatiesysteem) {
          await Navigator.pushNamed(
            context,
            'ai_communicatiesysteem',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_mondelinge_communicatie,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Mondelinge Communicatie',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_mondelinge_communicatie,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Communicatiesysteem GSM-R',
          ),
        ),
      ],
    );
  }
}
