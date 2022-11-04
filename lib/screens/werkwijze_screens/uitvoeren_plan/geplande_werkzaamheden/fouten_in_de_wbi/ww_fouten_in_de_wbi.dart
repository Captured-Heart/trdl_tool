import '/all_imports.dart';

enum WhereToGoFromWWFoutenWBI {
  // ignore: constant_identifier_names
  home_screen,
  // ignore: constant_identifier_names
  ai_fouten_wbi,
}

class WWFoutenWBI extends StatelessWidget {
  const WWFoutenWBI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWFoutenInDeWBINavigation(),
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
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 1,
                    text:
                        '- Buiten 72 uur voor uitvoering neem je contact op met de afdeling Werkplekbeveiliging van de regio;\n\n- Binnen 72 uur voor uitvoering neem je contact op met de medewerker 24/7 werkplekbeveiliging.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleRisico,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Trein komt onbedoeld in voor werkzaamheden beschikbaar gesteld gebied.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Fouten in de WBI/WECO kunnen ervoor zorgen dat werkplekbeveiligingsmaatregelen van de TRDL en/of de LWB niet of niet juist getroffen kunnen worden.\n\nFouten kunnen gecorrigeerd worden in overleg met de afdeling Werkplekbeveiliging. Zij bepalen of er een nieuwe versie van de WBI/WECO wordt uitgebracht of een penwijziging wordt doorgevoerd.',
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

class WWFoutenInDeWBINavigation extends StatelessWidget {
  const WWFoutenInDeWBINavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<WhereToGoFromWWFoutenWBI>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (WhereToGoFromWWFoutenWBI result) async {
        if (result == WhereToGoFromWWFoutenWBI.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == WhereToGoFromWWFoutenWBI.ai_fouten_wbi) {
          await Navigator.pushNamed(context, 'ai_fouten_wbi');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<WhereToGoFromWWFoutenWBI>>[
        const PopupMenuItem<WhereToGoFromWWFoutenWBI>(
          value: WhereToGoFromWWFoutenWBI.home_screen,
          child: MenuItemContent(
            icon: IconUtils.iconInfo,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<WhereToGoFromWWFoutenWBI>(
          value: WhereToGoFromWWFoutenWBI.ai_fouten_wbi,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Fouten WBI',
          ),
        ),
      ],
    );
  }
}