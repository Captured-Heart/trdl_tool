import '/all_imports.dart';

enum WhereToGoFromAIRijwegenTrots {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_rijwegen_ari,
  // ignore: constant_identifier_names
  ai_rijwegen_planscherm,
  // ignore: constant_identifier_names
  ai_bijzonderheden_rijwegen_main,
  // ignore: constant_identifier_names
  ai_rijwegen_planopbouw,
  // ignore: constant_identifier_names
  ai_rijwegen_bedienscherm,
}

class AIRijwegenTrots extends StatelessWidget {
  const AIRijwegenTrots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.titleAI,
        ),
        actions: const <Widget>[
          AIRijwegenTrotsNavigation(),
           HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
          children: <TextCard>[
            TextCard(
                  widgetList: const <Widget>[
                    TitleText(
                      title:
                          'Rijwegen - basisinformatie: Automatische Bediening TROTSnummers (ABT)',
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'ABT: Automatische Bediening TROTSnummers',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'ABT is een functionaliteit van procesleiding waarbij de bediening van TROTS automatisch kan worden uitgevoerd. Deze geautomatiseerde bediening van TROTS wordt uitgevoerd op basis van de informatie uit het procesplan rijwegen (PPR).\n\nDe afkorting TROTS staat voor TRein Observatie en Tracking Systeem.',
                    ),
                  ],
                ),
TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'Automatisch omnummeren',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Het  invullen  van  treinnummers bij  materieelrelaties van  het  soort  'splitsen',  'overgaan'  en  'combineren' worden automatisch uitgevoerd. Bij splitsen en overgaan wordt direct bij aankomst omgenummerd. Bij combineren wordt met omnummeren gewacht tot het laatste deel van de materieelrelatie aangekomen is.",
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Voorwaarden voor automatische omnummering:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'ABT mag alleen automatisch omnummeren als aan alle volgende voorwaarden is voldaan:\n\nDe twee belangrijkste voorwaarden zijn:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '1. Het aankomst- en vertrekspoor moeten hetzelfde zijn, of tot dezelfde spoorgroep behoren;\n\n2. Als het aankomst- en vertrekspoor verschillend zijn: binnen de spoorgroep mogen zich geen treinnummers bevinden die niet tot de materieelrelatie behoren.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Punt 3, 4, 5 en 6 beschrijven de uitzonderingssituaties:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          "3. Als het aankomst- en vertrekspoor verschillend zijn: er moet een aaneensluitende sectiebezetting zijn op het vertrekspoor. Daarnaast mag er geen andere sectiebezetting op het vertrekspoor zijn;\n\n4. Bij overgaan en splitsen: de aanvoerende activiteit moet zijn 'aangekomen'. Dit is het geval zodra het juiste treinnummer op het aankomstspoor aanwezig is en het aankomstspoor bezet wordt. Het aankomstspoor wordt bezet zodra de sectie na het laatste tegensein (in de richting van de aankomstactiviteit) bezet is. Is er geen tegensein aanwezig, of valt het tegensein qua positie samen met het beginsein van de laatste seinstap, dan geldt alleen de eis dat het juiste treinnummer aanwezig moet zijn;\n\n5. Bij combineren: de laatste aanvoerende activiteit  moet zijn 'aangekomen'. Dit is het geval zodra het treinnummer op het aankomstspoor aanwezig is;\n\n6. Als er van een set bij elkaar horende planregels, één of meer materieelrelaties uit staan voor ABT, zal er geen enkele van de bij deze materieelrelaties behorende omnummeringen plaatsvinden.",
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'ABT vanaf TROTS-loze gebieden of sternummers',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          'Bij treinen komend vanaf een gebied zonder TROTS, zoals rangeerterreinen, grensbaanvakken en bij treinen met een sternummer komend vanaf de vrije baan krijg je bedienvoorstellen (ABT-knop licht rood op). Sternummers die optreden op andere sporen dan vrije baansporen worden door ABT ongemoeid gelaten. Tijdens een stroomstoring dienen geen ABT bedienvoorstellen gegeven te worden.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'ABT tijdvenster bij gebieden zonder TROTS',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          'Om tijdig de TRDL te triggeren dat er een treinnummer op een bepaald spoor ingevuld moet worden, genereert ABT bij gebieden zonder TROTS een bedienvoorstel. Het bedienvoorstel wordt gegeven op een bepaalde door de postbeheerder configureerbare tijd en spoor van 0-10 minuten vóór de insteltijd. Dit betreft het ABT tijdvenster.\n\nLet op: ABT vanaf TROTS-loze gebieden en automatisch omnummeren als gevolg van een materieelrelatie werken onafhankelijk van elkaar. Dit betekent dat er een pop-up kan verschijnen over een in te voeren/wijziging TROTS-nummer terwijl de omnummering door de materieelrelatie al is uitgevoerd.',
                    ),
                    BoldText(
                      indents: 0,
                      boldtext:
                          'ABT tijdvenster binnen de automatische omnummering',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          'ABT heeft een eigen tijdvenster binnen de automatische omnummering van 30 minuten. Dit tijdvenster is actief per activiteit rond de insteltijd van deze planregel, dus voor een eerste afvoerende activiteit met een insteltijd van 10.00 uur zal het tijdvenster actief zijn van 9.30 uur tot 10.30 uur.\n\nVoor een tweede activiteit met een insteltijd van 10.05 uur zal het tijdvenster actief zijn van 9.35 uur tot 10.35 uur en zal ABT binnen deze tijdsperiode dus nog omnummeren.\n\nBij aanpassing van de insteltijd wordt ook de scoop van het tijdvenster mee aangepast: dus na 10.35 uur wordt er niet meer omgenummerd tenzij de insteltijd wordt opgehoogd.\n\nUiteraard werkt het tijdvenster ook zo voor combineer- en overgangsrelaties, denk hierbij aan treinen die veel te vroeg of te laat binnenkomen. Het tijdvenster ABT is actief per individuele omnummeractiviteiten niet configureerbaar.',
                    ),
                  ],
                ),
