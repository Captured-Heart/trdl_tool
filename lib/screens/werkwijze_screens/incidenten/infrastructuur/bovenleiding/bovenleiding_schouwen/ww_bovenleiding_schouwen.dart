import '/all_imports.dart';

class WWSchouwenBovenleiding extends StatelessWidget {
  const WWSchouwenBovenleiding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarText(
          title: Utils.appBarTitleWW,
        ),
        actions: const <Widget>[
          WWSchouwenBovenleidingNavigation(),
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
                    title: 'Schouwen bovenleiding',
                  ),
                  SizedBoxH(),
                  SubTitleText(
                    subtitle: Utils.textCardTitleProcedure,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Op advies van het OBI laat je de bovenleiding schouwen, indien mogelijk vanaf het nevenspoor. Schouwen op het betrokken spoor doe je met een trein zonder reizigers. De MCN moet wel aangeven of deze in staat is om te schouwen.',
                  ),
                ],
              ),
              TextCard(
                widgetList: <Widget>[
                  SubTitleText(
                    subtitle: Utils.textCardTitleRisico,
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
                    subtitle: Utils.textCardTitleContext,
                  ),
                  SizedBoxH(),
                  BodyText(
                    indents: 0,
                    text:
                        'Bij een onregelmatigheid aan de bovenleiding kan het gewenst zijn de situatie buiten te laten beoordelen door een MCN. De mogelijkheid bestaat dat de schouwtrein vastloopt op de locatie van de onregelmatigheid, waarbij eventuele reizigers niet meer handelingsvrij zijn.',
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

class WWSchouwenBovenleidingNavigation extends StatelessWidget {
  const WWSchouwenBovenleidingNavigation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PopupNavigation>(
      icon: const Icon(Utils.iconInfo),
      tooltip: 'Meer informatie',
      onSelected: (PopupNavigation result) async {
        if (result == PopupNavigation.home_screen) {
          await Navigator.pushNamed(context, 'home_screen');
        } else if (result == PopupNavigation.ai_bovenleiding_schouwen) {
          await Navigator.pushNamed(context, 'ai_bovenleiding_schouwen');
        } else {
          Navigator.pop(context);
        }
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry<PopupNavigation>>[
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.home_screen,
          child: MenuItemContent(
            icon: Utils.iconHome,
            text: 'Home',
          ),
        ),
        const PopupMenuItem<PopupNavigation>(
          value: PopupNavigation.ai_bovenleiding_schouwen,
          child: MenuItemContent(
            icon: Utils.iconAI,
            text: 'AI Schouwen Bovenleiding',
          ),
        ),
      ],
    );
  }
}