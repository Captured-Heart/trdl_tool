import '/all_imports.dart';

class AIKunstwerkenBasis extends StatelessWidget {
  const AIKunstwerkenBasis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIKunstwerkenBasisNavigation(),
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
                    title: 'Kunstwerken - Basisinformatie',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor een TRDL zijn er behalve wissels en seinen nog veel meer infra-objecten die bediend moeten worden om de trein- en rangeerdienst soepel te laten verlopen. Op iedere post zullen er verder nog infra-objecten zijn die bij de plaatselijke bijzonderheden horen. Informatie daarover is op de post zelf aanwezig.',
                  ),
                  SizedBoxH(),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Brug',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een spoorbrug is een brug waar een spoorweg over een verkeersweg, een andere spoorweg of een waterweg heen gaat. Sommige spoorbruggen zijn beweegbaar: ze kunnen open om scheepvaartverkeer door te laten. Bruggen spelen een rol bij de dienstregeling/planning van zowel het trein- als het scheepvaartverkeer.\n\nBeweegbare bruggen hebben openingstijden. Het is voor zowel de TRDL als de brugwachter belangrijk om te weten wanneer een brug geopend moet worden. We kennen beweegbare bruggen met vaste en variabele openingstijden.\nVoor beweegbare bruggen zijn brugwachters in dienst die in samenspraak met de TRDL de bruggen bedienen. Er zijn bruggen waarbij de brugwachter de volledige bediening tot zijn beschikking heeft en alleen communicatie voert met de TRDL. Ook zijn er bruggen waarbij de TRDL de bediening regelt in samenwerking met de brugwachter.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_kunstwerken_basis_1.png',
                  ),
                  SizedBoxH(),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_kunstwerken_basis_2.png',
                  ),
                  BodyText(
                    indents: 0,
                    text:
                        'Voordat de brugwachter de brug kan openen, moet je in procesleiding een bedieningshandeling uitvoeren. De brugwachter kan de brug nu ontgrendelen en openen. Als de brug weer gesloten en vergrendeld is, kun je de bedieningshandeling terugdraaien en de brug weer laten berijden door treinen. Plaatselijk kan een afwijkende werkwijze gelden. Deze vind je terug in de plaatselijke bijzonderheden.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_kunstwerken_basis_3.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Viaduct',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een viaduct is een grote verkeersbrug die meestal uit meerdere overspanningen bestaat. Een viaduct onderscheidt zich van een tunnel door de afwezigheid van natuurlijke elementen tussen de kruisende infrastructuur.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_kunstwerken_basis_4.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Fly-over',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        "Een fly-over is een ongelijkvoerse kruising; een kunstwerk dat over andere sporen gaat. Als een kunstwerk onder andere sporen doorgaat, spreekt men van een 'dive-under'. Een mooi voorbeeld van beide is te vinden rond Rotterdam Lombardijen. Van de beide HSL-sporen, die daar overgaan op bestaand spoor is er een spoor als 'fly-over' uitgevoerd. Het andere spoor is als 'dive-under' gebouwd.\n\nHet spoorviaduct, ter hoogte van de aftakking van het spoor naar Woerden - Gouda, maakt een vrije kruising van sporen mogelijk voor de spoorlijnen Harmelen - Woerden en Amsterdam - Utrecht. Dankzij de vrije kruising hoeven treinen straks niet meer op elkaar te wachten en neemt de kans op vertragingen af.",
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_kunstwerken_basis_5.png',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_kunstwerken_basis_6.png',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Tunnel',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Spoortunnels komen in Nederland in vele varianten voor. Spoortunnels voor enkel goederenverkeer moeten aan andere voorwaarden voldoen dan die voor reizigersverkeer. Een beschrijving van spoortunnels in jouw gebied, hun TTI en hoe om te gaan met verschillende meldingen vind je terug in de plaatselijke regelgeving.',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_kunstwerken_basis_7.png',
                  ),
                  BodyText(
                    indents: 0,
                    text: 'In het algemeen geldt het volgende:',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Rook- en/of brandmelding',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een rook- en/of brandmelding kan het van levensbelang zijn dat er snel en adequaat gehandeld en gealarmeerd wordt, met zo volledig mogelijke informatie. Een rook- en/of brandmelding in een tunnel en/of in een trein in een tunnel kun je ontvangen van:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- MCN die een (alarm)oproep plaatst;\n- Melding via systeem;\n- Derden.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'De eerste handelingen die je moet verrichten na een rook- en/of brandmelding zijn:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Plaats een alarmoproep (indien de melding NIET via een alarmoproep is binnengekomen;\n- Indien systeem aanwezig, activeer de calamiteitenmodus (TTI) en/of activeer de hotline naar de Meldkamer Brandweer;\n- Herroep alle toeleidende seinen;\n- Zet ARI uit voor de toeleidende planregels;\n- Alarmeer de buurTRDL;\n- Verhinder alle toeleidende seinen voor bediening;\n- Alarmeer MKS-BO en informeer DVL, OBI en CRA.',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het aantal door jezelf te verrichten handelingen is afhankelijk van het systeem behorende bij de desbetreffende tunnel.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'Uitleidende planregels uit de tunnel',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Het doel van het niet uit ARI halen van uitleidende planregels oftewel rijwegen de tunnel uit veilig zetten, is om zo min mogelijk treinen in de tunnel te laten stranden.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext: 'In de tunnel gestrande treinen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Een trein geldt in een tunnel als gestrand wanneer deze in de tunnel tot stilstand is gekomen. Je stemt met de Algemeen Leider af wanneer en waarheen gestrande treinen kunnen worden afgevoerd.',
                  ),
                  SizedBoxH(),
                  BoldText(
                    indents: 0,
                    boldtext:
                        'Stroomschema alarmering rook- en/of brandmelding in tunnels',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Indien je een melding krijgt van rook en/of brand in een tunnel handel je conform onderstaand stroomschema:',
                  ),
                  InsertImage(
                    image:
                        'assets/images/achtergrond_info/incidenten/ai_kunstwerken_basis_9.png',
                  ),
                  BoldText(
                    indents: 0,
                    boldtext: 'Storing of uitval TTI',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een storing of uitval TTI neem je altijd contact op met het OBI. De bedieningsdeskundige van het OBI bepaalt of een tunnel n.a.v. (kritische) storingen of uitval van tunneltechnische installaties nog veilig berijdbaar is.\nPlaatselijk kan van bovenstaande worden afgeweken, zie hiervoor de plaatselijke regelgeving.',
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

class AIKunstwerkenBasisNavigation extends StatelessWidget {
  const AIKunstwerkenBasisNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_kunstwerken_main) {
          await Navigator.pushNamed(context, 'ww_kunstwerken_main');
        } else if (result == PopupNavigation.ai_kunstwerken_aanrijding) {
          await Navigator.pushNamed(context, 'ai_kunstwerken_aanrijding');
        } else if (result == PopupNavigation.ai_kunstwerken_storing) {
          await Navigator.pushNamed(context, 'ai_kunstwerken_storing');
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
          value: PopupNavigation.ww_kunstwerken_main,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Kunstwerken',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_kunstwerken_aanrijding,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Kunstwerken - Aanrijding/Aanvaring',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_kunstwerken_storing,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Kunstwerken - Storing',
          ),
        ),
      ],
    );
  }
}