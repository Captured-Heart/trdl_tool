import '/all_imports.dart';

enum WhereToGoFromAIOnjuisteDetectie {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_onjuiste_detectie,
  // ignore: constant_identifier_names
  ai_bijzonderheden_trein,
  // ignore: constant_identifier_names
  ai_vervoersregeling,
}

class AIOnjuisteDetectie extends StatelessWidget {
  const AIOnjuisteDetectie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIOnjuisteDetectieNavigation(),
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
                    title: 'Voertuigen zonder juiste detectie',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Lichte treinen en/of materieel met schijfremmen worden slechter gedetecteerd omdat de spoorstaven door het slechtere contact tussen de wielen de rails niet goed worden kortgesloten. De treinen worden niet altijd goed gedetecteerd en de ATB EG werkt bij deze treinen ook minder goed omdat dat eveneens via de spoorstroomloop gaat. Het grootste gevaar treedt op bij overwegen, omdat de spoorbomen te laat kunnen sluiten.\n\nDaarom wordt op spoorlijnen met dit materieel vaak een andere detectie geïnstalleerd. Officieel spreekt men bij dit soort materieel van voertuigen zonder de zekerheid van juiste spoordetectie.\n\nIn Nederland zijn bijvoorbeeld de volgende materieeltypen slecht detecteerbaar:',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Lighttrains als de Stadler/GTW en LINT;\n\n- Railvoertuig Incidentenbestrijding;\n\n- Loc G2000.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Toegang tot het spoor',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Al het materieel wat op het spoor rijdt is in bezit van een inzetcertificaat. Op het inzetcertificaat staat of er beperkingen zijn voor de inzetbaarheid van het materieel op het gecontroleerde spoor. Voor treinen die niet juist detecteren, zoals hierboven beschreven, worden aanvullende maatregelen voorgeschreven om de veiligheid te waarborgen.\n\nDe vervoerder is verplicht om jou te informeren m.b.t. de juiste detectie op het spoor. Dit kan via een (lokale) orderaanvraag (Medewerker rangeren, DVL) waarbij aangegeven wordt dat het materieel niet (juist) detecteert of een veiligheidsbericht van je buurTRDL.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: 'Detectie op niet aangepaste baanvakken',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Overigens is uit detectieproeven gebleken dat op spoor wat niet is aangepast voor het berijden met Lightrail een solo rijdende DM90 en minimaal twee gekoppelde LINT-stellen zich wél normaal detecteren als het spoor binnen 24 uur minimaal 36 keer is bereden door normaal detecterend elektrisch materieel. Ook is vastgesteld dat minimaal twee gekoppelde DM90-stellen zich ook normaal detecteren; er hoeft dan niet aan extra voorwaarden worden voldaan.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle:
                        'Voertuigen zonder juiste detectie i.c.m. overwegen',
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Voor het veilig berijden van overwegen hoef je als TRDL niets te doen, dit is aan de begeleider van het voertuig zonder juiste detectie: aanwijzingen OVW zijn dus niet nodig; dit in tegenstelling tot het berijden van gedurende langere tijd niet bereden sporen.\n\nTenzij je links tegen de rijrichting gaat rijden. De Werkwijze Treindienstleider schrijft dan voor dat je met een aanwijzing OVW rijdt.',
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

class AIOnjuisteDetectieNavigation extends StatelessWidget {
  const AIOnjuisteDetectieNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIOnjuisteDetectie>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromAIOnjuisteDetectie result) async {
        if (result == WhereToGoFromAIOnjuisteDetectie.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result ==
            WhereToGoFromAIOnjuisteDetectie.ww_onjuiste_detectie) {
          await Navigator.pushNamed(context, 'ww_onjuiste_detectie');
        } else if (result ==
            WhereToGoFromAIOnjuisteDetectie.ai_bijzonderheden_trein) {
          await Navigator.pushNamed(context, 'ai_bijzonderheden_trein');
        } else if (result ==
            WhereToGoFromAIOnjuisteDetectie.ai_vervoersregeling) {
          await Navigator.pushNamed(context, 'ai_vervoersregeling');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromAIOnjuisteDetectie>>[
        const PopupMenuItem<WhereToGoFromAIOnjuisteDetectie>(
          value: WhereToGoFromAIOnjuisteDetectie.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIOnjuisteDetectie>(
          value: WhereToGoFromAIOnjuisteDetectie.ww_onjuiste_detectie,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Onjuiste Detectie',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIOnjuisteDetectie>(
          value: WhereToGoFromAIOnjuisteDetectie.ai_bijzonderheden_trein,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Bijzonderheden Trein',
          ),
        ),
        const PopupMenuItem<WhereToGoFromAIOnjuisteDetectie>(
          value: WhereToGoFromAIOnjuisteDetectie.ai_vervoersregeling,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Vervoersregeling',
          ),
        ),
      ],
    );
  }
}