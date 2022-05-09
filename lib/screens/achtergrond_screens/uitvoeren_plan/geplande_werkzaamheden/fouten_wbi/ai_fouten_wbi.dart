import 'package:trdl_tool/all_imports.dart';

enum WhereToGoFromAIFoutenWBI {
  home_screen,
  ww_fouten_in_de_wbi,
  ai_geplande_werkzaamheden,
  ai_controleren_wbi,
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
          title: 'Achtergrondinformatie',
        ),
        actions: [
          PopupMenuButton<WhereToGoFromAIFoutenWBI>(
            icon: const Icon(Icons.info_outlined),
            tooltip: 'Meer informatie',
            onSelected: (WhereToGoFromAIFoutenWBI result) {
              if (result == WhereToGoFromAIFoutenWBI.home_screen) {
                Navigator.pushNamed(context, 'home_screen');
              } else if (result ==
                  WhereToGoFromAIFoutenWBI.ww_fouten_in_de_wbi) {
                Navigator.pushNamed(context, 'ww_fouten_in_de_wbi');
              } else if (result ==
                  WhereToGoFromAIFoutenWBI.ai_geplande_werkzaamheden) {
                Navigator.pushNamed(context, 'ai_geplande_werkzaamheden');
              } else if (result ==
                  WhereToGoFromAIFoutenWBI.ai_controleren_wbi) {
                Navigator.pushNamed(context, 'ai_controleren_wbi');
              } else if (result ==
                  WhereToGoFromAIFoutenWBI.ai_aanvang_werkzaamheden) {
                Navigator.pushNamed(context, 'ai_aanvang_werkzaamheden');
              } else {
                Navigator.pop(context);
              }
            },
            itemBuilder: (BuildContext context) =>
                <PopupMenuEntry<WhereToGoFromAIFoutenWBI>>[
              PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.home_screen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.home,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('Home'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.ww_fouten_in_de_wbi,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.train,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('WW Fouten in de WBI'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.ai_geplande_werkzaamheden,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Geplande Werkzaamheden'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.ai_controleren_wbi,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Controleren WBI'),
                  ],
                ),
              ),
              PopupMenuItem<WhereToGoFromAIFoutenWBI>(
                value: WhereToGoFromAIFoutenWBI.ai_aanvang_werkzaamheden,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu_book,
                      color: flexSchemeLight.primary,
                    ),
                    const Text('AI Aanvang Werkzaamheden'),
                  ],
                ),
              ),
            ],
          ),
          const HomeButton(),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
