import '/all_imports.dart';

enum WhereToGoFromAIFoutenWBI {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ww_fouten_in_de_wbi,
  // ignore: constant_identifier_names
  ai_geplande_werkzaamheden,
  // ignore: constant_identifier_names
  ai_controleren_wbi,
  // ignore: constant_identifier_names
  ai_aanvang_werkzaamheden,
}

class AIFoutenWBI extends StatelessWidget {
  const AIFoutenWBI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.titleAI,
        ),
        actions: const <Widget>[
          AIFoutenWBINavigation(),
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
                      title: 'Fouten in de WBI',
                    ),
                    SizedBoxH(),
                    BodyText(
                      indents: 0,
                      text:
                          'Wanneer er een fout in de WBI is geconstateerd zijn er twee mogelijkheden:',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Meer dan 72 uur voor uitvoering:',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Bij meer dan 72 uur voor uitvoering neem je contact op met de afdeling Werkplekbeveiliging van uw regio. TRDL en medewerker Werkplekbeveiliging stemmen de vereiste wijzigingen af, waarna de medewerker Werkplekbeveiliging de WBI aanpast in overleg met de betrokken aannemer.\n\nVoorwaarde daarbij is dat de gewijzigde WBI na aanlevering door de TRDL in overleg met de medewerker Werkplekbeveiliging wordt gecontroleerd.',
                    ),
                    SizedBoxH(),
                    BoldText(
                      indents: 0,
                      boldtext: 'Binnen 72 uur voor uitvoering:',
                    ),
                    BodyText(
                      indents: 0,
                      text:
                          'Binnen 72 uur voor uitvoering neem je contact op met de medewerker 24/7 werkplekbeveiliging. De medewerker 24/7 Werkplekbeveiliging bepaalt of er een versieophoging of een penwijziging noodzakelijk is. Een versieophoging of penwijziging kan slechts plaatsvinden indien zowel TRDL als medewerker 24/7 Werkplekbeveiliging hier mee instemmen.\n\nAls er geen overeenstemming wordt bereikt over een penwijziging/versieophoging of een penwijziging/versieophoging geen oplossing biedt en daardoor werkzaamheden dreigen te worden afgeblazen, dan wordt via de medewerker 24/7 werkplekbeveiliging naar de OvD-S geëscaleerd.',
                    ),
                  ],
            ),
          ],
        ),
      ),
    ),);
  }
}

class AIFoutenWBINavigation extends StatelessWidget {
  const AIFoutenWBINavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromAIFoutenWBI>(
            icon: const Icon(Utils.iconInfo),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIFoutenWBI result) async {
              if (result == WhereToGoFromAIFoutenWBI.home_screen) {
                await Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIFoutenWBI.ww_fouten_in_de_wbi) {
                await Navigator.pushNamed(context, 'ww_fouten_in_de_wbi');
              } else if (result ==
                  WhereToGoFromAIFoutenWBI.ai_geplande_werkzaamheden) {
                await Navigator.pushNamed(context, 'ai_geplande_werkzaamheden');
              } else if (result ==
                  WhereToGoFromAIFoutenWBI.ai_controleren_wbi) {
                await Navigator.pushNamed(context, 'ai_controleren_wbi');
              } else if (result ==
                  WhereToGoFromAIFoutenWBI.ai_aanvang_werkzaamheden) {
                await Navigator.pushNamed(context, 'ai_aanvang_werkzaamheden');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIFoutenWBI>>[
              const PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.home_screen,
                child: MenuItemContent(
                  icon: Utils.iconHome,
                  text: 'Home',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.ww_fouten_in_de_wbi,
                child: MenuItemContent(
                  icon: Utils.iconWW,
                  text: 'WW Fouten in de WBI',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.ai_geplande_werkzaamheden,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Geplande Werkzaamheden',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.ai_controleren_wbi,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Controleren WBI',
                ),
              ),
              const PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.ai_aanvang_werkzaamheden,
                child: MenuItemContent(
                  icon: Utils.iconAI,
                  text: 'AI Aanvang Werkzaamheden',
                ),
              ),
            ],
          );
  }
}