import '/all_imports.dart';

class AIAanpassenPlan extends StatelessWidget {
  const AIAanpassenPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIAanpassenPlanNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Aanpassen plan - basisinformatie',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'In sommige situaties kan het nodig zijn dat je het procesplan rijwegen aanpast:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Ter voorkoming van gevaar;\n\n- Bij lokale en bovenlokale aanvragen;\n\n- Bij een verzoek van de verkeersleider;\n\n- In geval van ontregelingen.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Breng wijzigingen tijdig aan, indien mogelijk minstens 15 minuten voor het uitvoeringsmoment.\n\nBij aanpassing van rijwegen voor rangeerbewegingen, schouwtreinen en meetritten, ben je verplicht -voordat je de rijweg instelt- de MCN of de medewerker rangeren in te lichten over de aanpassing.\n\nAls je een spoorwijziging initieert naar een korter (perron)spoor dan het geplande (perron)spoor, vraag je de MCN of de medewerker rangeren naar de lengte van de trein.\n\nJe controleert of de trein langs het perron of op het spoor past. Pas daarna voer je de spoorwijziging door.\n\nWanneer blijkt dat een reizigerstrein niet in zijn geheel langs het perron past en er géén ander geschikt perronspoor beschikbaar is, communiceer je dit met de MCN of de medewerker rangeren en stemt af of de spoorwijziging toch kan worden doorgevoerd.\n\nVoor het bepalen van de lengte van een (perron)spoor maakt je gebruik van de BVS.',
                  ),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Opdracht van een bevoegd functionaris',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij evenementen kan er, op last van de overheidshulpdiensten in het kader van crowd control of dreigende openbare ordeproblemen, de opdracht komen om een trein eerder, later of meteen te laten vertrekken. Je kunt hierbij denken aan bijv. treinen met voetbalsupporters of demonstranten die de politie gecontroleerd wil laten vertrekken om escalatie te voorkomen.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Wie kan een melding doen?',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Je kan als TRDL gebeld worden door een medewerker van de MKS-BO in opdracht van de politie, of door de Algemeen Leider (AL).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Afspraken',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Als een trein meteen moet vertrekken geef je, zodra dat mogelijk is, de rijweg vrij en licht je de DVL in. Wanneer de trein eerder of later moet vertrekken bespreek je dat met de DVL en die zal door een voorwaardelijke vertraging of vervroeging (VW-VTG) de trein herplannen. Je verwerkt het bericht in procesleiding. De afspraak om wijzigingen minstens 15 minuten voor het uitvoeringsmoment aan te brengen, zal in dit geval niet altijd mogelijk zijn. Houdt daarmee rekening en informeer indien nodig betrokken ketenpartners telefonisch.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Aandachtspunten',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Houd de trein zoveel mogelijk rijdend;\n\n- Zet de trein niet aan de kant;\n\n- Zorg dat gewenste aanpassingen m.b.t. voorbrengen materieel via het lokale orderproces worden aangevraagd;\n\n- Zorg dat vertragings- en vervroegingsoorzaken worden verklaard in monitoring.',
                  ),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Plannen, veilig en op welke manieren',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Men wil graag het aantal (ongeplande) rood-seinnaderingen reduceren en daarmee de kans op een trein-treinbotsing verkleinen. Hiervoor zijn maatregelen getroffen die zich richten op zowel de uitvoering van de trein- en rangeerdienst als de planning.\n\nEen aantal rood-seinnaderingen wordt veroorzaakt door conflicten in de planning. Een deel hiervan betreft trein- en rangeerbewegingen die in de fase van Verkeersleiding zijn gepland (<36u vantevoren). Denk hierbij aan (boven)lokale orderaanvragen. Verkeersleiding wil deze trein- en rangeerbewegingen volgens de plannormen plannen om zo de kans op rood-seinnaderingen te verkleinen (plannormen zijn opgenomen in de Netverklaring). Dit dient zowel de veiligheid als de punctualiteit op het spoor.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Plannen versus bijsturen',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Er wordt een onderscheid gemaakt tussen plannen en bijsturen in de fase van Verkeersleiding. Plannen behelst het toevoegen van nieuwe dienstregelingstreinen (bovenlokaal) en rangeerbewegingen (lokaal) aan het actuele plan.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Plannen in standaard paden en standaard rijwegen',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Voor het plannen van goederentreinen in de zogeheten 'ad-hoc fase' zijn in de dienstregeling lege paden (BUP-paden) opgenomen. Dit zijn vooraf vastgelegde paden in de bestaande dienstregeling waarop treinen ingelegd kunnen worden. In feite een pad in de dienstregeling waar men nog een treinnummer aan moet koppelen. Door hier gebruik van te maken plannen verkeersleiders nieuwe treinen dus al voor een groot deel conflictvrij.\n\nDit principe kan ook toegepast worden voor het plannen van conflictvrije rangeerbewegingen op het emplacement door de TRDL. Zijn deze standaard rangeerrijwegen eenmaal bepaald, dan kunnen deze worden toegepast bij de afhandeling van lokale orders.",
                  ),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Plannen van treinen op netwerkniveau',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Plannen in vooraf gedefinieerde paden',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Voor het plannen van goederentreinen maken verkeersleiders gebruik van lege patroonpaden (BUP-paden) in de dienstregeling. Deze paden zijn conflictvrij en exclusief gereserveerd voor orders van goederenvervoerders in de fase van Verkeersleiding. Ook wordt verkeersleiders de mogelijkheid geboden een bepaald BUP-pad te kopiëren en dit te verleggen naar een ander tijdstip van de dag. De bedoeling is om straks alle goederentreinen in zulke vooraf gedefinieerde paden te plannen.\n\nReizigerstreinen en ledig-materieelritten worden voorlopig nog in de 'witte ruimte' (niet vooraf getoetste paden) gepland.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Inchecken door goederenvervoerders',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Het logistieke proces van goederenvervoerders is dynamisch en soms ook grillig. Sommige geplande goederentreinen halen hun pad niet en Verkeersleiding wordt hierover niet altijd tijdig geïnformeerd. Hierdoor gaan die kostbare conflictvrije paden verloren.\n\nOm dit te voorkomen is er een proces ingericht waarbij goederentreinen ingecheckt moeten worden. Dit proces dwingt de goederenvervoerders om het daadwerkelijk gebruik van een eerder toegewezen pad vroegtijdig te bevestigen dan wel het gereserveerde pad te annuleren. Hierdoor komen niet gebruikte paden tijdig beschikbaar voor planning en herplanning.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Toetsen op beschikbaarheid',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Het plannen van een pad voor een goederen- of reizigerstrein gebeurt in een samenspel tussen de orderacceptant (de DVL die de order ontvangt), de eventueel op het traject van de trein verantwoordelijke DVL en de betrokken TRDL. Wanneer er een pad gecreëerd moet worden dient men dit pad eerst in concept te ontwerpen. Vervolgens moet dit pad getoetst worden op beschikbaarheid. En hoe meer functionarissen hierbij betrokken zijn hoe ingewikkelder deze toetsing is. Vandaar dat we gebruik willen maken van vooraf gedefinieerde paden of kopieën daarvan.',
                  ),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle:
                        'Plannen van rangeerbewegingen op het emplacement',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Plannen in vooraf gedefinieerde rangeerbewegingen',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Verkeersleiding wil ook graag zoveel mogelijk rangeerbewegingen plannen in vooraf gedefinieerde rangeerrijwegen. Om dit te bewerkstelligen heeft men per emplacement een zogenaamde 'rijwegencatalogus' gemaakt. Hierin staan voor elke dag afzonderlijk voor alle 24 uren de beschikbare rangeerrijwegen aangegeven van spoor naar spoor. Al deze rijwegen zijn getoetst conform de plannormen. Wil een vervoerder een rangeerbeweging uitvoeren op het emplacement, dan zoekt deze een geschikte standaard rijweg uit de catalogus en vraagt deze via een LOA aan bij de TRDL. De TRDL toetst op zijn beurt of de aangevraagde rijweg beschikbaar is. Is dit het geval dan honoreert hij de aanvraag en verwerkt deze in het plan\n\nOmdat het niet handig is om rijwegen aan te vragen uit een papieren catalogus heeft men de volgende hulpmiddelen ontwikkeld:",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '- LOA Online',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'LOA Online is een digitaal ordersysteem waarmee de vervoerder via een LOA een rangeerrijweg of een bundel rangeerrijwegen kan aanvragen. Dit stelt de aanvrager in staat in LOA Online op zoek te gaan naar een geschikte rangeerrijweg in de catalogus, deze aan te klikken en vervolgens de order te versturen. Indien de aanvrager redenen heeft om buiten de catalogus om een rangeerrijweg aan te vragen, dan is dat ook nog wel mogelijk. Wel moet de aanvrager hiervoor de reden opgeven.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        "- Plannen in de 'witte ruimte' met SBG Conflictsignalering",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "Niet alle rangeerbewegingen zullen uiteindelijk kunnen worden gepland in vooraf gedefinieerde rangeerrijwegen. Met name de unieke of incidentele rangeerrijwegen zullen in de 'witte ruimte' van het plan gepland blijven worden. Om de TRDL in staat te stellen ook deze rijwegen volgens de plannormen te plannen wordt SBG++ voorzien van conflictsignalering. Zo kan de TRDL concept rangeerrijwegen aanmaken en deze laten toetsen op mogelijke conflicten.",
                  ),
                ],
              ),
              const TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Bijsturings- en/of planningsnormen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor het inleggen van nieuwe treinbewegingen en verleggen van bestaande treinbewegingen zijn normen vastgelegd.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Opvolgtijden',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Standaard opvolgtijden bij vertrek en aankomst tussen twee treinen:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- 1e reizigerstrein - 2e reizigerstrein: 3 minuten;\n\n- 1e reizigerstrein - 2e goederentrein: 3 minuten;\n\n- 1e goederentrein - 2e reizigerstrein: 4 minuten;\n\n- 1e goederentrein - 2e goederentrein: 4 minuten.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De opvolgtijd tussen twee rijdende goederentreinen is 3 minuten. Standaard opvolgtijd bij inhalingen onderweg:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- 1e trein aankomst - 2e trein door: 2 minuten;\n\n- 1e trein door - 2e trein vertrek: 2 minuten.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De opvolgtijd bij twee reizigerstreinen die een minimaal stationnement hebben op hetzelfde station; 4 minuten.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Halteringstijden',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'De technisch minimale norm voor halterende goederentreinen is 2 minuten. Voor reizigerstreinen geldt een minimale norm van < 1 minuut, in de planning is dat een korte stop (+). De vervoerder kan hiervan willen afwijken (verlengen van de haltering).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Kopmaken en keren',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor het kopmaken en keren geldt een minimumnorm van 4 minuten. De vervoerder kan hiervan afwijken (verkorten).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Combineren',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Minimumtijd voor het combineren is 3 minuten. De vervoerder kan hiervan afwijken (verkorten).',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Splitsen',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Minimumtijd voor het splitsen is 2 minuten. De vervoerder kan hiervan afwijken (verkorten).',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  const SubTitleText(
                    subtitle: 'Corridors',
                  ),
                  const SizedBoxH(),
                  const BodyText(
                    indents: 0,
                    text:
                        "Treinen hebben een nummer en rijden in series (treinseries). Alle treinen hebben een uniek nummer dat maar 1 keer per dag mag voorkomen. Serienummers zijn niet uniek. Zij geven aan van waar naar waar een trein rijdt.\n\nWe hebben ook verschillende soorten treinen. Denk aan intercity's, stoptreinen, goederentreinen, etc. Ook aan het treinnummer kan je zien tot welke soort een trein behoort.\n\nAlle treinen rijden van een begin- naar een eindstation. Dit noemen we het traject waarop een bepaalde treinserie rijdt. Dit kunnen korte, middellange of lange trajecten zijn. En over het algemeen rijden intercity's over langere trajecten dan bijvoorbeeld stoptreinen.\n\nIn Nederland hebben we aantal intercity's die over een relatief lang traject rijden. Ze vormen een rechtstreekse verbinding tussen bijvoorbeeld Noord- en Zuid-Nederland en tussen de Randstad en het Noorden respectievelijk Zuiden van Nederland. Zij rijden over zogenaamde 'corridors'. Op deze trajecten vindt zogenaamde 'corridorsturing' plaats.\n\nOmdat corridor treinen over lange afstanden rijden is het noodzakelijk dat deze treinen goed in de gaten gehouden worden. Wanneer er binnen jouw TRDLgebied iets met een dergelijke trein gebeurt zal dat gevolgen (kunnen) hebben voor het verdere traject.\n\nEn omdat deze treinen altijd door het gebied van meerdere posten gaan zal er landelijk naar deze treinen gekeken worden. Vandaar dat de bijsturing van deze treinen ook niet door de DVL maar door de VLC (VerkeersLeider CMBO) wordt gedaan.",
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Corridor:',
                  ),
                  const BodyText(
                    indents: 1,
                    text:
                        'Een belangrijke verbinding tussen drukke gebieden, waarover vervoer van goederen of personen plaatsvindt. Een spoorcorridor kan uit verschillende lijnen bestaan.',
                  ),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Corridorsturing:',
                  ),
                  const BodyText(
                    indents: 1,
                    text:
                        'Het onderling onafhankelijk plannen van verkeer uit verschillende corridors. Hierbij wordt de infrastructuur zoveel mogelijk gescheiden naar corridor. Verkeer over infra die tussen corridors ligt, wordt zoveel mogelijk vermeden. Concreet houdt dit in dat men de corridors zoveel mogelijk vrijhoudt voor de corridortreinen en andere (extra) treinen over andere sporen inlegt. Ook mogen treinen die corridors kruisen deze niet negatief beïnvloeden.',
                  ),
                  const SizedBoxH(),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridor1.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridor2.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridor3.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridor4a.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridor4b.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridor5a.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridor5b.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridor6.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridor7.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridorINT1.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridorINT2.png',
                  ),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridorINT3.png',
                  ),
                  const SizedBoxH(),
                  const InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/aanpassen_plan_basis/corridorGoederen.png',
                  ),
                  const SizedBoxH(),
                  const SizedBoxH(),
                  const BoldText(
                    indents: 0,
                    boldtext: 'Goederencorridors 2020',
                  ),
                  const SizedBoxH(),
                  Table(
                    border: TableBorder.all(),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: const <TableRow>[
                      TableRow(
                        children: <TableTextBold>[
                          TableTextBold(text: 'Naam corridor'),
                          TableTextBold(text: 'Van - Naar'),
                          TableTextBold(text: 'Bijzonderheden'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G1'),
                          TableText(text: 'Mvt - Vl grens'),
                          TableText(text: 'via Ehv'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G2'),
                          TableText(text: 'Mvt - Zv grens'),
                          TableText(text: 'via Betuweroute'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G3'),
                          TableText(text: 'Kfh - Odz grens'),
                          TableText(text: 'via Dvd'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G4'),
                          TableText(text: 'Mvt - On'),
                          TableText(text: 'via Dvd'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G5'),
                          TableText(text: 'Kfh - Lutdsm'),
                          TableText(text: ''),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G6'),
                          TableText(text: 'Bvhc - Edn grens'),
                          TableText(text: 'via Ut'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G7'),
                          TableText(text: 'Kfh - Rsd grens/Sloe'),
                          TableText(text: ''),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G8'),
                          TableText(text: 'Bvhc - Kfh'),
                          TableText(text: 'via Hlm - Ledn - Gv - Rtd'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G9'),
                          TableText(text: 'Sloe - Vl grens'),
                          TableText(text: ''),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G10'),
                          TableText(text: 'Vl grens - Lutdsm'),
                          TableText(text: ''),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G11'),
                          TableText(text: 'Awhv - Odz grens'),
                          TableText(text: ''),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G12'),
                          TableText(text: 'Bvhc - Zv grens'),
                          TableText(text: 'via Betuweroute'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G13'),
                          TableText(text: 'Rsd grens - Odz grens'),
                          TableText(text: 'via Ht - Ut - Amf'),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G14'),
                          TableText(text: 'Esn - Zvgr'),
                          TableText(text: ''),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G15'),
                          TableText(text: 'Emn - Lutdsm'),
                          TableText(
                            text:
                                'Alleen geldig in de nachten ma/di t/m vrij/zat',
                          ),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'G16'),
                          TableText(text: 'Vdm - Edng'),
                          TableText(text: ''),
                        ],
                      ),
                      TableRow(
                        children: <TableText>[
                          TableText(text: 'Overige routes'),
                          TableText(
                            text: 'Bh - Vdm / Co - Kfh / Lutdsm - Hz',
                          ),
                          TableText(text: 'via Dv / via Wp - Hmla'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AIAanpassenPlanNavigation extends StatelessWidget {
  const AIAanpassenPlanNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_aanpassen_plan_main) {
          await Navigator.pushNamed(context, 'ww_aanpassen_plan_main');
        } else if (result == PopupNavigation.ai_orderacceptatie) {
          await Navigator.pushNamed(context, 'ai_orderacceptatie');
        } else if (result == PopupNavigation.ai_vertragingen) {
          await Navigator.pushNamed(context, 'ai_vertragingen');
        } else if (result == PopupNavigation.ai_ongepland_werk_main) {
          await Navigator.pushNamed(context, 'ai_ongepland_werk_main');
        } else if (result == PopupNavigation.ai_stappenplan_versperringen) {
          await Navigator.pushNamed(
            context,
            'ai_stappenplan_versperringen',
          );
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ww_aanpassen_plan_main,
          child: MenuItemContent(
            icon: Utils.iconWW,
            text: 'WW Aanpassen Plan',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_orderacceptatie,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Orderacceptatie',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_vertragingen,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Vertragingen',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_ongepland_werk_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Ongepland Werk',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_stappenplan_versperringen,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Stappenplan Versperringen',
          ),
        ),
      ],
    );
  }
}