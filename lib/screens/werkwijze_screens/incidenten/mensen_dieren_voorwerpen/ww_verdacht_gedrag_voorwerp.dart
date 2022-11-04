import '/all_imports.dart';

class WWVerdachtGedragVoorwerp extends StatelessWidget {
  const WWVerdachtGedragVoorwerp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWVerdachtGedragVoorwerp(),
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
                    title: 'Verdacht gedrag/voorwerp in de trein',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: StringUtils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een verdachte situatie in de trein laat je de trein stoppen op de eerstvolgende halte. Indien een halte niet mogelijk is laat je de trein stoppen op een zo veilig mogelijke locatie. Laat geen treinen stoppen naast de betreffende trein.\n\nBij een verdachte situatie op de baan laat je geen treinen meer toe tot de incidentlocatie. Treinen die niet meer kunnen stoppen laat je doorrijden.',
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
                        'Treinen komen niet tijdig tot stilstand voor het gevaarpunt, of de snelheid van treinen wordt niet tijdig teruggebracht voor het gevaarpunt.',
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
                        'Bij een melding van een verdachte situatie in een trein is het belangrijk dat de trein zo snel mogelijk op een locatie komt waar reizigers handelingsvrijheid hebben en hulpdiensten de trein het makkelijkst kunnen benaderen.',
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

class WWVerdachtGedragVoorwerpNavigation extends StatelessWidget {
  const WWVerdachtGedragVoorwerpNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_verdacht_gedrag_voorwerp) {
          await Navigator.pushNamed(context, 'ai_verdacht_gedrag_voorwerp');
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
          value: PopupNavigation.ai_verdacht_gedrag_voorwerp,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Verdacht gedrag/voorwerp',
          ),
        ),
      ],
    );
  }
}