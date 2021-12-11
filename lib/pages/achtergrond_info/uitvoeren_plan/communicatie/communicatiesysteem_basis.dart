import 'package:trdl_tool/all_imports.dart';

class CommunicatieSysteemAchtergrond extends StatelessWidget {
  const CommunicatieSysteemAchtergrond({Key? key}) : super(key: key);

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
                        title: 'Communicatiesysteem GSM-R - basisinformatie',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: '​​​​​​​GSM-R betekent GSM voor Railways. GSM-r is een telecommunicatiesysteem dat gebaseerd is op GSM-techniek. GSM-R is specifiek ontworpen voor gebruik binnen de spoorbranche.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: '​​​​​​​ProRail is eigenaar van het GSM-R netwerk in Nederland. Dit netwerk is begin van deze eeuw gebouwd en op dit moment is het gehele Nederlandse spoorwegnet uitgerust met GSM-R. Concreet betekent dit dat er meer dan 300 basisstations zijn gebouwd, de werkplekken op de treindienstleidersposten zijn aangepast en alle spoortunnels van speciale GSM-R apparatuur zijn voorzien. Ook al het spoorwegmaterieel is op dit moment uitgerust met GSM-R apparatuur. ',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: 'Soorten veiligheidscommunicatie binnen GSM-R',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Alarmoproepen: een soort groepsoproep met een hoge prioriteit voor gevaarlijke situaties;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Point-to-point oproepen: rechtstreeks contact tussen MCN en TRDL of TRDL en rangeerder/storingsdienst indien in bezit van een GSMR-portofoon;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Algemene oproepen: meerdere gelijktijdige ontvangers. In tegenstelling tot de alarmoproep en point tot point oproepen, kan een algemene oproep alleen door de treindienstleider worden opgezet.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Kenmerken',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Een alarmoproep blijft actief waardoor iedere trein die het betrokken gebied inrijdt automatisch wordt gealarmeerd;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Treindienstleiders kunnen meerdere oproepen tegelijkertijd binnenkrijgen of opzetten;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Iedere oproep van een machinist komt altijd aan bij een treindienstleider.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RNederland.png',
                      ),
                      SizedBoxH(),
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
                        title: 'Opbouw GSM-R',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Het GSM-R netwerk in Nederland heeft momenteel de beschikking over ongeveer 360 BTS’n  en zendmasten. Een BTS is een zender die zich langs de spoorbaan bevindt en die via een zendmast draadloze spraak- en datacommunicatie mogelijk maakt over het GSM-R netwerk van ProRail.​​​​​​​ Het GSM-R netwerk bestaat uit cellen. Binnen de operatie spreken we van een Cel als we het hebben over een combinatie van deze twee techniekvelden.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RBasisstation.png',
                      ),
                      BodyText(
                        indents: 0,
                        text: 'Basisstation (BTS)',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Zendmasten hebben maximaal 3 sectoren, elk met een bereik van 120 graden. Elke BTS heeft 1 tot 3 sectoren die zo optimaal mogelijk gericht worden zodat er +/- maximaal 7 km spoorbaan \'gevoed\' wordt door één cel.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenBereik.png',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenVerdeling.png',
                      ),
                      SizedBoxH(),
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
                        title: 'Werking cel',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'Een cel kan maar één taak tegelijk uitvoeren. Gelukkig zijn er wel prioriteiten, waarbij een alarmoproep de hoogste prioriteit heeft. Als een cel een taak uitvoert met een lagere prioriteit wordt deze taak automatisch beëindigd als er een taak met een hogere prioriteit komt. Een alarm drukt een point-to-point gesprek weg, een point-to-point van een treindienstleider naar een machinist drukt het onderling verkeer van machinisten weg.',
                      ),
                      const SizedBoxH(),
                      Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        children: const [
                          TableRow(
                            children: [
                              TableTextBold(text: 'Cel in alarm'),
                              TableTextBold(text: 'Cel niet in alarm'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Geen point to point oproep mogelijk'),
                              TableText(text: 'Wel point to point oproep mogelijk'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Geen algemene oproep mogelijk'),
                              TableText(text: 'Algemene oproep mogelijk, deze wordt door een ieder die zich in het gebied bevindt gehoord'),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'Gesprek mogelijk via de alarmknop, het gesprek is voor een ieder die zich in het gebied bevindt te horen'),
                              TableText(text: ''),
                            ],
                          ),
                          TableRow(
                            children: [
                              TableText(text: 'De luide toon alarm wordt in de trein en/of op de post hoorbaar'),
                              TableText(text: ''),
                            ],
                          ),
                        ],
                      ),
                      const SizedBoxH(),
                      const CardTitle(
                        title: 'Alarmgebieden',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'In samenspraak met de posten zijn de alarmgebieden op de volgende wijze geconfigureerd. Een alarmgebied is het gebied PPLG - vrije baan - PPLG. Het in het label genoemde gebied staat gegarandeerd in alarm (inclusief beide PPLG’s).',
                      ),
                      const SizedBoxH(),
                      const InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RVoorbeeldAlarmgebied.png',
                      ),
                      const BodyText(
                        indents: 0,
                        text: 'Voorbeeld alarmgebied',
                      ),
                      const SizedBoxH(),
                      const CardTitle(
                        title: 'Uitgaande alarmoproep geplaatst door de TRDL',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'Bij het plaatsen van een alarmoproep door de treindienstleider worden het baanvak en de aangrenzende pplg’s in alarm gezet.',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'Voorbeeld: als de TRDL de knop Ehv-Hm indrukt, wordt de vrije baan tussen Eindhoven en Helmond in alarm gezet en de pplg’s Eindhoven en Helmond.',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'Een pplg kan op meerdere manieren in alarm gezet worden. In het voorbeeld Eindhoven kan dat op 3 manieren:',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- door het drukken van de knop Ehv-Hm;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- door het drukken van de knop Ehv-Wt;',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 1,
                        text: '- door het drukken van de knop Ehv-At.',
                      ),
                      const SizedBoxH(),
                      const InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RAlarmKnoppen.png',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'De keus is aan de TRDL welke knop er ingedrukt wordt, rekening houdend met welk baanvak er mee gealarmeerd wordt.',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'Als een TRDL meerdere gebieden in alarm wil zetten, moeten deze ook geactiveerd worden.',
                      ),
                      const SizedBoxH(),
                      const CardTitle(
                        title: 'Inkomende alarmoproep geplaatst door de MCN',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'De gebieden buiten zijn geconfigureerd aan de hand van de GSM-R cellen. In samenspraak met de post en spoorwegveiligheid is vastgesteld welke cellen in alarm gezet worden in het geval dat een machinist een alarmoproep plaatst.',
                      ),
                      const SizedBoxH(),
                      const InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenBaanvak1.png',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'Als er een alarmoproep geplaatst wordt, gaat de cel van waaruit de oproep geplaatst wordt in alarm. Bovendien gaan, met in achtneming van voldoende remrijweg, de voor- en achterliggende cellen in alarm. De hoeveelheid cellen wordt bepaald door de snelheid van de trein en de benodigde remweg. De cellen bestrijken alle sporen die zich binnen het gebied bevinden. Het gebied dat door de MCN in alarm wordt gezet is dus kleiner dan het gebied dat in alarm wordt gezet door de TRDL.',
                      ),
                      const SizedBoxH(),
                      const InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenBaanvak2.png',
                      ),
                      const SizedBoxH(),
                      const CardTitle(
                        title: 'Werken met grenscellen',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'Sommige GSM-R cellen vallen precies op de grens van twee treindienstleidersgebieden. Deze cellen worden grenscellen genoemd.',
                      ),
                      const SizedBoxH(),
                      const BodyText(
                        indents: 0,
                        text: 'Het kan voorkomen dat een basisstation uitvalt of niet bereikbaar is vanwege verstorende elementen in de buurt van dit station. Wanneer dit gebeurt, zal het signaal op zoek gaan naar een basisstation dat sterk genoeg is om het signaal op te pakken en een verbinding kan opbouwen. De trein blijft als dat mogelijk is, contact houden met de voorgaande cel en blijft op zoek naar een GSM-R cel. Als in dit geval een machinist een alarmoproep plaatst, kan deze in een ander gebied terecht komen. Voor jou als treindienstleider kan dit betekenen dat je een alarmoproep van een machinist ontvangt die zich niet in jouw gebied bevindt. Als treindienstleider moet je dus bij elke alarmoproep vaststellen waar de trein zich bevindt die de alarmoproep plaatst.',
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
                        title: 'Werkwijze point to point oproep',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Een point-to-point oproep is een oproep waarbij de treindienstleider een bewuste keus maakt voor het oproepen van een specifieke trein. Dit doet hij door het intoetsen van het treinnummer. Andersom kan de machinist van een trein een point-to-point oproep opzetten om een treindienstleider te bereiken. Deze laatste oproep kan op 2 manieren naar de console van de treindienstleider worden gerouteerd.',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- LDA (Location Dependent Addressing). Als een machinist een oproep plaatst, dan zoekt het treinnummer via TROTS waar de trein zich bevindt. Deze locatie is aan een treindienstleider gekoppeld, zodat de oproep op de juiste plek binnenkomt;',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- CDA (Cell Depended Addressing). Bij CDA spelen de cellen waarin de trein zich bevindt een belangrijke rol. Als een oproep geplaatst wordt in een bepaalde cel en het treinnummer wordt niet herkend dan komt de oproep binnen bij de treindienstleider waaraan de cel gekoppeld is.',
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
                    children: const [
                      CardTitle(
                        title: 'Werking alarmoproepen binnen GSM-R',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wanneer een gebied door een alarmoproep van een MCN of TRDL in een alarmstatus is gebracht, blijft deze \'staan\'. Dit betekent dat het alarm blijft alarmeren tot de TRDL deze status heeft afgebroken. Het grote voordeel hiervan is dat alle treinen die het gebied binnenrijden alsnog een alarmoproep ontvangen.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RAlarmAan.png',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Zolang het alarm \'staat\' kan de TRDL informatie geven aan de machinisten die in dit gebied rijden. Als het alarm op \'hold\' staat, doe je dit door het gesprek weer actief te maken. Hiervoor druk je op de lijnknop van het alarmgebied.',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: 'Workflow alarmeren',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'In het onderstaande schema is aangeven hoe de \'workflow\' bij een alarmoproep verloopt. In dit voorbeeld kan het alarm opgezet worden door zowel de MCN als de TRDL.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RWorkflowAlarmeren.png',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: 'Proces alarmeren',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'In dit voorbeeld is het baanvak A - B verdeeld tussen twee verschillende treindienstleidersgebieden. Het valt zowel in het gebied van treindienstleider A als van treindienstleider B. Op het baanvak bevinden zich de volgende GSM-R cellen: a, b, c, d, e en f. Deze cellen zijn als volgt verdeeld over de twee treindienstleidersgebieden:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- TRDL A = a, b, c, d, e;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- TRDL b = e, f, g.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenBaanvak3.png',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Dit betekent dat in principe alle oproepen vanuit de trein bij de juiste TRDL uitkomen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Met betrekking tot cel e wordt de keuze per post gemaakt waar deze oproep uit dient te komen. Dit kan in treindienstleidersgebied A, B, of bij beide. Point-to-point gesprekken komen altijd uit bij de juiste trein. Algemene oproepen komen uit in die cellen die bij het treindienstleidersgebied horen.',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: 'Voorbeeld',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: 'Trein 4 krijgt een aanrijding in cel d en plaatst een alarmoproep (1 in schema workflow). De cellen die benodigd zijn om het gebied voldoende af te dekken komen in alarm.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: 'Omdat cel e ook behoort tot het TRDL-gebied van de TRDL B zullen ook de cellen die horen bij dat deel van het baanvak in alarm gaan (2 in schema workflow). Dit betekent dat zowel TRDL A als TRDL B een alarmoproep binnen krijgen op hun Inttel-console (3 in schema workflow alarmeren).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: 'Alle treinen binnen het alarmgebied krijgen een alarmoproep (4 in schema workflow). Zolang het alarm blijft \'staan\' zullen alle treinen die het gebied inrijden met de alarmstatus een alarmoproep ontvangen (5 in schema workflow en trein 10 op het baanvak).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: 'Aan de hand van het treinnummer gaan TRDL A en B na binnen wiens gebied deze trein zich bevindt (6 in schema workflow). Beide TRDLs kunnen het gesprek aannemen en ze moeten op basis van het treinnummer of informatie van de MCN bepalen wie het gesprek verder voert. Als de andere TRDL het gesprek wil verlaten, moet hij dat doen door op de \'hold\' toets te drukken.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: 'TRDL A neemt het alarm aan en vraagt uit. Gedurende de tijd dat een gebied in alarm staat, zijn de gevoerde gesprekken voor iedereen binnen het gebied te beluisteren. Dat geldt dus ook voor de buurTRDL.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: 'De TRDL kan zolang het gebied in de alarmstatus is, binnen dit gebied alle MCN van informatie voorzien (7 in workflowschema). Dit doet hij door in te schakelen in het alarm.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: 'TRDL A neemt veiligheidsmaatregelen en vraagt of TRDL B dit ook heeft gedaan (8 in schema workflow). Pas wanneer beide TRDLs veiligheidsmaatregelen hebben genomen, heft TRDL A de alarmstatus op van het gebied door het drukken van de alarm-uit knop (9 in schema workflow).',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenBaanvak4.png',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenBaanvak5.png',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenBaanvak6.png',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Houd er rekening mee dat een trein die later het alarmgebied binnenrijdt weliswaar de alarmtoon hoort, en conform de procedure op zicht gaat rijden, de informatie gegeven bij het opzetten van de oproep niet heeft gehoord.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Belangrijk',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Overtuig je ervan dat het veilig is om het alarm te beëindigen. Als een MCN een alarm plaatst, staan niet alle cellen op het baanvak in alarm. Als je nu het alarm beëindigt zonder dat je MCN hebt gesproken die op het baanvak rijden, maar die het alarmgebied nog niet bereikt hebben, kan een gevaarlijke situatie ontstaan.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenBaanvak7.png',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: 'Trein 2 plaatst een alarmoproep. Trein 5 is net vertrokken van station B en ontvangt geen alarmoproep. De TRDL herroept indien nodig toeleidende seinen, zet ARI uit en plaatst veiligheidsmaatregelen. Als de TRDL nu het alarm beëindigt, is MCN 5 niet op de hoogte van de gevaarlijke situatie.',
                      ),
                      SizedBoxH(),
                      CardTitle(
                        title: 'Beëindigen alarm GSM-R',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Je beëindigt de alarmstatus van een gebied dat in alarm staat, nadat je je ervan overtuigd hebt dat de veiligheidsmaatregelen door zowel jou als jouw eventuele buurTRDL(s) zijn genomen en de betreffend treinen van de baan zijn of voorzien van een aanwijzing.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Als je ingeschakeld bent in een gesprek van een buurTRDL en je wilt er niet meer aan deelnemen, dan plaats je de oproep in \'hold\'. Als de buurtreindienstleider de oproep beëindigd heeft, verdwijnt de oproep van jouw console. Het is ongewenst dat jij het gesprek van de buurTRDLs beëindigt, omdat je hiermee de gehele alarmoproep beëindigt.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Belangrijk om te weten',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Als een alarm op \'hold\' wordt gezet, blijven de cellen in alarm staan. De verbinding wordt opnieuw opgebouwd als de TRDL opnieuw deel wil nemen aan het alarm;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Als de TRDL meerdere gebieden in alarm wil zetten, moeten deze gebieden één voor één geactiveerd worden. De boodschap moet dan ook per gebied ingesproken worden. Dit kan niet met één boodschap gebeuren;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Alleen de TRDL kan een alarmoproep beëindigen;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Als een MCN een alarmoproep plaatst, worden een aantal cellen in alarm gezet. Als je nu als TRDL de binnengekomen alarmoproep op \'hold\' zet en je besluit het gehele baanvak (PPLG – vrije baan – PPLG) in alarm te zetten, dan zal deze alarmoproep niet binnenkomen in het gebied dat al in alarm stond. Ook een boodschap die je inspreekt zal niet binnenkomen in dat gebied. Hier kan dus een gevaarlijke situatie ontstaan.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_systeem/GSM-RCellenBaanvak8.png',
                      ),
                      BoldText(
                        boldtext: 'Belangrijk om te weten',
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
                    children: const [
                      CardTitle(
                        title: 'Beëindigen alarmoproep',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Als je een alarmoproep beëindigt, druk je op \'Alarm Uit\' en daarna bevestig je dit door middel van het indrukken van toets (2). Staat de alarmoproep op \'Hold\' dan moet je eerst de \'Alarm\' lijntoets (1) weer activeren.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Wil je meer weten over de bedieningsmogelijkheden van de Inttel console lees dan de gebruiksaanwijzing.',
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
                    children: const [
                      CardTitle(
                        title: 'Voicelogger',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Elke VL-post heeft een voicelogger in de telecomruimte. Deze voicelogger neemt alle in- en uitgaande gesprekken op van de VL-post.',
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
                    children: const [
                      CardTitle(
                        title: 'GSM-R noodtelefoon (handheld)',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De GSM-R handheld is in basis een gewoon GSM-toestel. Met deze GSM-R handhelds kunnen algemene- en alarmoproepen via GSM-R worden gedaan en ontvangen. De GSM-R handhelds mogen uitsluitend gebruikt worden bij landelijke/volledige onbeschikbaarheid van GSM-R en/of uitval VL-post lokale ARBI en bij een evacuatie van de VL-post.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Sinds april 2013 wordt gebruikt gemaakt van de Sagem Tigr 350R.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Het telefoonboekje van de GSM-R bevat uitsluitend de nummers die noodzakelijk zijn om algemene- en alarmoproepen in voor de VL-post specifieke gebieden uit te zenden. Dat wil zeggen dat alle alarmgebieden en algemene oproepgebieden van de desbetreffende VL-post beschikbaar zijn op elke GSM-R handheld; GSM-R handhelds zijn dus niet specifiek voor een bepaald treindienstleidersgebied.',
                      ),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_middelen/gsm_r_handheld.png',
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
                    children: const [
                      CardTitle(
                        title: 'GSM-R portofoon',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De GSM-R portofoon maakt gebruik van het GSM-R netwerk van ProRail, dat deel uitmaakt van de spoorweginfrastructuur. De GSM-R portofoon stelt groepen medewerkers bij het spoor in staat op een veilige manier rechtstreeks met elkaar te communiceren. Daarnaast kan direct worden gesproken met treindienstleiders, met eigen bijstuurders en met machinisten van bijzonderheden_trein. Deze nieuwe portofoons staan ook ter beschikking aan de PCA\'s.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Een groep medewerkers van een vervoerder op een geografisch beperkt gebied (bijv. een rangeerterrein) communiceert met elkaar onderling. Een coördinator van de vervoerder (de zgn. bijstuurder) kan zo nodig worden opgeroepen voor bijvoorbeeld overleg en neemt dan ook deel aan de groepscommunicatie. Het is hierbij niet per sé noodzakelijk dat de bijstuurder beschikt over een GSM-R toestel.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Ook kan er gecommuniceerd worden met de treindienstleider.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Naast de (geografisch beperkte) groepscommunicatie is het mogelijk elkaar rechtstreeks aan te roepen, zonder dat de collega\'s meeluisteren.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Bij incidenten kan er zowel door de treindienstleider als door de medewerkers alarm worden geslagen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Voor kritische toepassingen zoals rangeren, waarbij communicatie tussen rangeerder en machinist een must is, kan gebruik worden gemaakt van een bewaakte verbinding. De handhelds bewaken dan voortdurend dat ze beiden binnen bereik van het netwerk zijn en slaan zo nodig alarm als dat niet zo is.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Doelgroep',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'GSM-R portofonie is bedoeld voor bedrijven die werkzaamheden verrichten op of in de onmiddellijke nabijheid van het spoor, bijvoorbeeld vervoerders en spoorbedrijven en voor wie het kunnen beschikken over veilige communicatiemiddelen van belang is.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Hoe herken ik deze portofoons op mijn Inttel?',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'We gebruiken 8 cijfers. De portofoonnummers beginnen altijd met 9999, de resterende 4 cijfers worden onder de verschillende vervoerders verdeeld. De nummers worden dus als volgt getoond: 9999xxxx.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Hoe ziet de TRDL welke groep actief is?',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Als je een ingesprekstoon krijgt, is er niemand in de groep actief.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'Hoe kan ik als TRDL spreken?',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'het is een simplex verbinding, dus 1 spreker tegelijk, net als bij een alarmoproep moet je voor spreken de spreeksleutel gebruiken.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image: 'assets/images/achtergrond_info/uitvoeren_plan/communicatie/communicatie_middelen/portofoon_telefoon.png',
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
