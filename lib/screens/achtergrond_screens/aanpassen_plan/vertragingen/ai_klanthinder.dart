import '/all_imports.dart';

class AIKlanthinder extends StatelessWidget {
  const AIKlanthinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIKlanthinderNavigation(),
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
                    title: 'Klanthinder',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Wat is klanthinder?',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        "Klanthinder is een verstoring in de treindienst waardoor vertraging ontstaat. Onder vertraagde treinen worden ook opgeheven en omgeleide treinen verstaan. \n\nProRail heeft afspraken gemaakt met de overheid over prestaties die geleverd moeten worden op verschillende gebieden. Deze afspraken noemen we KPI's, Kritische Prestatie Indicatoren. Een van die KPI's is Klanthinder. De afspraken die ProRail hierover heeft gemaakt met de overheid gaan over hinderrijke incidenten. We spreken van een hinderrijk incident vanaf 20 opgeheven reizigerstreinen of langdurig rijden met vertraging waardoor het totaal aantal minuten vertraging boven de 680 uitkomt. Klanthinder wordt achteraf berekend in het aantal minuten vertraging die een verstoring veroorzaakt.\n\nVoor een opgeheven trein wordt 30 minuten gerekend en voor omgeleide treinen 15 minuten. Bij vertraagd rijden geldt de daadwerkelijke vertraging per trein.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/vertragingen/ai_klanthinder_1.jpg',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Om hier een meetbare KPI van te maken, is klanthinder opgedeeld in 3 categorieën die hinderklassen worden genoemd:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- HK1: >= 2400 min;\n\n- HK2: >= 680 < 2400 min;\n\n- HK3: >= 40 < 680 min.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De afspraken met de overheid gaan over hinderrijke incidenten met hinderklasse 1 en 2 waarvoor ProRail verantwoordelijk is. Denk hierbij bijvoorbeeld aan storingen aan de infra.\n\nStoringen als defect materieel of afwezigheid personeel vallen niet onder de verantwoordelijkheid van ProRail maar van de vervoerder.\n\nDe KPI klanthinder staat voor ProRail op maximaal 610 hinderrijke incidenten per jaar. Als ProRail deze norm overschrijdt, kan daar een boete voor worden gegeven door de staatssecretaris. Doel van ProRail is om minimaal onder de 610 hinderrijke incidenten uit te komen, maar daarnaast heeft ProRail zelf als doel gesteld om in 2018 op maximaal 575 hinderrijke incidenten en in 2019 op maximaal 546 hinderrijke incidenten uit te komen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Maatregelen tegen klanthinder',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Om te voldoen aan de KPI Klanthinder nemen AM, ICB en VL gezamenlijk een aantal maatregelen:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        "1. AM introduceert 'kritische assets' en implementeert verscherpte werkwijze op gebied van inspectie en onderhoud;\n\n2. AM stuurt actief op voorkomen van herhaling van incidenten (technische recidive);\n\n3. ICB introduceert interventieteams ter voorkoming van 'derdenstoringen' (suïcide, spoorlopen, koperdiefstal);\n\n4. VL introduceert Alerteren;\n\n5. VL stuurt op het optimaal benutten van infra bij verstoringen;\n\n5b. Modern krukken;\n\n6. Optimaliseren versperringsmaatregelen;\n\n7. Geen (passende) versperringsmaatregel beschikbaar.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/aanpassen_plan/vertragingen/ai_klanthinder_2.jpg',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Het proces van een storing - waar bevindt zich welke maatregel',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'In deze achtergrondinformatie gaan we vooral in op de maatregelen waar jij als TRDL en de DVL mee te maken krijgen. De maatregelen van AM en ICB lichtten we kort toe.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  BoldText(
                    indents: 0,
                    boldtext: '1. Kritische Assets',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "AM heeft een lijst met Kritische Assets samengesteld. Met kritische assets worden infra elementen als wissels en spoorstaven bedoeld die zich op strategisch kritische plekken bevinden in de verschillende regio's. Als hier een storing aan komt is de impact op het logistieke proces groot.\n\nDeze infra elementen worden extra scherp in de gaten gehouden en vaker gecontroleerd om eventuele storingen zoveel mogelijk te voorkomen of al vroegtijdig te kunnen herstellen.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '2. Voorkomen van herhaling incidenten',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Storingen aan secties, spoorstaven en bovenleiding worden beter bijgehouden waardoor herhalende storingen sneller worden opgemerkt. Hierdoor kan er eerder worden gekozen om een element dat vaker storingen geeft bijvoorbeeld te vervangen of hier extra onderhoud aan te plegen.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        "3. Interventieteams ter voorkoming van 'derdenstoringen'.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'In samenwerking met het programma Suïcide wordt gekeken waar nog aanscherping mogelijk is in de maatregelen met betrekking tot Klanthinder. Ook worden er maatregelen bedacht om bijvoorbeeld spoorlopers en koperdiefstal te voorkomen.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '4. Alerteren.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "De taak van het alerteren is bij de Verkeersleider CMBO belegd. Als de Verkeersleider CMBO gaat alerteren logt hij in Spoorweb: Let op: Deze logistieke afhandeling resulteert om xx.xx uur in een hinderklasse 2-storing.\n\nVervolgens informeert de Verkeersleider CMBO de Officier van Dienst Spoor. Naar aanleiding van deze alertering start de Officier van Dienst Spoor een challenge middels een 'motorkapoverleg'.\n\nDit motorkapoverleg vindt plaats op het CMBO. Doel is om te onderzoeken of:",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Het technisch mogelijk is om meer infra beschikbaar te stellen voor het afhandelen van het treinverkeer zonder een vorm van herstel, of;\n\n- Het technisch mogelijk is om gedeeltelijk infra beschikbaar te stellen, door bijv. een noodoplossing toe te passen, waardoor de impact op het logistieke proces vermindert of er niet meer is. Of;\n\n- Het technisch mogelijk is om alle infra beschikbaar te stellen met een noodoplossing waardoor de impact op het logistieke proces er niet meer is.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Per haalbaar scenario wordt de klanthinder berekend, het scenario met de minste klanthinder wordt gekozen.\n\nDeelnemers aan dit motorkapoverleg zijn:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- OvD-V van de getroffen post (telefonisch);\n\n-Verkeersleider CMBO;\n\n- Technische wachtdienst AM uit de getroffen regio (telefonisch);\n\n- Planner CMBO en medewerker 24/7 werkplekbeveiliging;\n\n- Regisseur Meldkamer Spoor;\n\n- OvD-S;\n\n- Optioneel bij derdenstoringen AL;\n\n- Optioneel Procesleider Besturing Operatie.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "De uitkomsten van het motorkapoverleg worden door de MKS/BO doorgegeven aan de AL. De AL logt dan de nieuwe 'tenminste tot' prognose in Spoorweb.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '5. Optimaal benutten van infra bij verstoringen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Uit onderzoek is gebleken dat bij een aantal Hinderklasse 2 incidenten door andere keuzes te maken in het gebruik van de infra, de opgelopen Klanthinder aanzienlijk minder had kunnen zijn. Om in de toekomst dit soort situatie zo veel mogelijk te voorkomen, is een aantal stappen in het werkproces van de TRDL en de DVL aangescherpt.\n\nOp het moment dat je een melding binnen krijgt is het natuurlijk altijd al de bedoeling dat je een goede analyse maakt van de storing voor de veiligheid en voor het logistieke proces. Hierdoor kan je samen met de DVL een goed verdeelbesluit nemen.\n\nWat in deze fase verwacht wordt van jou is dat als bij het analyseren van de storing blijkt dat er mogelijk een incident met Hinderklasse 2 ontstaat, jij en de DVL eerst 'nadere beeldvorming' toepassen. Dit kan door het 4-6 ogenprincipe toe te passen. Hierbij laat je bijvoorbeeld nog een andere TRDL meekijken naar de storing. Soms ziet een frisse blik toch nog andere mogelijkheden om bijvoorbeeld om de storing heen te rijden of een gedeelte van de treinen toch met een aanwijzing over de storing heen te laten rijden. Ook kan gebruik gemaakt worden van de rekentool 'Post focust op klanthinder', om te berekenen wat bij verschillende scenario's de verwachte klanthinder is.\n\nVaak is het zo dat er voor het oplossen van een infrastoring meerdere opties zijn. Er kan gekozen worden om de storing direct te laten herstellen met een storingsWBI of met een tijdsafspraak voor de nacht of na de spits. Bij alle drie deze opties zijn er logistieke gevolgen. Als jij en DVL op een mogelijk hinderrijk incident uitkomen schakelen jullie de OvD-V in. De OvD-V voert nog een keer een challenge uit op de door jou en de DVL gekozen oplossing om te kijken of er geen andere mogelijkheden zijn. Met een challenge wordt een second opinion bedoeld. Het doel is om uit te sluiten dat er opties over het hoofd worden gezien die misschien minder klanthinder opleveren.\n\nNa deze challenge wordt de MKS-BO gealarmeerd. Het kan dus zo zijn dat je niet binnen 5 minuten alarmeert naar de MKS-BO. Als nadere beeldvorming noodzakelijk is, wordt dit geaccepteerd. Natuurlijk is zo snel mogelijk alarmeren naar MKS-BO nog steeds belangrijk, maar wel met een zo compleet mogelijk beeld. Je kan door de nadere beeldvorming ook meteen bij de MKS-BO aangeven dat er ook nog alternatieve mogelijkheden zouden kunnen zijn. Bijvoorbeeld bij een wisselstoring, het kan zo zijn dat de klanthinder kan worden gereduceerd door het krukken en klemmen van een wissel in een stand. Bij het alarmeren/informeren van de MKS-BO kan je dit samen met de prioritering van de storing doorgeven.\n\nTerwijl je aan het alarmeren bent naar MKS-BO, gaat de DVL met het concept verdeelbesluit en concept versperringsmaatregel naar de Verkeersleider CMBO. De DVL geeft bij de Verkeersleider CMBO aan dat er grote kans is op Hinderklasse 2. De Verkeersleider CMBO gaat met deze informatie nog een keer de rekentool invullen om te checken of er inderdaad risico is op een incident met Hinderklasse 2. Als blijkt dat er inderdaad sprake gaat zijn van een Hinderklasse 2 incident gaat de Verkeersleider CMBO Alerteren naar de OvD-S.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '5b. Modern krukken',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een wissel dat in Procesleiding als niet in de eindstand wordt gemeld, kan door middel van het nieuwe systeem wissel monitoring gecontroleerd worden of het wissel buiten wel in de eindstand en daardoor ook in de controle ligt. Er kan dan besloten worden of er toch door gereden kan worden op basis van deze informatie.\n\nVoor de uitleg van de verschillende maatregelen van verkeersleiding is het makkelijker om te beginnen met maatregel 5, Optimaal benutten van infra bij verstoringen. Dit omdat dit chronologisch meer op volgorde is.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '6. Optimaliseren versperringsmaatregelen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Versperringsmaatregelen zijn gemaakt om volledige versperringen van een spoor of meerdere sporen af te handelen. Er kan dan dus helemaal niet meer gereden worden of over minder sporen. Voor storingen waarbij nog wel gereden kan worden maar met vertraging is nu nog niets beschikbaar. Denk hierbij aan infrastoringen, het rijden met aanwijzingen of als er aanpassingen zijn aan de standaarddienstregeling door werkzaamheden of storingen elders.\n\nVoor deze situaties moet de DVL nu een voorstel versperringsmaatregel met aanpassingen voorleggen aan de Verkeersleider CMBO. De Verkeersleider CMBO checkt het voorstel van de DVL en maakt er een concept versperringsmaatregel van. De Verkeersleider CMBO kan hier nog aanpassingen aan doen, maar dit kan alleen een bijstelling naar beneden zijn.\n\nMet deze maatregel moeten er versperringsmaatregelen komen die voor dit soort situaties gemaakt zijn zodat er zo weinig mogelijk met aangepaste maatregelen gewerkt hoeft te worden.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        '7. Geen (passende) versperringsmaatregel beschikbaar',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Als er geen versperringsmaatregel beschikbaar is, maakt de Verkeersleider CMBO een nieuwe of aangepaste maatregel. Hiervoor is een leidraad beschikbaar en kan de Verkeersleider CMBO nu ook gebruik maken van de tool Focus op Klanthinder.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Monitoring en klanthinder',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Monitoring is voor het objectief meten van Klanthinder erg belangrijk. De input die door TRDL en DVL in Monitoring wordt gegeven, wordt gebruikt om onder andere de klanthinder per incident te meten. Het is dan ook erg belangrijk dat bij incidenten vertragingen aan de juiste oorzaak gekoppeld worden, zodat zowel ProRail als de vervoerders een goed beeld krijgen van de vertraging die direct door het incident is ontstaan en vertraging die wel rond dezelfde tijd of aan het einde van het incident ontstaat maar door een andere oorzaak.\n\nOm deze vertragingen uit elkaar te kunnen houden is afgesproken dat treinen die worden opgeheven tot de tijd die in Spoorweb wordt gelogd als eindtijd, gekoppeld worden aan het incident. Na deze tijd moet per niet of te laat rijdende trein gekeken worden wat hiervan de oorzaak is. Met deze afspraak wil ProRail een helder beeld krijgen van de daadwerkelijke Klanthinder die ontstaat door een incident.',
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

class AIKlanthinderNavigation extends StatelessWidget {
  const AIKlanthinderNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_ongepland_werk_main) {
          await Navigator.pushNamed(context, 'ai_ongepland_werk_main');
        } else if (result == PopupNavigation.ai_aanpassen_plan_main) {
          await Navigator.pushNamed(context, 'ai_aanpassen_plan_main');
        } else if (result == PopupNavigation.ai_vertragingen) {
          await Navigator.pushNamed(context, 'ai_vertragingen');
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
          value: PopupNavigation.ai_ongepland_werk_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Ongepland Werk',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_aanpassen_plan_main,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Aanpassen Plan',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_vertragingen,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Vertragingen',
          ),
        ),
      ],
    );
  }
}