TextCard(
                  widgetList: const <Widget>[
                    SubTitleText(
                      subtitle: 'Bediening',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'ABT is selectief aan/uit te schakelen per PPLG, per spoor of per planregel. Alleen afvoerende activiteiten kunnen worden uitgezet.\n\nDe toegang tot de ABT instellingen verloopt via 2 knoppen in het planmenu van het procesplan rijwegen venster:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text: "- De knop 'ABT';\n\n- De knop 'ARI/ABT'.",
                    ),
                    SizedBoxH(),
                    SubTitleText(
                      subtitle: 'ABT presentatie in de planregel',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          "Voor een goede werking van ARI en reizigersinformatie systemen is het belangrijk dat treinnummers op het juiste moment en plaats naar een nieuw nummer worden omgenummerd. ABT doet dit op basis van materieelrelaties.\n\nOmdat de ABT-instellingen en -afhandelingen één op één samenhangen met de planregels op het procesplan rijwegen venster, worden ze gepresenteerd door middel van verschillende weergaves van de 'M' in de betreffende planregels:",
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- m = planregel behoort bij een aanvoerende activiteit;\n\n- M = planregel behoort bij een afvoerende activiteit.',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'De kleine letter m heeft altijd de kleur die de gehele planregel heeft. De kleuren van de hoofdletter M zie je hieronder uitgelegd.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_trots/rijwegentrots1.png',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Als de M een andere kleur heeft dan wit kan je nadere informatie over de ABT status opvragen door een pop-up venster op te roepen met de ABT status voor die planregel.\n\nAls de M een andere kleur heeft dan wit kan je nadere informatie over de ABT status opvragen door een pop-up venster op te roepen met de ABT status voor die planregel.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext:
                          'De mogelijke statussen bij groen en zeegroen zijn:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- ABT wacht op een aanvoerende trein;\n\n- Binnen de spoorgroep van de materieelrelatie bevindt zich een treinnummer, dat niet bij de materieelrelatie hoort, met vermelding van het treinnummer;\n\n- ABT wacht tot alle planregels voor aanvoerende activiteiten afgehandeld zijn (bijv. bij het omrijden van materieel);\n\n- Status onbekend (bijv. na in- en uitloggen).',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'De mogelijke statussen bij rood zijn:',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 1,
                      text:
                          '- ABT heeft niet omgenummerd, omdat het tijdvenster verstreken is;\n\n- ABT heeft het omnummeren afgebroken met een foutmelding. Deze foutmelding wordt ook gepresenteerd in het meldingenvenster, maar dat kan erg ruim voor het moment van omnummeren zijn geweest, waardoor de betekenis van de melding aan de TRDL voorbij is gegaan;\n\n- De samengestelde materieelrelatie is te complex voor ABT.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Hoe wordt ABT bedienvoorstel getoond?',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Nadat je in de planmenubalk de ABT knop hebt geactiveerd, wordt het ABT bedienvoorstel voor de invoer van een treinnummer zichtbaar. Deze bestaat uit een pop-up op het procesplan rijwegen venster met een keuzelijst met activiteitnummers die in het PPR overeenkomen met de van-spoorlocatie en de insteltijd.',
                    ),
                    SizedBoxH(),
                    InsertImage(
                      image:
                          'assets/images/achtergrond_info/uitvoeren_plan/bijzonderheden_rijwegen/rijwegen_trots/rijwegentrots2.png',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'ABT bedienvoorstel pop-up',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          "Bij het verschijnen van deze pop-up wordt er slechts één treinnummer getoond. Pas als de TRDL op de knop 'Treinnummer' drukt, verschijnt ook de lijst met alternatieve treinnummers, die gekozen worden op basis van het van-spoor en het plan. Hieruit kan dan een ander treinnummer gekozen worden. Handmatige bewerking van het voorgestelde treinnummer is ook mogelijk. De knoppen 'Volgend voorstel' en 'Vorig voorstel' maken het mogelijk om door de lijst met nog niet verwerkte bedienvoorstellen te lopen.",
                    ),
                  ],
            ),
          ],
        ),
      ),
    );
  }
}

