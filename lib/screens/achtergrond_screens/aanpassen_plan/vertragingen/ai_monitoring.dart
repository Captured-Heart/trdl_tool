import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIMonitoring {
  home_screen,
  ww_vertragingen,
  ai_vertragingen,
  ai_klanthinder,
}

class AIMonitoring extends StatelessWidget {
  const AIMonitoring({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIMonitoring>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIMonitoring result) {
              if (result == WhereToGoFromAIMonitoring.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result == WhereToGoFromAIMonitoring.ww_vertragingen) {
                Navigator.pushNamed(context, 'ww_vertragingen');
              } else if (result == WhereToGoFromAIMonitoring.ai_vertragingen) {
                Navigator.pushNamed(context, 'ai_vertragingen');
              } else if (result == WhereToGoFromAIMonitoring.ai_klanthinder) {
                Navigator.pushNamed(context, 'ai_klanthinder');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIMonitoring>>[
              const PopupMenuItem<WhereToGoFromAIMonitoring>(
                value: WhereToGoFromAIMonitoring.home_screen,
                child: MenuItemContent(
                  icon: Icons.home,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIMonitoring>(
                value: WhereToGoFromAIMonitoring.ww_vertragingen,
                child: MenuItemContent(
                  icon: Icons.train,
                  text: 'WW Vertragingen',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIMonitoring>(
                value: WhereToGoFromAIMonitoring.ai_vertragingen,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Vertragingen',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIMonitoring>(
                value: WhereToGoFromAIMonitoring.ai_klanthinder,
                child: MenuItemContent(
                  icon: Icons.menu_book,
                  text: 'AI Klanthinder',
                ),
              ),
            ],
          ),
          const HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              /*CARD #1*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title: 'Vertragingen en Monitoring',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als TRDL en DVL maak je gebruik van Monitoring. Monitoring is een systeem waarin afwijkingen ten opzichte van het plan en veiligheidsrisico\'s worden verklaard en geregistreerd. Dit worden ook \'te verklaren treinafwijkingen\' genoemd oftewel TVTA\'s.\n\nHet systeem wordt gebruikt door alle betrokken partijen binnen het logistieke proces. Binnen ProRail zijn dit Verkeersleiding en Assetmanagement en daarnaast wordt Monitoring gebruikt door zowel Reizigers- als Goederenvervoerders.\n\nIn Monitoring verklaren we:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Vertraging;\n\n- Planaanpassingen;\n\n- Veiligheidsrisico\'s.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #2*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Doel monitoring',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'ProRail streeft naar een zo hoog mogelijke betrouwbaarheid van het product. Wanneer de realisatie van de treindienst afwijkt van de planning zorgt dit voor overlast voor de reizigers, vervoerders en verladers. Dit willen we graag voorkomen, maar als er onverhoopt toch een afwijking in de treindienst optreedt dan willen we weten waarom. Hiervoor gebruiken we Monitoring.\n\nMonitoring is een instrument waarmee:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- de KPI Klanthinder wordt bepaald;\n\n- Inzicht wordt verschaft in vervoers- en onderhoudsprestaties;\n\n- De prestaties van de spoorsector (mede) verklaard kunnen worden (bijv. waarmee meer inzicht verkregen kan worden in de (dis)punctualiteit);\n\n- Sturing op de operationele processen (mede) kan plaatsvinden;- Informatie aangeleverd kan worden ter verantwoording van formele afspraken zoals:',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '* De prestatieregeling die is overeengekomen tussen Directoraat Generaal Personenvervoer van I&M (DGP) en High Speed Alliance (HSA) (tegenwoordig NS International);\n* De Kwartaalrapportage ProRail ten behoeve van het Ministerie van Infrastructuur & Milieu wordt samengesteld;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Inzicht ontstaat over de hoeveelheid, de aard en de hinder van veiligheidsrisico\'s.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/aanpassen_plan/vertragingen/ai_monitoring_1.jpg',
                      ),
                      SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*CARD #3*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Wat verklaren we in Monitoring?',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'In Monitoring verklaren we \'Te Verklaren Treinafwijkingen\', de TVTA, en veiligheidsrisico\'s. Hierover wordt verderop in dit document ingegaan onder het kopje \'Registratie, processtappen 1 en 2.\n\nMonitoring verschaft inzicht in de vervoersprestaties doordat data over vertragingssprongen (van meer dan 2:59 minuten) en planaanpassingen van treinen kunnen worden gekoppeld aan de primaire oorzaak die deze vertragingssprongen of planaanpassingen hebben veroorzaakt. Een TVTA m.b.t. een vertraging, gaat over een vertragingssprong tussen niet meer dan twee dienstregelpunten.\n\nEen \'primaire oorzaak\' is het veroorzakende incident. Bijv. \'defect materieel > tegel D3\'. Of \'wisselstoring > F5\'. De koppelingen zijn de TVTA\'s die hiervan het gevolg zijn. Ze dienen te worden gekoppeld aan deze primaire oorzaak. De primaire oorzaken zijn onderverdeeld in een aantal categorieën. Per categorie is er één verantwoordelijke partij aan te wijzen: ProRail Verkeersleiding, ProRail Assetmanagement, de vervoerder of derden. Verkeersleiding (E-kolom) is ook aanspreekpunt voor zaken die de afdeling Capaciteitsverdeling (CV) aangaan. Dit is de reden dat je CV niet in dit lijstje ziet staan ondanks dat je wel tegeltjes over dienstregeling tegenkomt. Zij hebben in Monitoring een gedeelde verantwoordelijkheid. Assetmanagement is op haar beurt aanspreekpunt voor ICT, Projecten en Derden. De actiehoudende partijen zijn op de achtergrond systeemtechnisch ingeregeld.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/aanpassen_plan/vertragingen/ai_monitoring_2.jpg',
                      ),
                      SizedBoxH(),
                    ],
                  ),
                ),
              ),
              /*CARD #4*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Processtappen',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Bij de ontwikkeling van Monitoring is ervoor gekozen de registratie van oorzaken van treinafwijkingen te beleggen bij de TRDL en DVL (processtap 1 en 2). Gezien de kerntaken van de TRDL en in het bijzonder de middelen, contacten en informatie waarover hij beschikt, ligt het voor de hand deze deelprocessen toe te wijzen aan deze functionaris. Bij die keuze werd opgemerkt dat de primaire taken van TRDL geen schade of hinder mogen ondervinden van eventuele nieuwe, aanvullende of zwaardere taakelementen op het vlak van Monitoring. Bij de ontwikkeling van Monitoring ging men er van uit dat TRDL op de meeste posten zowel in normale situaties als bij (grote) incidenten de hun toebedeelde taken op het vlak van Monitoring adequaat kunnen vervullen. Hun huidige primaire taken laten hiervoor voldoende ruimte. Monitoring registraties worden door de TRDL uitgevoerd in het \'nu-moment\'.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Nieuwe situatie',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Sinds 1 januari 2021 vraagt Monitoring alleen nog maar om een verklaring wanneer een trein 5 minuten of meer vertraging heeft, in plaats van 3 minuten (behalve voor HSL). Dat scheelt een hoop werk!\n\nHet Prestatie Analyse Bureau gebruikt een analysetool (Sherlock) dat steeds beter oorzaken van kleine vertragingen detecteert. Vandaar dat er besloten is om per 1 januari 2021 alleen nog maar vertragingssprongen van meer dan 5 minuten te registreren in Monitoring.\n\nDit geldt niet voor de treinen die over de Hogesnelheidslijn rijden. Daar blijven we vertragingssprongen van meer dan 3 minuten registreren, omdat dit nodig is in verband met de HSL-heffing. Deze verandering zorgt ervoor dat er ongeveer 40% minder vertragingssprongen hoeven te worden geregistreerd.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Zo goed mogelijk invullen',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Moet je een vertraging verklaren? Dan geldt nog steeds: probeer zo goed mogelijk de oorzaak te verklaren en deze kort in het \'opmerkingen-veld\' in Monitoring te beschrijven. Dit helpt om goede analyses te maken. Op basis van deze input kan het Prestatie Analyse Bureau verdere verbeteringen voorstellen.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Registratie',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/aanpassen_plan/vertragingen/ai_monitoring_3.jpg',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Monitoring gebruikt een te verklaren treinafwijking (TVTA) en/of een veiligheidsrisico als startpunt. De TRDL of DVL registreren de TVTA\'s. Het registreren in Monitoring is verdeeld in verschillende processtappen; processtap 1 + 2. Hieronder kun je lezen wie welke processtap vervult:',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Processtap 1',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Activiteit: Het aanmaken van een melding en koppelen van TVTA\'s.\n\nIn monitoring maakt de TRDL of de DVL een concept melding aan waar TVTA\'s aan gekoppeld kunnen worden.\nDe melding moet een objectieve beschrijving zijn van de situatie. Het geven van alle beschikbare informatie is erg belangrijk om uiteindelijk een goede analyse te kunnen uitvoeren.\n\nDe TRDL en/of DVL koppelen TVTA\'s die een verband hebben met de eerder gemaakte concept melding. Ook kan in deze fase eventueel nog extra informatie worden toegevoegd.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Processtap 2',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Activiteit: Controle aangemaakte verklaringen.\n\nDe DVL controleert bij deze stap of de compleet gemaakte meldingen ook echt compleet zijn en of de gekoppelde TVTA\'s terecht hieraan zijn gekoppeld. Als de melding gecheckt en in orde bevonden is, geeft de DVL de melding vrij.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #5*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Toelichting van alle processtappen',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Het huidige proces van Monitoring is onder te verdelen in vier deelprocessen:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '- Registratie processtap 1 en 2;\n\n- Fiattering (Acceptatie, verificatie en arbitrage. Respectievelijk processtap 3, 4 en 5);\n\n- Rapportage processtap 6;\n\n- Analyse processtap 7.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Om een goed beeld te krijgen van de situatie anno nu worden de vier deelprocessen hierna één voor één toegelicht.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Registratie; processtap 1 en 2',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Processtap 1:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '- Het aanmaken van de primaire oorzaak;\n\n- Het koppelen van TVTA\'s aan de primaire oorzaak.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Processtap 2:',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            '- Controle aangemaakte verklaringen;\n\n- Doorvoeren van eventueel noodzakelijke wijzigingen;\n\n- Vrijgeven van initiële registratie t.b.v. fiattering.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Het concept van Monitoring gaat uit van een TVTA als startpunt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Hierbij is er gekozen om vanaf een TVTA terug te redeneren;\n\n- Waar mogelijk zullen de vertragingen worden genormeerd, zodat de TVTA\'s automatisch verklaard worden door het systeem;\n\n- Vertragingssprongen worden gemeten en weergegeven op dienstregelpunten.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Daarnaast wordt ook een veiligheidsrisico zonder TVTA\'s geregistreerd. Het afhandelen van een incident i.c.m. het afgeven van een aanwijzing leidt overigens altijd tot een registratie in Monitoring met veiligheidsrisico \'ja\'. Zelfs dus als er geen TVTA\'s gegenereerd zijn.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Processtap 3, Fiattering: acceptatie',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Tijdens fiattering dient de geregistreerde primaire oorzaak te worden geaccepteerd of afgewezen te worden door een vertegenwoordiger van de actiehoudende partij.\n\nZoals eerder genoemd zijn dat:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- ProRail Verkeersleiding (OvDV);\n\n- ProRail Assetmanagement (storingsrapporteur AM);\n\n- Vervoerder;\n\n- Derden.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Door registraties ter fiattering (accepteren/afwijzen) aan te bieden krijgt de actiehoudende partij de mogelijkheid om vanuit hun kennis en expertise informatie toe te voegen aan inzichten in vervoersprestaties. Elke partij in de spoorsector is medeverantwoordelijk voor de prestaties. Het gedeelde proces binnen Monitoring levert uiteindelijk een sector breed gedragen beeld op.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Processtap 4, Fiattering',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Na het vrijgeven van de melding door de DVL wordt door de actiehoudende partij een check gedaan of de melding juist is toegewezen. Met actiehoudende partij bedoelen we de partij waaraan de melding (oorzaak) in Monitoring is toegewezen.\n\nActiehoudende partijen zijn AM, VL of een van de vervoerders.\n\nAls een melding niet wordt geaccepteerd, wordt door een stafmedewerker van VL nader onderzoek gedaan om tot een definitieve toewijzing te komen. Dit is processtap 4 in Monitoring.\n\nEen partij in het fiatteringsproces kan er in processtap 4 voor kiezen om een toegewezen registratie af te wijzen wanneer de registratie volgens die partij ten onrechte aan hen is toegewezen. Deze afgewezen items komen vervolgens in het verificatieproces. Verificatie gebeurt door Verificateurs die werkzaam zijn binnen de Staf Verkeersleiding. Voorheen heette dit het Centraal Verificatie Bureau (CVB). Zij werken landelijk en onafhankelijk.\n\nAfgewezen items worden door verificateurs uitvoerig onderzocht en worden vervolgens:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Toegewezen aan een partij die hem nog niet ter fiattering heeft gekregen;\n\n- Nogmaals toegewezen aan de partij die hem heeft afgewezen (dit kan slechts één keer. Hierna volgt voor de tweede maal fiattering door deze partij);\n\n- Doorverwezen naar arbitrage (automatisch indien te fiatteren items 2 keer zijn afgewezen door dezelfde partij).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Bij de ontwikkeling van Monitoring is er bewust voor gekozen om twee stappen binnen verificatie mogelijk te maken.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Processtap 5, Fiattering: arbitrage',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Processtap 5 is voor Arbitrage. Arbitrage gebeurt eveneens door de stafmedewerkers van VL. Tijdens arbitrage wordt de melding getoetst aan de richtlijnen. Indien deze richtlijnen uitsluitsel bieden, wordt de melding definitief toegewezen aan de actiehoudende partij.\n\nIndien de toewijzingsregels geen uitsluitsel bieden, wordt de arbitragecommissie - met vertegenwoordigers van ProRail en/of vervoerders - bijeen geroepen om over het dossier (en zo mogelijk een aantal vergelijkbare dossiers) een oordeel te vellen. Indien het een veelvuldig terugkerend voorval betreft, wordt hier een escalatie uitspraak over vastgelegd aanvullend op de bestaande spelregels. Deze escalatie uitspraken worden gepubliceerd op ICdoc.\n\nDe Staf VL verbetert continu de primaire Monitoringsprocessen, laat de ondersteunende processen optimaal werken en streeft naar een goede communicatie naar alle betrokkenen binnen Monitoring. De Staf VL heeft een aantal kerntaken, met als doel het treinproces \'buiten\' te verbeteren:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Geven van advies over de registratie in Monitoring;\n\n- Gevraagd en ongevraagd advies over hoe de registratie in Monitoring zou moeten (huidig en toekomstig);\n\n- Initiatie van kwaliteitsverbeteringen en aanpassingen in het Monitoringsproces;\n\n- Ondersteunen bij verbeterprojecten in Monitoring;\n\n- Instructie over Monitoring in diverse processtappen binnen Monitoring;\n\n- Ontwikkelen van nieuwe toewijzingsregels;\n\n- Bewaking van de afgesproken uitvoering van Monitoringsproces (registratie, fiattering, verificatie en arbitrage) volgens de richtlijnen van de toewijzingsregels.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Processtap 6, Rapportage',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De gegevens worden geanalyseerd en gecombineerd met andere informatiebronnen. Dit gebeurt onder andere door het PAB van ProRail, AM, Big Data Lab en door vervoerders en aannemers. Tijdens het gehele proces wordt de data gebruikt om rapportages op te stellen.\n\nHet Prestatie Analyse Bureau (PAB) gebruikt de gegevens uit Monitoring voor rapportages en analyses over de treindienst. Het PAB gebruikt voor hun analyses ook andere databronnen. Daarnaast krijgen vervoerders door middel van een totale gegevenslevering (GLV) een dagelijkse kopie van de gehele dataset om in hun eigen datawarehouse in te laden. Zij maken vervolgens kun eigen rapportages. Op basis van al deze gegevens kunnen alle partijen verbeteringen uitvoeren.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Resultaten',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Uit de analyses komen de volgende resultaten:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Informatie over de ontwikkeling van de prestaties van ProRail;\n\n- Informatie voor analyse en onderzoek van incidenten en storingen;\n\n- Ontwerpen en ontwikkelen van maatregelen om de dienstverlening van ProRail en derden te verbeteren;\n\n- Onderbouwing van keuzes met betrekking tot investeringen.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        indents: 0,
                        boldtext: 'Verbeteringen op basis van Monitoring',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Met de eerder genoemde resultaten worden meerdere acties uitgezet. Zo wordt de KPI Klanthinder berekend. Om deze berekening zo accuraat mogelijk te krijgen, is het van belang dat TVTA\'s bij incidenten op de juiste wijze worden geregistreerd. Als de Infra weer beschikbaar is, gelogd in SpoorWeb als \'opstart is mogelijk\' mogen de TVTA\'s die na deze tijd ontstaan niet meer aan het incident gekoppeld worden. Deze moeten worden gekoppeld aan de reden waardoor ze ontstaan. Dus als er geen personeel aanwezig is, moet de TVTA aan de tegel C1 afwezigheid Personeel gekoppeld worden.\n\nMeer informatie over Klanthinder vind je in de achtergrondinformatie Klanthinder.\n\nAssetmanagement gebruikt de informatie uit Monitoring onder andere om te kijken waar inzet van BOA\'s nodig is, of om extra inspecties in te zetten, of andere aanvullende acties uit te zetten.\n\nOok vervoerders gebruiken de gegevens uit Monitoring om verbeteringen door te voeren. Zo kunnen er aanpassingen aan het materieel gedaan worden zodat vertragingen in de toekomst minder voorkomen.\n\nOok veiligheidsincidenten moeten worden gelogd in Monitoring. Deze gegevens komen rechtstreeks in het systeem Promise terecht van de afdeling Veiligheid. Van deze meldingen wordt eerst gecheckt of de registratie terecht is. Daarna bepaald de afdeling Veiligheid of er een feitenrapportage moet worden opgesteld en of er een vervolgonderzoek moet worden ingesteld.\n\nOok zaken die niet hebben geleid tot een incident, maar wel een gevaarlijke situatie zijn of kunnen worden, zijn voor de afdeling Veiligheid belangrijk.',
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
