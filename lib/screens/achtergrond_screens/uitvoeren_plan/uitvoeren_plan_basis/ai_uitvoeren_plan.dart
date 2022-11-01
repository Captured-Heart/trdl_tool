import '/all_imports.dart';

enum WhereToGoFromAIUitvoerenPlan {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_aanpassen_plan,
  // ignore: constant_identifier_names
  ai_bovenleiding_main,
}

class AIUitvoerenPlan extends StatelessWidget {
  const AIUitvoerenPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIUitvoerenPlanNavigation(),
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
                    title: 'Uitvoeren plan - basisinformatie',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Dienstregeling',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Reizigersvervoerders, goederenvervoerders, aannemers, besloten personenvervoer, stoomtreinmaatschappijen. Zo'n 50 partijen maken gebruik van het Nederlandse spoor. Het is kortom druk op het spoor. Vervoerders vragen elk jaar ruimte aan op het spoor. ProRail verdeelt vervolgens de capaciteit efficiënt en onafhankelijk, volgens wettelijke spelregels.\n\nRuimte verdelen gaat in 7 stappen:",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: '1. Basisuurpatroon opzetten',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "ProRail en vervoerders stellen samen het 'basisuurpatroon' op. Daarin leggen we vast hoeveel treinen er per uur kunnen rijden op een bepaald traject en in welke frequentie. In deze fase worden de grootste knelpunten vast geïnventariseerd;",
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: '2. Capaciteitsaanvragen indienen',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'Vervoerders vragen de capaciteit aan die ze nodig hebben. Ze laten weten wanneer ze op het spoor willen rijden, waar en met welke trein. Daarbij wordt het basisuurpatroon als basis gebruikt. Capaciteit aanvragen kan tot de 2e maandag in april. Daarna wordt beoordeeld of de aanvragen aan alle voorwaarden voldoen. Is dat niet het geval? Dan kan de vervoerder zijn aanvraag nog herzien;',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: '3. Conflicten oplossen',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'Willen twee partijen het spoor tegelijk gebruiken? Dan probeert men met kleine aanpassingen toch in ieders behoefte te voorzien. In meer dan 80% van de gevallen lukt dat ook. Komt men er niet uit? Dan gaat men, samen met de vervoerder aan tafel. Komt men er dan nog niet uit, gaat de zaak naar de Geschillencommissie;',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: '4. Conceptverdeling opstellen',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'Men stelt een conceptverdeling op, die bekend wordt gemaakt op de1e maandag in juli. Deze conceptverdeling is een eerste detailontwerp met per vervoerder wanneer hij kan rijden en met welke trein. En ook: wanneer een stuk spoor niet beschikbaar is, bijvoorbeeld vanwege onderhoud of nieuwbouw;',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: '5. Reacties op de conceptverdeling',
                  ),
                  BodyText(
                    indents: 1,
                    text: 'Vervoerders kunnen reageren op de conceptverdeling;',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: '6. De definitieve verdeling vaststellen',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "Op de 3e maandag is augustus wordt de definitieve verdeling vast gelegd en is het 'spoorboekje' voor het komende jaar klaar;",
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: '7. Start van de nieuwe dienstregeling',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        'Begin december gaan de treinen rijden volgens de nieuwe dienstregeling.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/spoorKaart2020.jpg',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Planmatig werken',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "De beschikbare infracapaciteit wordt planmatig toegewezen aan de verschillende infragebruikers. Het plan is zodanig ingericht dat er voldoende ruimte blijft voor bijsturing en extra capaciteitsaanvragen. Het plan is opgebouwd uit o.a. treinpaden, rangeerbewegingen, brugopeningen, WBI's, tijd/ruimte-slots en is gebaseerd op de overeengekomen planmatige verdeling van de infra.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Aanpassingen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Indien tijdens de uitvoering van het plan een incident optreedt, is het nodig om het plan aan te passen. Hierbij wordt zoveel mogelijk gebruik gemaakt van vooraf afgesproken scenario's en afhandelingen. Ook kan het plan aangepast worden wanneer extra infracapaciteit gevraagd wordt. Deze aanvragen worden gepland middels orderacceptatie.\n\nWanneer het plan moet worden aangepast zal dat zoveel mogelijk gebeuren conform vooraf gemaakte afspraken met de infragebruikers (Operationele Voorwaarden uitgewerkt in afhandelingsafspraken). Zie ook: Aanpassen plan - basisinformatie.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Planaanpassing bij incidenten',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een incident, dat leidt tot onmiddellijk gevaar voor mens, dier of milieu, is het toegestaan om het plan aan te passen zonder toepassing van de Operationele Voorwaarden. Sporen worden buitendienst genomen of onttrokken aan het operationele proces. Dit mag ook bij storingen aan de infra. De bedoeling is wel om zo snel mogelijk weer over te gaan tot uitvoering van het (aangepaste) plan.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Communicatie',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het originele plan en de wijzigingen in dit plan worden altijd aan de belanghebbenden gecommuniceerd.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle:
                        "Werkplekinformatie - Bedienvoorschriften (BVS) en bovenleiding schema's",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor ieder bediengebied van de TRDL zijn er bedieningsvoorschriften (BVS) aanwezig. Deze zijn digitaal aanwezig bij de betreffende werkplek waarvoor ze bestemd zijn. In de bedieningsvoorschriften worden de bijzonderheden van jouw bediengebied beschreven.\n\nOnderdelen:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text: '- BVS algemeen;',
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "- Bijzonderheden pplg's;\n\n- Tekeningen seinzaal, werkplekken, signaleringsbeelden;\n\n- Baanvak en emplacementstekeningen;\n\n- OS-bladen.",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Een apart onderdeel zijn de bovenleiding schema's. Meer info vind je bij Bovenleiding - Basisinformatie.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'BVS algemeen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'In dit gedeelte vind je algemene gegevens zoals algemene en plaatsnaam verkortingen en gegevens betreffende de vrije baan.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "Bijzonderheden PPLG's",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "In dit gedeelte vind je alle bijzonderheden van het pplg. De opbouw van alle BVS'en is gelijk. In eerste instantie is het lastig lezen, maar als je eenmaal doorhebt wat er staat, zal je alle BVS'en goed kunnen lezen. Je vindt hier onder andere gegevens over:",
                  ),
                  BodyText(
                    indents: 1,
                    text:
                        "- Seinbediening;\n\n- Vertrekseinlichten;\n\n- Treinaankondiging;\n\n- Fictieve eindseinnummers;\n\n- 'STOP'/'DOOR'-criterium vrije baan;\n\n- Vertraagd uit de stand 'STOP' komende seinen;\n\n- Overwegen/waarschuwingsinstallaties;\n\n- Herroepen.",
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Tekeningen signaleringsbeelden',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'In dit onderdeel vind je tekeningen van de overzicht signaleringsbeelden van de werkplekken.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Baanvak en emplacementstekeningen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Waarschijnlijk is dit het onderdeel van de BVS wat je als TRDL het meest zal gebruiken. Je vindt hier de tekeningen van jouw bediengebied (pplg's en vrije banen). De gebruikte symbolen op de BVS-tekening kun je vinden in de B-voorschriften Deel I.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/uitvoeren_plan_basis/bvsTekening.png',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'OS-bladen (overzicht seinen)',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Op de OS-bladen vind je het overzicht van alle seinen in jouw bediengebied. Deze tekeningen worden ook wel seinbeeldenkaarten genoemd. Je kunt hier onder andere informatie vinden over de seinbeelden bij een bepaalde rijweginstelling en de afstanden tussen twee seinen.',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/uitvoeren_plan_basis/osBlad.png',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: "Bovenleiding schema's",
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Op dit moment zijn bovenleidingschema's nog niet op alle posten digitaal beschikbaar. Op deze tekeningen vind je onder andere de verschillende bovenleidingsgroepen, welke elektrische scheidingen gebruikt worden en waar onder- en schakelstations zijn. Ook deze tekening zal je als TRDL vaak gebruiken.",
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/uitvoeren_plan/uitvoeren_plan_basis/bovenleidingSchema.png',
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

class AIUitvoerenPlanNavigation extends StatelessWidget {
  const AIUitvoerenPlanNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIUitvoerenPlan>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromAIUitvoerenPlan result) async {
        if (result == WhereToGoFromAIUitvoerenPlan.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromAIUitvoerenPlan.ai_aanpassen_plan) {
          await Navigator.pushNamed(context, 'ai_aanpassen_plan');
        } else if (result ==
            WhereToGoFromAIUitvoerenPlan.ai_bovenleiding_main) {
          await Navigator.pushNamed(context, 'ai_bovenleiding_main');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromAIUitvoerenPlan>>[
        const PopupMenuItem<WhereToGoFromAIUitvoerenPlan>(
          value: WhereToGoFromAIUitvoerenPlan.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIUitvoerenPlan>(
          value: WhereToGoFromAIUitvoerenPlan.ai_aanpassen_plan,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Aanpassen Plan',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIUitvoerenPlan>(
          value: WhereToGoFromAIUitvoerenPlan.ai_bovenleiding_main,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Bovenleiding',
          ),
        ),
      ],
    );
  }
}
