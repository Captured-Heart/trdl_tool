import 'package:trdl_tool/all_imports.dart';

class AIRijwegenPlanopbouw extends StatelessWidget {
  const AIRijwegenPlanopbouw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Planregelopbouw',
        ),
        actions: const [
          HomeButton(),
        ],
      ),
      body: SingleChildScrollView(
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
                      title: 'Rijwegen - basisinformatie: plan(regel)opbouw',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Een rijweg is een spoorgedeelte dat ter beschikking wordt gesteld om verplaatsing van (meestal) een trein van A naar B mogelijk te maken.\n\nEr zijn drie manieren om een rijweg in te stellen:',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '1. Automatisch vanuit het plan d.m.v. ARI',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          '(ARI = Automatische Rijweg Instelling) - ARI maakt gebruik van een wacht- en een tijdvenster. Instellingen van ARI vind je in de PBH++.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '2. Handmatig, in het planscherm',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Als ARI de rijweg niet kan instellen, zul je dit handmatig moeten doen. Doe dit zo veel mogelijk in het planscherm.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '3. Handmatig, in het bedienscherm',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Blijkt het om wat voor reden dan ook niet mogelijk de rijweg in het planscherm in te stellen, dan kun je de rijweg in het bedienscherm instellen.',
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
                      subtitle: 'Het plan',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Om een trein van het ene naar het andere station te laten rijden, gebruik je een plan waarmee je een rijweg kan instellen. Het plan is een uitgebreidere versie van de dienstregeling waarin je alle informatie vindt die nodig is om een trein of rangeerbeweging via de juiste route en op de juiste tijd op de plaats van bestemming te krijgen. In dit deel van de achtergrondinformatie lees je alles over hoe het plan van een TRDL in elkaar zit, wat voor soorten rijwegen er zijn en hoe je een rijweg kunt instellen.\n\nDe mogelijkheid tot verplaatsing wordt aangegeven tussen:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- Twee sporen, beginnend op het VAN-spoor en eindigend op het NAAR-spoor;\n\n- Waar van toepassing: twee variabele seinen, beginnend met een VAN-sein en eindigend bij het NAAR-sein, corresponderend met de VAN- en NAAR-sporen.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: 'Er zijn 2 verschillende soorten rijwegen:',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '1. Enkelvoudige rijwegen',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Een enkelvoudige rijweg bestaat uit een enkele seinstap. Een seinstap is een rijweginstelling van sein tot het eerstvolgende sein in dezelfde rijrichting.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '2. Samengestelde rijwegen',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Een samengestelde rijweg bestaat uit 2 of meer aaneengesloten rijwegen (seinstappen). Voor het instellen van een samengestelde rijweg moet het begin- en eindpunt van de totale rijweg worden opgegeven. Een samengestelde rijweg kan in zijn geheel of per deel afzonderlijk worden ingesteld.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text: 'Voorwaarden voor het instellen van een rijweg:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- De rijweg wordt gecontroleerd op tegengestelde bewegingen en indien mogelijk wordt de rijrichting ingesteld en vergrendeld. Een tegengestelde rijweg wordt hierdoor uitgesloten;\n\n- De wissels in de rijweg worden in de juiste stand gestuurd en daarna vergrendeld. Ook eventuele andere bedienbare infraelementen, die in de ingestelde rijweg liggen, worden vergrendeld (grendel, brug, etc.);\n\n- De rijweg is nu vastgelegd;\n\n- De rijweg wordt gecontroleerd op spoorbezetting;\n\n- Het sein komt uit de stand stop, als er geen spoorbezetting is.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wanneer de rijweg wordt ingesteld met Rijden Op Zicht (ROZ - het seinbeeld geel knipper) vindt er geen controle plaats op eventuele spoorbezetting.',
                    ),
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
                      subtitle: 'Opbouw planregel - planscherm',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/planopbouw_basis/opbouwPlanregelPlanscherm1.png',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/planopbouw_basis/opbouwPlanregelPlanscherm2.png',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'A: Indicator',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          '! = Er is een nog niet afgehandelde vertraging;\n\n+ = Plan is gewijzigd door een treindienstleider;\n\n? = Er is voor deze trein een \'uitblijven seinpassage\' opgetreden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'B: Treinnummer',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Trein- of rangeernummer (eventueel voorafgegaan door treinletters).',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'C: Activiteitssoort',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          '- D = Doorkomst;\n\n- A = Aankomst;\n\n- V = Vertrek;\n\n- K = Korte stop;\n\n- R = Rangeerbeweging (eventueel gevolgd door een rijwegvolgnummer).',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'D: Rijwegvolgnummer',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Het nummer hoeft niet de volgorde van de rijweg aan te geven (bij opsplitsing in meerdere rijwegen).',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'E: Plantijdstip',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Het tijdstip waarop volgens het plan de treinactiviteit moet plaatsvinden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'F: Vertragingssoort',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          '- *Leeg* = Exact;\n\n- V = Voorwaardelijke vertraging;\n\n- N = Nader bericht.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'G: Vertragingsduur',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'In minuten. Een positieve waarde geeft een vertraging aan, een negatieve waarde een vervroeging.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'H: Dienstregelpunt',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Dienstregelpunt waar de vertraging is geconstateerd (de eerste 4 karakters worden getoond).',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'I: Gepland insteltijdstip',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Tijdstip waarop volgens plan de instelling van de rijweg moet plaatsvinden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'J: Instelwijze',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Geeft de wijze van rijweginstelling (I, F, H) of (alleen bij gefaseerde rijweginstelling) het aantal seinstappen voor gefaseerde rijweginstelling (1 t/m 9) aan. Dit instelwijzeveld wordt alleen getoond op een scherm groter dan 17 inch (1280x1024).',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 2,
                      text:
                          '- F = Gefaseerde rijweginstelling. Er worden slechts zoveel enkelvoudige rijwegen van de planregel voor de trein uit ingesteld als nodig. Hoeveel dat zijn, wordt bepaald door het aantal seinstappen dat is opgegeven. Als het aantal niet is opgegeven dan geldt de standaard waarde voor het PPLG zoals door de postbeheerder voor het PPLG ingesteld.\n\n- H = Hoog groene rijweginstelling. Met rijweginstelling wordt al aangevangen als de toeleidende rijweg naar het beginspoor is ingesteld. De wijze van instelling is verder als bij F (gefaseerd met standaard aantal).\n\n- I = Integrale rijweginstelling. Rijweginstelling van alle enkelvoudige rijwegen in de planregel tegelijk vindt pas plaats op het moment dat zij allemaal beschikbaar zijn.\n\n- 1 t/m 9 = Gefaseerde rijweginstelling met het gegeven aantal seinstappen. Er worden slechts zoveel enkelvoudige rijwegen van de planregel voor de trein uit ingesteld als nodig. Hoeveel dat zijn, wordt bepaald door het cijfer dat is opgegeven.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'K: VAN - Beginspoor',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Groen bij instelwijze hooggroen, oranje bij instelwijze integraal.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'L: NAAR - Eindspoor',
                    ),
                    BodyText(
                      indents: 1,
                      text: 'Oranje bij Rijden Op Zicht (ROZ).',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'M: Dwangrijwegnummer',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Als de rijweg via een afwijkende route moet worden ingesteld. Staat hier niets dan wordt de rijweg via de voorkeursroute ingesteld.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'N: Klaarmeldingsindicator',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Als er voor deze treinactiviteit één of meer niet afgevinkte klaarmeldingen zijn, staat hier een \'K\'. Zijn alle klaarmeldingen afgevinkt verandert de \'K\' in een \'-\'.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'O: Materieelrelatie-indicator',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Als er voor deze treinactiviteit één of meer materieelrelaties zijn, staat hier een \'m\' of een \'M\'. De \'M\' kan verschillende kleuren hebben, waarmee de ABT status wordt aangeduid.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'P: Bijzonderheden',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'De bijzonderheden bij een treinactiviteit kunnen bestaan uit maximaal 2 codes en/of een vrije tekst. Aangezien er ruimte is voor 11 tekens op een 21 inch scherm kan maar een beperkt deel van deze informatie worden   getoond. Deze ruimte wordt benut om eerst informatie over de standaard bijzonderheden te geven en pas daarna om de   bijzonderheden-tekst te tonen, afgekapt op het beschikbare aantal tekenposities. Als laatste teken wordt een speciaal teken (\'>\') getoond om duidelijk te maken dat er meer informatie is die hier niet meer getoond kan worden.\n\nD.m.v. de knop \'Bijz. heden\' in de planmenubalk kan de volledige tekst worden bekeken.\n\nStandaard bijzonderheden zijn bijzonderheden die aan een trein kunnen worden toegekend, gekozen uit een standaardlijst:',
                    ),
                    BodyText(
                      indents: 2,
                      text:
                          '- BP = Buiten Profiel;\n\n- BV = Bijzonder Vervoer;\n\n- LSP = LinkerSPoor.',
                    ),
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
                      subtitle: 'Opbouw planregel - mutatiescherm',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Je kunt de planregels vanuit het planscherm omzetten naar het mutatievenster, waar je wijzigingen kunt aanbrengen.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/planopbouw_basis/opbouwPlanregelMutatiescherm.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Ook hier is de logische opbouw van de planregel voortgezet:',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Drglpt:',
                    ),
                    BodyText(
                      indents: 1,
                      text: 'Dienstregelpunt.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Treinnr:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Trein- of rangeernummer (eventueel voorafgegaan door treinletters).',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Act:',
                    ),
                    BodyText(
                      indents: 1,
                      text: 'Activiteitsoort.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Ptijd:',
                    ),
                    BodyText(
                      indents: 1,
                      text: 'Plantijd.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Vtg:',
                    ),
                    BodyText(
                      indents: 1,
                      text: 'Vertragingssoort en -duur.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Itijd:',
                    ),
                    BodyText(
                      indents: 1,
                      text: 'Insteltijd.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- ROZ:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Rijden Op Zicht. In het planvenster (en in de historie) krijgt het NAAR-spoor een oranje kleur.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- I:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Instelwijze. Door op de \'I\' te klikken kan de instelwijze bij deze activiteit bekeken en/of gewijzigd worden. Met één van de tekens uit de reeks \'I, H, F, of 1 t/m 9\' kan de rijweg als volgt worden ingesteld:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 2,
                      text:
                          '- I = Integraal;\n\n- H = Hoog groen met het voor dat PPLG geconfigureerde aantal seinstappen;\n\n- F = Gefaseerd met het voor dat PPLG geconfigureerde aantal seinstappen;\n\n- 1 t/m 9 = Gefaseerd met het aantal seinstappen aangegeven door het cijfer;\n\n- Als de instelwijze integraal is, zal het VAN-spoor oranje worden getoond in het plan- en historievenster;\n\n- Als de instelwijze \'Hoog groen\' is, zal het VAN-spoor in een heldere groene kleur worden getoond in het plan- en historievenster.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Van:',
                    ),
                    BodyText(
                      indents: 1,
                      text: 'Beginspoor.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Naar:',
                    ),
                    BodyText(
                      indents: 1,
                      text: 'Eindspoor.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- t/m:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Laatste bezette spoorfase. Dit is van belang voor de Spoorbezettingsgrafiek: bij een lange trein (meer dan één spoorfase bezet) geeft het \'Naar\' spoor de plaats aan waar de kop van de trein staat; het \'t/m\' spoor geeft de plaats aan waar het achterste deel van de trein staat.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- D:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Dwangrijwegnummer bij rijweginstelling via een afwijkende route. Staat er niets dan wordt de rijweg via de voorkeursroute ingesteld.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- K:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Klaarmelding. Door op \'K\' te klikken kan deze activiteit bekeken en/of gewijzigd worden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- M:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Materieelrelatie. Door op \'M\' te klikken kan deze activiteit bekeken en/of gewijzigd worden. Indien er een aantal planregels zijn geselecteerd in het mutatievenster en er wordt op de \'M\' geklikt dan wordt er een voorstel getoond voor een nieuwe of gewijzigde materieelrelatie. Dit voorstel kan direct ingevoerd worden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- B:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Bijzonderheid. Door op \'B\' te klikken kan deze activiteit bekeken en/of gewijzigd worden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Stat:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Status activiteit:\n\n- Norm = Normaal;\n\n- NB = Nader bericht trein;\n\n- Fac = Facultatieve trein;\n\n- Opgh = Opgeheven trein;',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- S/D:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Stop/Door. Schakeling voor overweg (maximaal vijf).',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- H:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Herfstcriterium. Als hier een \'H\' ingevuld wordt, worden alle stop/doors in de stand door gezet.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- G:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Goederentreincriterium. Bij goederentreinen die door een tunnel moeten rijden, wordt hier een \'G\' ingevuld.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- D:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Dieseltractie-indicator. Bij dieseltreinen die op of naar een spoor zonder bovenleiding rijden wordt hier een \'D\' ingevuld.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- T:',
                    ),
                    BodyText(
                      indents: 1,
                      text: 'Tractiecode:',
                    ),
                    BodyText(
                      indents: 2,
                      text: '* D = Diesel;\n\n* E = Elektrisch;',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- Tk:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Treinkenmerk. De lijst toegestane treinkenmerken kan door de postbeheerder worden aangepast.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: '- S:',
                    ),
                    BodyText(
                      indents: 1,
                      text:
                          'Samenstelling materieel. Door op \'S\' te klikken kan deze activiteit bekeken en/of gewijzigd worden. Samenstelling is op basis van jaarplan en kan afwijken van de actuele inzet. Wijzigingen worden alleen op de werkplek opgeslagen.',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
