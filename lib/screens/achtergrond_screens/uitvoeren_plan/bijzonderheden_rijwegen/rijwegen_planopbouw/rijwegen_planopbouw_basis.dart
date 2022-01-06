import 'package:trdl_tool/core/all_imports.dart';

class OpbouwPlanBasisAchtergrond extends StatelessWidget {
  const OpbouwPlanBasisAchtergrond({Key? key}) : super(key: key);

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
                        title: 'Rijwegen - basisinformatie: plan(regel)opbouw',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een rijweg is een spoorgedeelte dat ter beschikking wordt gesteld om verplaatsing van (meestal) een trein van A naar B mogelijk te maken.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Er zijn drie manieren om een rijweg in te stellen:',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Automatisch vanuit het plan d.m.v. ARI',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            '(ARI = Automatische Rijweg Instelling) - ARI maakt gebruik van een wacht- en een tijdvenster. Instellingen van ARI vind je in de PBH++.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Handmatig, in het planscherm',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Als ARI de rijweg niet kan instellen, zul je dit handmatig moeten doen. Doe dit zo veel mogelijk in het planscherm.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Handmatig, in het bedienscherm',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Blijkt het om wat voor reden dan ook niet mogelijk de rijweg in het planscherm in te stellen, dan kun je de rijweg in het bedienscherm instellen.',
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
                        title: 'Het plan',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Om een trein van het ene naar het andere station te laten rijden, gebruik je een plan waarmee je een rijweg kan instellen. Het plan is een uitgebreidere versie van de dienstregeling waarin je alle informatie vindt die nodig is om een trein of rangeerbeweging via de juiste route en op de juiste tijd op de plaats van bestemming te krijgen. In dit deel van de achtergrondinformatie lees je alles over hoe het plan van een treindienstleider in elkaar zit, wat voor soorten rijwegen er zijn en hoe je een rijweg kunt instellen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De mogelijkheid tot verplaatsing wordt aangegeven tussen:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Twee sporen, beginnend op het VAN-spoor en eindigend op het NAAR-spoor;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Waar van toepassing: twee variabele seinen, beginnend met een VAN-sein en eindigend bij het NAAR-sein, corresponderend met de VAN- en NAAR-sporen.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Er zijn 2 verschillende soorten rijwegen:',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Enkelvoudige rijwegen',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Een enkelvoudige rijweg bestaat uit een enkele seinstap. Een seinstap is een rijweginstelling van sein tot het eerstvolgende sein in dezelfde rijrichting.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Samengestelde rijwegen',
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
                            '- De rijweg wordt gecontroleerd op tegengestelde bewegingen en indien mogelijk wordt de rijrichting ingesteld en vergrendeld. Een tegengestelde rijweg wordt hierdoor uitgesloten;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De wissels in de rijweg worden in de juiste stand gestuurd en daarna vergrendeld. Ook eventuele andere bedienbare infraelementen, die in de ingestelde rijweg liggen, worden vergrendeld (grendel, brug, etc.);',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- De rijweg is nu vastgelegd;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De rijweg wordt gecontroleerd op spoorbezetting;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Het sein komt uit de stand stop, als er geen spoorbezetting is.',
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
                elevation: 6.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      CardTitle(
                        title: 'Opbouw planregel - planscherm',
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
                        boldtext: 'A: Indicator',
                      ),
                      BodyText(
                        indents: 1,
                        text: '! = Er is een nog niet afgehandelde vertraging;',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '+ = Plan is gewijzigd door een treindienstleider;',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '? = Er is voor deze trein een \'uitblijven seinpassage\' opgetreden.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'B: Treinnummer',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Trein- of rangeernummer (eventueel voorafgegaan door treinletters).',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'C: Activiteitssoort',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- D = Doorkomst;',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- A = Aankomst;',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- V = Vertrek;',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- K = Korte stop;',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '- R = Rangeerbeweging (eventueel gevolgd door een rijwegvolgnummer).',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'D: Rijwegvolgnummer',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Het nummer hoeft niet de volgorde van de rijweg aan te geven (bij opsplitsing in meerdere rijwegen).',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'E: Plantijdstip',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Het tijdstip waarop volgens het plan de treinactiviteit moet plaatsvinden.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'F: Vertragingssoort',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- *Leeg* = Exact;',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- V = Voorwaardelijke vertraging;',
                      ),
                      BodyText(
                        indents: 1,
                        text: '- N = Nader bericht.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'G: Vertragingsduur',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'In minuten. Een positieve waarde geeft een vertraging aan, een negatieve waarde een vervroeging.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'H: Dienstregelpunt',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Dienstregelpunt waar de vertraging is geconstateerd (de eerste 4 karakters worden getoond).',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'I: Gepland insteltijdstip',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Tijdstip waarop volgens plan de instelling van de rijweg moet plaatsvinden.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'J: Instelwijze',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Geeft de wijze van rijweginstelling (I, F, H) of (alleen bij gefaseerde rijweginstelling) het aantal seinstappen voor gefaseerde rijweginstelling (1 t/m 9) aan. Dit instelwijzeveld wordt alleen getoond op een scherm groter dan 17 inch (1280x1024).',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '- F = Gefaseerde rijweginstelling. Er worden slechts zoveel enkelvoudige rijwegen van de planregel voor de trein uit ingesteld als nodig. Hoeveel dat zijn, wordt bepaald door het aantal seinstappen dat is opgegeven. Als het aantal niet is opgegeven dan geldt de standaard waarde voor het PPLG zoals door de postbeheerder voor het PPLG ingesteld.',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '- H = Hoog groene rijweginstelling. Met rijweginstelling wordt al aangevangen als de toeleidende rijweg naar het beginspoor is ingesteld. De wijze van instelling is verder als bij F (gefaseerd met standaard aantal).',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '- I = Integrale rijweginstelling. Rijweginstelling van alle enkelvoudige rijwegen in de planregel tegelijk vindt pas plaats op het moment dat zij allemaal beschikbaar zijn.',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '- 1 t/m 9 = Gefaseerde rijweginstelling met het gegeven aantal seinstappen. Er worden slechts zoveel enkelvoudige rijwegen van de planregel voor de trein uit ingesteld als nodig. Hoeveel dat zijn, wordt bepaald door het cijfer dat is opgegeven.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'K: VAN - Beginspoor',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Groen bij instelwijze hooggroen, oranje bij instelwijze integraal.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'L: NAAR - Eindspoor',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Oranje bij Rijden Op Zicht (ROZ).',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'M: Dwangrijwegnummer',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Als de rijweg via een afwijkende route moet worden ingesteld. Staat hier niets dan wordt de rijweg via de voorkeursroute ingesteld.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'N: Klaarmeldingsindicator',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Als er voor deze treinactiviteit één of meer niet afgevinkte klaarmeldingen zijn, staat hier een \'K\'. Zijn alle klaarmeldingen afgevinkt verandert de \'K\' in een \'-\'.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'O: Materieelrelatie-indicator',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Als er voor deze treinactiviteit één of meer materieelrelaties zijn, staat hier een \'m\' of een \'M\'. De \'M\' kan verschillende kleuren hebben, waarmee de ABT status wordt aangeduid.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: 'P: Bijzonderheden',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'De bijzonderheden bij een treinactiviteit kunnen bestaan uit maximaal 2 codes en/of een vrije tekst. Aangezien er ruimte is voor 11 tekens op een 21 inch scherm kan maar een beperkt deel van deze informatie worden   getoond. Deze ruimte wordt benut om eerst informatie over de standaard bijzonderheden te geven en pas daarna om de   bijzonderheden-tekst te tonen, afgekapt op het beschikbare aantal tekenposities. Als laatste teken wordt een speciaal teken (\'>\') getoond om duidelijk te maken dat er meer informatie is die hier niet meer getoond kan worden.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            'D.m.v. de knop \'Bijz. heden\' in de planmenubalk kan de volledige tekst worden bekeken.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            'Standaard bijzonderheden zijn bijzonderheden die aan een trein kunnen worden toegekend, gekozen uit een standaardlijst:',
                      ),
                      BodyText(
                        indents: 2,
                        text: '- BP = Buiten Profiel;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '- BV = Bijzonder Vervoer;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '- LSP = LinkerSPoor.',
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
                        title: 'Opbouw planregel - mutatiescherm',
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
                        boldtext: '- Drglpt:',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Dienstregelpunt.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Treinnr:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Trein- of rangeernummer (eventueel voorafgegaan door treinletters).',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Act:',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Activiteitsoort.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Ptijd:',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Plantijd.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Vtg:',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Vertragingssoort en -duur.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Itijd:',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Insteltijd.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- ROZ:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Rijden Op Zicht. In het planvenster (en in de historie) krijgt het NAAR-spoor een oranje kleur.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- I:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Instelwijze. Door op de \'I\' te klikken kan de instelwijze bij deze activiteit bekeken en/of gewijzigd worden. Met één van de tekens uit de reeks \'I, H, F, of 1 t/m 9\' kan de rijweg als volgt worden ingesteld:',
                      ),
                      BodyText(
                        indents: 2,
                        text: '- I = Integraal;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '- H = Hoog groen met het voor dat PPLG geconfigureerde aantal seinstappen;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '- F = Gefaseerd met het voor dat PPLG geconfigureerde aantal seinstappen;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '- 1 t/m 9 = Gefaseerd met het aantal seinstappen aangegeven door het cijfer;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '- Als de instelwijze integraal is, zal het VAN-spoor oranje worden getoond in het plan- en historievenster;',
                      ),
                      BodyText(
                        indents: 2,
                        text:
                            '- Als de instelwijze \'Hoog groen\' is, zal het VAN-spoor in een heldere groene kleur worden getoond in het plan- en historievenster.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Van:',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Beginspoor.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Naar:',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Eindspoor.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- t/m:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Laatste bezette spoorfase. Dit is van belang voor de Spoorbezettingsgrafiek: bij een lange trein (meer dan één spoorfase bezet) geeft het \'Naar\' spoor de plaats aan waar de kop van de trein staat; het \'t/m\' spoor geeft de plaats aan waar het achterste deel van de trein staat.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- D:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Dwangrijwegnummer bij rijweginstelling via een afwijkende route. Staat er niets dan wordt de rijweg via de voorkeursroute ingesteld.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- K:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Klaarmelding. Door op \'K\' te klikken kan deze activiteit bekeken en/of gewijzigd worden.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- M:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Materieelrelatie. Door op \'M\' te klikken kan deze activiteit bekeken en/of gewijzigd worden. Indien er een aantal planregels zijn geselecteerd in het mutatievenster en er wordt op de \'M\' geklikt dan wordt er een voorstel getoond voor een nieuwe of gewijzigde materieelrelatie. Dit voorstel kan direct ingevoerd worden.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- B:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Bijzonderheid. Door op \'B\' te klikken kan deze activiteit bekeken en/of gewijzigd worden.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Stat:',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Status activiteit:',
                      ),
                      BodyText(
                        indents: 2,
                        text: '- Norm = Normaal;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '- NB = Nader bericht trein;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '- Fac = Facultatieve trein;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '- Opgh = Opgeheven trein;',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- S/D:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Stop/Door. Schakeling voor overweg (maximaal vijf).',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- H:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Herfstcriterium. Als hier een \'H\' ingevuld wordt, worden alle stop/doors in de stand door gezet.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- G:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Goederentreincriterium. Bij goederentreinen die door een tunnel moeten rijden, wordt hier een \'G\' ingevuld.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- D:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Dieseltractie-indicator. Bij dieseltreinen die op of naar een spoor zonder bovenleiding rijden wordt hier een \'D\' ingevuld.',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- T:',
                      ),
                      BodyText(
                        indents: 1,
                        text: 'Tractiecode:',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* D = Diesel;',
                      ),
                      BodyText(
                        indents: 2,
                        text: '* E = Elektrisch;',
                      ),
                      SizedBoxH(),
                      BoldText(
                        boldtext: '- Tk:',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Treinkenmerk. De lijst toegestane treinkenmerken kan door de postbeheerder worden aangepast.',
                      ),
                      SizedBoxH(),
                      BoldText(
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
      ),
    );
  }
}
