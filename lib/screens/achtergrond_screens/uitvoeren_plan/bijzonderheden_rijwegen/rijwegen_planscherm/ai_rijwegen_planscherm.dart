import 'package:trdl_tool/core/all_imports.dart';

class AIRijwegenPlanscherm extends StatelessWidget {
  const AIRijwegenPlanscherm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: 'Planscherm',
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
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      TitleText(
                        title:
                            'Rijwegen - basisinformatie: werken met het plan(scherm)',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een rijweg is een spoorgedeelte dat ter beschikking wordt gesteld om verplaatsing van (meestal) een trein van A naar B mogelijk te maken.\n\nEr zijn drie manieren om een rijweg in te stellen:',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: '- Automatisch vanuit het plan d.m.v. ARI',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '(ARI = Automatische Rijweg Instelling) - ARI maakt gebruik van een wacht- en een tijdvenster. Instellingen van ARI vind je in de PBH++.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: '- Handmatig, in het planscherm',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Als ARI de rijweg niet kan instellen, zul je dit handmatig moeten doen. Doe dit zo veel mogelijk in het planscherm.\n\nBlijkt het om wat voor reden dan ook niet mogelijk de rijweg in het planscherm in te stellen, dan kun je de rijweg in het bedienscherm instellen.',
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
                            'Om een trein van het ene naar het andere station te laten rijden, gebruik je een plan waarmee je een rijweg kan instellen. Het plan is een uitgebreidere versie van de dienstregeling waarin je alle informatie vindt die nodig is om een trein of rangeerbeweging via de juiste route en op de juiste tijd op de plaats van bestemming te krijgen. In dit deel van de achtergrondinformatie lees je alles over hoe het plan van een treindienstleider in elkaar zit, wat voor soorten rijwegen er zijn en hoe je een rijweg kunt instellen.\n\nDe mogelijkheid tot verplaatsing wordt aangegeven tussen:',
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
                      SubTitleText(
                        subtitle: '- Enkelvoudige rijwegen',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            'Een enkelvoudige rijweg bestaat uit een enkele seinstap. Een seinstap is een rijweginstelling van sein tot het eerstvolgende sein in dezelfde rijrichting.',
                      ),
                      SizedBoxH(),
                        subtitle: '- Samengestelde rijwegen',
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
                        subtitle: 'Het instellen van rijwegen in procesleiding',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Rijwegen worden ingesteld door de treindienstleider. In procesleiding kan je daarvoor ARI (automatische rijweg instelling) gebruiken.\n\nAls je een rijweg instelt in procesleiding, gebeurt er het volgende:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De rijweg wordt gecontroleerd op tegengestelde bewegingen en indien mogelijk wordt de rijrichting ingesteld en vergrendeld. Een tegengestelde rijweg wordt hierdoor uitgesloten;\n\n- De wissels in de rijweg worden in de juiste stand gestuurd en daarna vergrendeld. Ook eventuele andere inrichtingen, die in de ingestelde rijweg liggen, worden vergrendeld (grendel, brug, etc.);\n\n- De rijweg is nu vastgelegd;\n\n- De rijweg wordt gecontroleerd op spoorbezetting;\n\n- Het sein komt uit de stand stop, als er geen spoorbezetting is.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Wanneer de rijweg wordt ingesteld met Rijden Op Zicht (ROZ - het seinbeeld geel knipper) vindt er geen controle plaats op eventuele spoorbezetting.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Werken met het plan',
                      ),
                      SizedBoxH(),
                      //TODO: link maken van planregelopbouw
                      BodyText(
                        indents: 0,
                        text:
                            'Als treindienstleider werk je via het planscherm in procesleiding met het aangeleverde dagplan. Dit wordt vertaald als honderden planregels, waarin alle informatie is opgenomen die nodig is om de dienstregeling uit te voeren.\n\nHoe een planregel is opgebouwd, vind je hier: planregelopbouw (link volgt).',
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
                        subtitle:
                            'Instellen van rijwegen vanuit het planscherm',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Procesleiding houdt in de gaten wanneer het volgens het plan tijd is om voor een bepaalde treinactiviteit de rijweg in te stellen. Als de insteltijd is aangebroken verkleurt de planregel van wit naar geel. Je moet zelf beoordelen of het mogelijk is de rijweg in te stellen. Denk daarbij aan de voorwaarden voor rijweginstelling. Als er voor de betreffende planregel klaarmeldingen zijn, moeten ze worden afgevinkt. Wordt dit niet gedaan, dan volgt er een waarschuwing.\n\nAls de opdracht voor rijweginstelling is verstuurd, wordt de planregel verplaatst naar de historie. Mislukt de instelling van een rijweg (mogelijke oorzaak kan een kruisende rijweg zijn…), dan wordt dit gemeld in het bedienscherm. De rijweg kan herplaatst in het planscherm om opnieuw te worden ingesteld. Je kan ook, met eventuele aanpassingen, vanuit het bedienscherm de rijweg instellen. Alleen is de afhandeling dan niet meer te volgen voor meekijkers. Een aanpassing kan zijn dat je het beginspoor moet wijzigen, omdat er al een deel van de (samengestelde) rijweg was ingesteld.\n\nDe postkoppeling heeft tot doel de buurpost tijdig te informeren over de nadering van een trein. Indien een treinnummer verschijnt vanuit een buurpost en ARI staat niet aan voor de relevante planregel of het pplg, dan dient de rijweg handmatig ingesteld te worden. Bij iedere verplaatsing van de naderende trein, dient een volgende seinstap ingesteld te worden.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Instellen van een rijweg (uitvoering)',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een rijweg kan je op verschillende manieren instellen:',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Instellen gehele rijweg via planmenubalk',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '- Selecteer een regel uit één van de planvensters. De planregel krijgt nu een andere kleur;\n\n- Klik in de planmenubalk op \'Rijweg\';\n\n- Klik \'Stel direct in\' --> De rijweg wordt in zijn geheel in 1x ingesteld.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle:
                            'Instellen eerste deel rijweg via planmenubalk',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '- Selecteer een regel uit één van de planvensters. De planregel krijgt nu een andere kleur;\n\n- Klik in de planmenubalk op Rijweg;\n\n- Klik \'Stel eerste deel in\' --> Hierna wordt het eerste deel van de rijweg ingesteld. Voor de andere delen van de rijweg moet bovenstaande steeds worden herhaald.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'N.B. Wanneer gekozen wordt voor \'Stel in voor aanpassing\', gaat de instelopdracht naar het bedienvenster. De opdracht kan daar eventueel worden aangepast.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Instellen rijweg met de rechtermuisknop',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Hiermee kan alleen direct de volledige rijweg worden ingesteld.',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '- Selecteer een regel uit één van de planvensters met de linkermuisknop;\n\n- Klik met de rechtermuisknop --> de rijweg wordt ingesteld. Zijn er meer geselecteerde regels dan moet dit per regel worden herhaald.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Andere \'Rijweg\' mogelijkheden',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Herplaats',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Het herplaatsen van een planregel is nodig om het plan - getoond in de planvensters - actueel te houden. Zo houd je ook meekijkers op de hoogte van de uitvoering van het plan. Je gebruikt het om een rijweg opnieuw te kunnen instellen. Bijv. na het herroepen van een rijweg, of wanneer instelling mislukt is en opnieuw uitgevoerd moet worden.',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '- Klik op de te herplaatsen regel in de historie. De regel licht op;\n\n- Ga naar de planmenubalk;\n\n- Klik op \'Rijweg\';\n\n- Klik op \'Herplaats\' --> Regel wordt vanuit de historie verplaatst naar het planvenster.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Let op: Het herplaatsen van een planregel is niet hetzelfde als het herroepen van een rijweg.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Hef selecties op',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Hiermee worden in één keer alle selecties van planregels ongedaan gemaakt. Dit geldt ook voor selecties die niet zichtbaar zijn op het scherm.',
                      ),
                      BodyText(
                        indents: 1,
                        text:
                            '- Klik in de planmenubalk op \'Rijweg\' en dan op \'Hef selecties op\': nu wordt in één keer de selectie van alle planregels ongedaan gemaakt.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Verwijder uit plan',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'De functie is bedoeld om rijwegen die al zijn ingesteld, uit het planvenster te verwijderen. Bijvoorbeeld als een rijweg via regelinvoer is ingesteld, maar ook na omschakelen van Fallback naar Operationeel. De geselecteerde planregels worden naar het historievenster verplaatst. Het insteltijdstip wordt hierbij niet ingevuld.',
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
                        subtitle: 'Voorkeursroutes en dwangrijwegen',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Voorkeursroutes',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Voor een rijweg kunnen meer routes bestaan om van begin- naar het eindpunt te komen. Er bestaat altijd een voorkeursroute: de route die het meest ideaal is om een emplacement binnen te rijden of te verlaten. Deze route is in Procesleiding geconfigureerd: als een rijweg wordt ingesteld van een begin- naar een (fictief) eindsein, dan zal de voorkeursroute gekozen worden door het systeem. Wil je dat de trein via een andere route dan de voorkeursroute van A naar B gaat? Dan voeg je de optie Dwangrijweg toe aan een planregel, voordat je deze veilig zet.\n\nLet op: het kan zijn dat er in Procesleiding een vaste dwangrijweg aan een rijweg is gekoppeld. Dit is dan toegepast om planconflicten te voorkomen. Deze maatregel in procesleiding wijkt af van de standaard en is een plaatselijke bijzonderheid.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Dwangrijwegen',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Een dwangrijweg is de mogelijkheid in Procesleiding om een andere route van A naar B aan te bieden dan de geconfigureerde voorkeursroute. Dit kan gewenst zijn als er bijvoorbeeld volgordewisselingen zijn of storingen waar rijwegen omheen gepland moeten worden. Via het planscherm en het bedienscherm is het mogelijk om dwangrijwegen toe te voegen.\n\nAls je in het planscherm een planregel muteert naar het mutatiescherm krijg je de mogelijkheid om een dwang toe te voegen:',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/werkenmetplan_basis/dwangToevoegen1.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Selecteer de planregel in het mutatievenster en klik op de functieknop \'Rijweg\'.\n\nKies voor \'Dwangrijwegen\'. Er opent zich nu een pop-up venster met alle mogelijke dwangrijwegen van de betreffende trein:',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/werkenmetplan_basis/dwangToevoegen2.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'De beschrijvingen van de dwangrijwegen komen overeen met de spoorbenamingen en mogelijk wisselnummers van je emplacement.\n\nKies de geschikte dwangrijweg en klik op \'Voer in\'.\n\nDe gemuteerde planregel heeft nu onder de letter \'D\' het cijfer staan van de dwangrijweg die je hebt gekozen. Als je de planregel in het plan invoert, zal bij de afhandeling hiervan de dwangrijweg worden gebruikt in plaats van de voorkeursroute.\n\nAls je bekend bent met het bediengebied en de verschillende routes, kan je een dwangrijweg sneller instellen:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Klik in de planregel op het venstertje onder de letter \'D\' en vul het cijfer in van de dwangrijweg die je wilt. Je slaat hiermee de stap van het pop-up venster over.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/werkenmetplan_basis/dwangToevoegen3.jpg',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #6*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle:
                            'Gefaseerde, integrale & hoog groen rijweginstelling',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'ARI kan in procesleiding op drie manieren rijwegen instellen:',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Gefaseerde rijweginstelling',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Bij gefaseerde rijweginstelling hoeft met het instellen van de rijweg niet te worden gewacht tot de gehele rijweg beschikbaar is. Dit heeft een gunstig effect op de opvolging van treinen en zal daarmee de punctualiteit verhogen. Ook blijft het nog niet benodigde deel van de rijweg beschikbaar voor andere rijwegen. Zo kunnen andere treinen nog voorlangs passeren. Om een minimale infracapaciteit te claimen, moet ARI bij gefaseerde rijweginstelling niet meer dan een geconfigureerd aantal seinstappen (enkelvoudige rijwegen) voor de trein uit instellen. Indien op een moment dit aantal niet mogelijk is, wordt met een kleiner aantal seinstappen voldaan. In de ARI-configuratie wordt per pplg het aantal in te stellen seinstappen vastgesteld. Default staat dit aantal op twee seinstappen ingesteld.\n\nHet gefaseerd instellen van een samengestelde rijweg gaat als volgt: telkens als ARI een volgende seinstap voor de trein wil instellen, bepaalt ARI de afstand tussen de actuele (TROTS-) positie van de trein en de in te stellen seinstap. Indien de trein het aantal seinstappen nog niet benut heeft, wacht ARI tot de trein een seinstap afrijdt. ARI constateert dit door een treinnummerverplaatsing in TROTS. Bij gefaseerde rijweginstelling wordt bij een \'tijdelijk niet beschikbare\' rijweg uitsluitend gewacht als deze zich binnen de marge van het aantal in te stellen seinstappen bevindt.\n\nBij uitvoering van rijweginstellingen geldt geen tijdbegrenzing. Dit betekent dat rijwegen eenmaal in behandeling genomen door ARI oneindig in behandeling worden gehouden (planregels zeegroen).\n\nHerroepen gefaseerde rijweg:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Bij het herroepen van een (willekeurig deel van een) gefaseerde rijweg hoeft je niet meer rijwegdelen te herroepen dan het aantal seinstappen dat voor de trein uit is ingesteld. In dit geval kan er bij het herroepen van een gefaseerde rijweg een oranje planregel in je plan worden getoond.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Integrale rijweginstelling',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'In sommige gevallen, in het bijzonder (maar niet uitsluitend) bij goederentreinen, is instellen van de gehele samengestelde rijweg vereist. Om deze garantie af te dwingen is er een ‘integrale’ instelwijze als optie. Deze optie wordt als expliciete aanduiding in de instelregel van het procesplan aan ARI opgedragen. Je kan de instelwijze wijzigen via het mutatievenster. De default instelwijze is \'gefaseerd\'.\n\nInstelwijze',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De instelwijze wordt in de menubalk van het mutatievenster getoond als \'F\' (geFaseerd) of \'I\'(Integraal) onder de kop \'I\'. De Instelwijze wordt links van het \'van-spoor\' getoond. In het planvenster wordt het van-spoor altijd oranje getoond als de instelwijze Integraal is, ongeacht of ARI wel of niet aan staat voor de planregel en/of de insteltijd is verstreken. Ook in het historievenster wordt bij een Integrale instelwijze het van-spoor oranje getoond.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Integraal versus Goederencriterium',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Een planregel met een Goederencriterium moet Integraal worden ingesteld. De koppeling van \'Goederencriterium\' en \'Integraal\' wordt als volgt geborgd:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 2,
                        text:
                            '* Bij het inlezen van BLP-planregels wordt gewaarschuwd als het Goederencriterium geldt terwijl de instelwijze voor de rijweg niet integraal is. Je moet de regels waarop bij het inlezen vanuit BLP een waarschuwing is gegeven, handmatig aanpassen;',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Hoog Groen',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Wanneer de instelwijze H (Hoog Groen) gebruikt wordt voor een planregel met een vertrekactiviteit geeft dat aan ARI de eis/werking dat de bij een aankomstregel behorende vertrekregel ingesteld wordt op basis van triggering door eindseinreservering, met andere woorden: zodra de aankomstregel is ingesteld (sein hoeft dan nog niet uit de stand stop te zijn, de reservering binnen PRL is voldoende) kan ARI de vertrekregel in behandeling nemen. Gecontroleerd wordt of de uit te voeren instelling ook op basis van de juiste trein is (nummer wordt door ARI teruggezocht in de ingestelde route en gecontroleerd). Wordt het juiste treinnummer gevonden, dan wordt de vertrekregel door ARI ingesteld. Bij de instelwijze H zal geen tijd- of wachtvenster actief zijn, het instelmoment is immers gekoppeld aan het tijdvenster van de aankomstregel.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle:
                            'Voorwaarden voor de functionaliteit Hoog Groen:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Hoog Groen is alleen mogelijk in combinatie met vertrekbewegingen (dus niet bij A, K, R of D-activiteiten);\n\n- Hoog Groen is alleen mogelijk bij bewegingen die met een N-rijweg worden ingesteld (dus niet bij een ROZ-aankomst);\n\n- Hoog Groen kan (op termijn) door Bureau Lokaal Plan geleverd worden (in overleg tussen Verkeersleiding en Vervoerders worden de emplacementen bepaald waar de instelwijze nuttig kan zijn. Voor die emplacementen kan de instelwijze structureel in het Procesplan worden opgenomen);\n\n- Hoog Groen wordt niet gebruikt op plaatsen met een overpad/overweg achter het uitrijdsein (Dit is op zich wel mogelijk en kan in situaties met gladde rails zelfs nuttig zijn, maar voor standaard gebruik is het echter ongewenst. Het argument hiervoor is dat in die gevallen de sluitingsduur van het overpad/overweg toe zal nemen).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'De tijdwinst is te behalen op 2 fronten:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De trein kan vanwege een beter seinbeeld met een hogere snelheid het emplacement binnen rijden;\n\n- Na het uit- en instappen van de reizigers kan de HC direct het vertrekproces starten (stationnementduur is niet langer dan noodzakelijk).',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De instelwijze \'H\' is in het procesplan herkenbaar doordat het van-spoor van de vertrekregel \'Hoog Groen\' is gekleurd.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/werkenmetplan_basis/hoogGroen1.png',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/werkenmetplan_basis/hoogGroen2.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Ook in het historievenster is achteraf nog te zien welke instelwijze voor de vertrekregel gold.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/werkenmetplan_basis/hoogGroen3.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Je kan zelf via het mutatievenster de instelwijze \'H\' invoeren.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Voorbeeld van de werking',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'In dit voorbeeld zie je de rijweg ingesteld staan van de 9619. Op de eerste afbeelding zie je dit zonder toepassing hoog groen op de vertrekregel, op de tweede afbeelding is hoog groen wel toegepast.',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/werkenmetplan_basis/hoogGroen4.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Rijweginstelling zonder hoog groen op de vertrekregel',
                      ),
                      SizedBoxH(),
                      InsertImage(
                        image:
                            'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/werkenmetplan_basis/hoogGroen5.png',
                      ),
                      BodyText(
                        indents: 0,
                        text:
                            'Rijweginstelling met hoog groen op de vertrekregel',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- De aankomstbeweging wordt ingesteld en zodra het eindsein van de aankomstbeweging wordt gereserveerd, zal ARI de vertrekregel in behandeling nemen en na controle op treinnummer instellen;\n\n- Het gevolg van die keuze is dat er redelijk veel infra geclaimd wordt voor de treinbeweging (zie het 2de voorbeeld), dit is de afweging die je als treindienstleider maakt bij het gebruik van deze functionaliteit;\n\n- Alle reeds bekende voorwaarden rond voorrangsrelaties en beschikbaarheid blijven gelden;\n\n- Eigenlijk is alleen de ARI-triggering van een Hoog Groen vertrekregel gewijzigd (met daarbij dus het wachtvenster).',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #7*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle:
                            'Rijweg met geel knipperend seinbeeld (ROZ-rijweg)',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Enkele voorbeelden van situaties waarbij het nodig is een ROZ-rijweg in te stellen zijn:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Je krijgt een melding dat een spoor is ingekort met een rode vlag/rode lamp of een afsluitbord;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Het spoor is bezet;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Het spoor is bezet met een voertuig, zonder dat er zekerheid is van een juiste treindetectie;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Het spoor is gedurende langere tijd niet bereden;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Er is sprake van ongecontroleerd spoor.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Stel een rijweg met ROZ pas in nadat je de zekerheid hebt dat er geen andere beweging op het spoor in uitvoering is.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Heb je een samengestelde RijdenOpZicht-rijweg in het Procesplan en stel je deze in zijn geheel in 1x in, dan wordt alleen de laatste seinstap met ROZ ingesteld. Wordt een samengestelde ROZ-rijweg stapsgewijs ingesteld, dan wordt eveneens alleen de laatste seinstap met ROZ ingesteld.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'N.B.: Wordt een samengestelde ROZ-rijweg via het bedienscherm ingegeven, dan zijn alle seinstappen ROZ.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #8*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Planregel met klaarmelding',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een klaarmelding heeft als doel, dat een rijweg pas wordt ingesteld als een bevoegde functionaris te kennen heeft gegeven dat de trein \'klaar\' is.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text: 'Je handelt als volgt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Informeer of de klaarmelding vertraging op gaat leveren en zo ja, hoeveel;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Verwerk de verwachte vertraging in het plan;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Voorzie de planregel van de betreffende rijweg van een K.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Een klaarmelding gebruik je nooit als veiligheidsmaatregel. Een klaarmelding dient alleen gebruikt te worden voor zaken die niet te plannen zijn. Het is louter bedoeld als geheugensteuntje.',
                      ),
                    ],
                  ),
                ),
              ),
              /*CARD #9*/
              Card(
                elevation: kCardElevation,
                child: Padding(
                  padding: kCardPadding,
                  child: Column(
                    children: const [
                      SubTitleText(
                        subtitle: 'Foute planregels',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Als je constateert dat een planregel niet klopt (foute insteltijd, verkeerd aankomst- of vertrekspoor) handel dan als volgt:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- Herstel de fout;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Controleer de eerstvolgende planregel van dezelfde treinserie;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text:
                            '- Treedt hierbij dezelfde fout op, waarschuw dan de Ovd-V. Die zorgt ervoor dat fouten aan de planningsafdeling worden gemeld, zodat de planning voor de volgende dagen kan worden aangepast.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Veiligheidsgarantie',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'De Veiligheid Kritische Activiteiten (VKA\'s) en de failsafe beveiliging in combinatie met adequate treinbesturing garanderen de veiligheid.',
                      ),
                      SizedBoxH(),
                      SubTitleText(
                        subtitle: 'Veiligheidsmaatregelen in VPT-Procesleiding',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Onder veiligheidsmaatregelen in VPT procesleiding worden de volgende gelijkwaardige verhinderingen verstaan:',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- VHR-E;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- VHR;',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 1,
                        text: '- VHB.',
                      ),
                      SizedBoxH(),
                      BodyText(
                        indents: 0,
                        text:
                            'Je gebruikt verhinderingen om te voorkomen dat er onbedoeld een rijweg ingesteld kan worden.',
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