class AIRijwegenTrotsNavigation extends StatelessWidget {
  const AIRijwegenTrotsNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIRijwegenTrots>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIRijwegenTrots result) async {
              if (result == WhereToGoFromAIRijwegenTrots.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIRijwegenTrots.ai_rijwegen_ari) {
                await Navigator.pushNamed(context, 'ai_rijwegen_ari');
              } else if (result ==
                  WhereToGoFromAIRijwegenTrots.ai_rijwegen_planscherm) {
                await Navigator.pushNamed(context, 'ai_rijwegen_planscherm');
              } else if (result ==
                  WhereToGoFromAIRijwegenTrots
                      .ai_bijzonderheden_rijwegen_main) {
                await Navigator.pushNamed(
                  context,
                  'ai_bijzonderheden_rijwegen_main',
                );
              } else if (result ==
                  WhereToGoFromAIRijwegenTrots.ai_rijwegen_planopbouw) {
                await Navigator.pushNamed(context, 'ai_rijwegen_planopbouw');
              } else if (result ==
                  WhereToGoFromAIRijwegenTrots.ai_rijwegen_bedienscherm) {
                await Navigator.pushNamed(context, 'ai_rijwegen_bedienscherm');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIRijwegenTrots>>[
              const PopupMenuItem<WhereToGoFromAIRijwegenTrots>(
                value: WhereToGoFromAIRijwegenTrots.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenTrots>(
                value: WhereToGoFromAIRijwegenTrots.ai_rijwegen_ari,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Rijwegen ARI',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenTrots>(
                value: WhereToGoFromAIRijwegenTrots.ai_rijwegen_planscherm,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Rijwegen Planscherm',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenTrots>(
                value: WhereToGoFromAIRijwegenTrots
                    .ai_bijzonderheden_rijwegen_main,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Bijzonderheden Rijwegen',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenTrots>(
                value: WhereToGoFromAIRijwegenTrots.ai_rijwegen_planopbouw,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Rijwegen Planopbouw',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIRijwegenTrots>(
                value: WhereToGoFromAIRijwegenTrots.ai_rijwegen_bedienscherm,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Rijwegen Bedienscherm',
                ),
              ),
            ],
          ),);
  }
}