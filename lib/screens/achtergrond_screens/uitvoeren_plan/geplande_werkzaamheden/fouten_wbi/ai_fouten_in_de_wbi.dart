import '/all_imports.dart';

class AIFoutenWBI extends StatelessWidget {
  const AIFoutenWBI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleAI,
        ),
        actions: const <Widget>[
          AIFoutenWBINavigation(),
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
                        'Binnen 72 uur voor uitvoering neem je contact op met de medewerker 24/7 werkplekbeveiliging. De medewerker 24/7 Werkplekbeveiliging bepaalt of er een versieophoging of een penwijziging noodzakelijk is. Een versieophoging of penwijziging kan slechts plaatsvinden indien zowel TRDL als medewerker 24/7 Werkplekbeveiliging hier mee instemmen.\n\nAls er geen overeenstemming wordt bereikt over een penwijziging/versieophoging of een penwijziging/versieophoging geen oplossing biedt en daardoor werkzaamheden dreigen te worden afgeblazen, dan wordt via de medewerker 24/7 werkplekbeveiliging naar de OvD-S ge??scaleerd.',
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

class AIFoutenWBINavigation extends StatelessWidget {
  const AIFoutenWBINavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ww_fouten_in_de_wbi) {
          await Navigator.pushNamed(context, 'ww_fouten_in_de_wbi');
        } else if (result == PopupNavigation.ai_geplande_werkzaamheden) {
          await Navigator.pushNamed(context, 'ai_geplande_werkzaamheden');
        } else if (result == PopupNavigation.ai_controleren_wbi) {
          await Navigator.pushNamed(context, 'ai_controleren_wbi');
        } else if (result == PopupNavigation.ai_aanvang_werkzaamheden) {
          await Navigator.pushNamed(context, 'ai_aanvang_werkzaamheden');
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
          value: PopupNavigation.ww_fouten_in_de_wbi,
          child: MenuItemContent(
            icon: IconUtils.iconWW,
            text: 'WW Fouten in de WBI',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_geplande_werkzaamheden,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Geplande Werkzaamheden',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_controleren_wbi,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Controleren WBI',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_aanvang_werkzaamheden,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Aanvang Werkzaamheden',
          ),
        ),
      ],
    );
  }
}
