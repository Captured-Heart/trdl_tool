import '/all_imports.dart';

class WWOverigeIncidentenMain extends StatelessWidget {
  const WWOverigeIncidentenMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: StringUtils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWOverigeIncidentenMainNavigation(),
          HomeButton(),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <TextCard>[
              const TextCard(
                widgetList: <Widget>[
                  TitleText(
                    title: 'Overige Incidenten',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  const TitleText(
                    title: 'Ga snel naar',
                  ),
                  const SizedBoxH(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      NavButton(
                        buttontext: 'Gestrande Trein',
                        destination: 'ww_gestrande_trein',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Brand',
                        destination: 'ww_brand',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Weersomstandigheden',
                        destination: 'ww_weersomstandigheden',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Ontruimen Post',
                        destination: 'ww_ontruimen_post',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Stroomstoring',
                        destination: 'ww_stroomstoring',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Wissels Vrijmaken',
                        destination: 'ww_wissels_vrijmaken',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'STS Passage',
                        destination: 'ww_sts_passage',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Stilleggen Treindienst',
                        destination: 'ww_stilleggen_treindienst',
                      ),
                      SizedBoxH(),
                      NavButton(
                        buttontext: 'Afhandelen Systeemstoringen',
                        destination: 'ww_afhandelen_systeemstoringen',
                      ),
                    ],
                  ),
                  const SizedBoxH(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WWOverigeIncidentenMainNavigation extends StatelessWidget {
  const WWOverigeIncidentenMainNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(IconUtils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_overige_incidenten) {
          await Navigator.pushNamed(context, 'ai_overige_incidenten');
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
          value: PopupNavigation.ai_overige_incidenten,
          child: MenuItemContent(
            icon: IconUtils.iconAI,
            text: 'AI Overige Incidenten',
          ),
        ),
      ],
    );
  }
}